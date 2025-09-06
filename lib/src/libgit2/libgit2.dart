import 'dart:ffi';
import 'dart:io';

import 'package:app/src/data/models.dart';
import 'package:app/src/libgit2/libgit2.g.dart';
import 'package:ffi/ffi.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

late final Libgit2 _libgit2;

bool _initialized = false;

void _handle(int result) {
  if (result != 0) {
    final error = _libgit2.git_error_last().ref;
    final code = git_error_code.fromValue(result);
    final category = git_error_t.fromValue(error.klass);
    final message = error.message.cast<Utf8>().toDartString();
    throw 'Libgit2Exception(code=$code, category=$category, message=$message)';
  }
}

void initializeLibgit2() async {
  if (_initialized) {
    print('Warning: Libgit2 already initialized');
    return;
  }

  switch (defaultTargetPlatform) {
    case TargetPlatform.android:
      _libgit2 = Libgit2(DynamicLibrary.open('libgit2.so'));
    case TargetPlatform.iOS:
      _libgit2 = Libgit2(DynamicLibrary.process());
    default:
      throw UnsupportedError('Platform ($defaultTargetPlatform) not supported');
  }

  _libgit2.git_libgit2_init();

  if (defaultTargetPlatform == TargetPlatform.android) {
    // load cacert from assets
    final certData = await rootBundle.load('assets/cacert.pem');
    final certFile = File('${Directory.systemTemp.createTempSync().path}/cacert.pem');
    final certOpt = git_libgit2_opt_t.GIT_OPT_SET_SSL_CERT_LOCATIONS.value;
    certFile.writeAsBytesSync(certData.buffer.asUint8List());
    _handle(_libgit2.git_libgit2_opts(certOpt, certFile.path.toNativeUtf8().cast(), nullptr));
  }

  _initialized = true;
}

final class GitRepository {
  const GitRepository._(this._ptr);

  final Pointer<git_repository> _ptr;

  static final _credentialPayloads = <int, GitCredential?>{};

  static int _credentialsCallback(Pointer<Pointer<git_credential>> out, Pointer<Char> _, Pointer<Char> _, int _, Pointer<Void> payload) {
    final payloadKey = payload.cast<Uint64>().value;
    if (!_credentialPayloads.containsKey(payloadKey)) {
      throw 'GitCredential not found: key=$payloadKey';
    }

    final credential = _credentialPayloads.remove(payloadKey);
    switch (credential) {
      case GitCredentialUserPass():
        final cUsername = credential.username.toNativeUtf8();
        final cPassword = credential.password.toNativeUtf8();
        try {
          return _libgit2.git_cred_userpass_plaintext_new(out, cUsername.cast(), cPassword.cast());
        } finally {
          calloc.free(cUsername);
          calloc.free(cPassword);
        }
      case null:
        return git_error_code.GIT_EUSER.value;
    }
  }

  static GitRepository open({required String path}) {
    final cRepo = calloc<Pointer<git_repository>>();
    final cPath = path.toNativeUtf8();

    try {
      _handle(_libgit2.git_repository_open(cRepo, cPath.cast()));
      return GitRepository._(cRepo.value);
    } finally {
      calloc.free(cRepo);
      calloc.free(cPath);
    }
  }

  static GitRepository clone({required String url, required String localPath, String? checkoutBranch, GitCredential? credential}) {
    // TODO: checkout_branch does not work on libgit2 v1.3.0.
    final cRepo = calloc<Pointer<git_repository>>();
    final cUrl = url.toNativeUtf8();
    final cLocalPath = localPath.toNativeUtf8();
    // final cCheckoutBranch = checkoutBranch?.toNativeUtf8() ?? nullptr;
    final cCredentialPayload = calloc<Uint64>();
    final cCallbacks = calloc<git_remote_callbacks>();
    final cFetchOptions = calloc<git_fetch_options>();
    final cOptions = calloc<git_clone_options>();
    const callbackExceptionalReturn = -30; // GIT_PASSTHROUGH

    try {
      _handle(_libgit2.git_remote_init_callbacks(cCallbacks, 1));
      _handle(_libgit2.git_fetch_init_options(cFetchOptions, 1));
      _handle(_libgit2.git_clone_init_options(cOptions, 1));
      if (credential != null) {
        cCredentialPayload.value = DateTime.now().microsecondsSinceEpoch;
        _credentialPayloads[cCredentialPayload.value] = credential;
        cCallbacks.ref.payload = cCredentialPayload.cast();
        cCallbacks.ref.credentials = Pointer.fromFunction(_credentialsCallback, callbackExceptionalReturn);
        cFetchOptions.ref.callbacks = cCallbacks.ref;
        cOptions.ref.fetch_opts = cFetchOptions.ref;
      }
      // cOptions.ref.checkout_branch = cCheckoutBranch.cast();
      _handle(_libgit2.git_clone(cRepo, cUrl.cast(), cLocalPath.cast(), cOptions));
      return GitRepository._(cRepo.value);
    } finally {
      calloc.free(cRepo);
      calloc.free(cUrl);
      calloc.free(cLocalPath);
      // calloc.free(cCheckoutBranch);
      calloc.free(cCredentialPayload);
      calloc.free(cCallbacks);
      calloc.free(cFetchOptions);
      calloc.free(cOptions);
    }
  }

  String get originUrl {
    final cRemote = calloc<Pointer<git_remote>>();
    final cName = 'origin'.toNativeUtf8();

    try {
      _handle(_libgit2.git_remote_lookup(cRemote, _ptr, cName.cast()));
      return _libgit2.git_remote_url(cRemote.value).cast<Utf8>().toDartString();
    } finally {
      _libgit2.git_remote_free(cRemote.value);
      calloc.free(cRemote);
      calloc.free(cName);
    }
  }

  String get currentBranch {
    final cReference = calloc<Pointer<git_reference>>();

    try {
      _handle(_libgit2.git_repository_head(cReference, _ptr));
      return _libgit2.git_reference_shorthand(cReference.value).cast<Utf8>().toDartString();
    } finally {
      _libgit2.git_reference_free(cReference.value);
      calloc.free(cReference);
    }
  }

  String get commitHash {
    final cReference = calloc<Pointer<git_reference>>();
    final cCommit = calloc<Pointer<git_commit>>();

    try {
      _handle(_libgit2.git_repository_head(cReference, _ptr));
      _handle(_libgit2.git_reference_peel(cCommit.cast(), cReference.value, git_object_t.GIT_OBJECT_COMMIT));
      return _libgit2.git_oid_tostr_s(_libgit2.git_commit_id(cCommit.value)).cast<Utf8>().toDartString();
    } finally {
      _libgit2.git_reference_free(cReference.value);
      _libgit2.git_commit_free(cCommit.value);
      calloc.free(cCommit);
      calloc.free(cReference);
    }
  }
}
