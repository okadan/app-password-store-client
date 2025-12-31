// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers =
    (Serializers().toBuilder()
          ..add(GitCredentialUserPass.serializer)
          ..add(GitRepositoryMetadata.serializer)
          ..add(Vault.serializer)
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [
              const FullType(MapEntry, const [
                const FullType(String),
                const FullType(String),
              ]),
            ]),
            () => ListBuilder<MapEntry<String, String>>(),
          ))
        .build();
Serializer<GitCredentialUserPass> _$gitCredentialUserPassSerializer =
    _$GitCredentialUserPassSerializer();
Serializer<GitRepositoryMetadata> _$gitRepositoryMetadataSerializer =
    _$GitRepositoryMetadataSerializer();
Serializer<Vault> _$vaultSerializer = _$VaultSerializer();

class _$GitCredentialUserPassSerializer
    implements StructuredSerializer<GitCredentialUserPass> {
  @override
  final Iterable<Type> types = const [
    GitCredentialUserPass,
    _$GitCredentialUserPass,
  ];
  @override
  final String wireName = 'GitCredentialUserPass';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GitCredentialUserPass object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'username',
      serializers.serialize(
        object.username,
        specifiedType: const FullType(String),
      ),
      'password',
      serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      ),
    ];

    return result;
  }

  @override
  GitCredentialUserPass deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GitCredentialUserPassBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'password':
          result.password =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GitRepositoryMetadataSerializer
    implements StructuredSerializer<GitRepositoryMetadata> {
  @override
  final Iterable<Type> types = const [
    GitRepositoryMetadata,
    _$GitRepositoryMetadata,
  ];
  @override
  final String wireName = 'GitRepositoryMetadata';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GitRepositoryMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'branch',
      serializers.serialize(
        object.branch,
        specifiedType: const FullType(String),
      ),
      'lastSync',
      serializers.serialize(
        object.lastSync,
        specifiedType: const FullType(String),
      ),
      'commitHash',
      serializers.serialize(
        object.commitHash,
        specifiedType: const FullType(String),
      ),
      'gpgIds',
      serializers.serialize(
        object.gpgIds,
        specifiedType: const FullType(BuiltList, const [
          const FullType(String),
        ]),
      ),
      'numberOfVaults',
      serializers.serialize(
        object.numberOfVaults,
        specifiedType: const FullType(int),
      ),
    ];
    Object? value;
    value = object.credential;
    if (value != null) {
      result
        ..add('credential')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(GitCredential),
          ),
        );
    }
    return result;
  }

  @override
  GitRepositoryMetadata deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GitRepositoryMetadataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'url':
          result.url =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'branch':
          result.branch =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'credential':
          result.credential =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(GitCredential),
                  )
                  as GitCredential?;
          break;
        case 'lastSync':
          result.lastSync =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'commitHash':
          result.commitHash =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'gpgIds':
          result.gpgIds.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(String),
                  ]),
                )!
                as BuiltList<Object?>,
          );
          break;
        case 'numberOfVaults':
          result.numberOfVaults =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )!
                  as int;
          break;
      }
    }

    return result.build();
  }
}

class _$VaultSerializer implements StructuredSerializer<Vault> {
  @override
  final Iterable<Type> types = const [Vault, _$Vault];
  @override
  final String wireName = 'Vault';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Vault object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'raw',
      serializers.serialize(object.raw, specifiedType: const FullType(String)),
      'vault',
      serializers.serialize(
        object.vault,
        specifiedType: const FullType(String),
      ),
      'username',
      serializers.serialize(
        object.username,
        specifiedType: const FullType(String),
      ),
      'websites',
      serializers.serialize(
        object.websites,
        specifiedType: const FullType(BuiltList, const [
          const FullType(String),
        ]),
      ),
      '',
      serializers.serialize(
        object.customFields,
        specifiedType: const FullType(BuiltList, const [
          const FullType(MapEntry, const [
            const FullType(String),
            const FullType(String),
          ]),
        ]),
      ),
    ];

    return result;
  }

  @override
  Vault deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VaultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'raw':
          result.raw =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'vault':
          result.vault =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'username':
          result.username =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'websites':
          result.websites.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(String),
                  ]),
                )!
                as BuiltList<Object?>,
          );
          break;
        case '':
          result.customFields.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(MapEntry, const [
                      const FullType(String),
                      const FullType(String),
                    ]),
                  ]),
                )!
                as BuiltList<Object?>,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GitCredentialUserPass extends GitCredentialUserPass {
  @override
  final String username;
  @override
  final String password;

  factory _$GitCredentialUserPass([
    void Function(GitCredentialUserPassBuilder)? updates,
  ]) => (GitCredentialUserPassBuilder()..update(updates))._build();

  _$GitCredentialUserPass._({required this.username, required this.password})
    : super._();
  @override
  GitCredentialUserPass rebuild(
    void Function(GitCredentialUserPassBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GitCredentialUserPassBuilder toBuilder() =>
      GitCredentialUserPassBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GitCredentialUserPass &&
        username == other.username &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GitCredentialUserPass')
          ..add('username', username)
          ..add('password', password))
        .toString();
  }
}

class GitCredentialUserPassBuilder
    implements Builder<GitCredentialUserPass, GitCredentialUserPassBuilder> {
  _$GitCredentialUserPass? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GitCredentialUserPassBuilder();

  GitCredentialUserPassBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GitCredentialUserPass other) {
    _$v = other as _$GitCredentialUserPass;
  }

  @override
  void update(void Function(GitCredentialUserPassBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GitCredentialUserPass build() => _build();

  _$GitCredentialUserPass _build() {
    final _$result =
        _$v ??
        _$GitCredentialUserPass._(
          username: BuiltValueNullFieldError.checkNotNull(
            username,
            r'GitCredentialUserPass',
            'username',
          ),
          password: BuiltValueNullFieldError.checkNotNull(
            password,
            r'GitCredentialUserPass',
            'password',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GitRepositoryMetadata extends GitRepositoryMetadata {
  @override
  final String url;
  @override
  final String branch;
  @override
  final GitCredential? credential;
  @override
  final String lastSync;
  @override
  final String commitHash;
  @override
  final BuiltList<String> gpgIds;
  @override
  final int numberOfVaults;

  factory _$GitRepositoryMetadata([
    void Function(GitRepositoryMetadataBuilder)? updates,
  ]) => (GitRepositoryMetadataBuilder()..update(updates))._build();

  _$GitRepositoryMetadata._({
    required this.url,
    required this.branch,
    this.credential,
    required this.lastSync,
    required this.commitHash,
    required this.gpgIds,
    required this.numberOfVaults,
  }) : super._();
  @override
  GitRepositoryMetadata rebuild(
    void Function(GitRepositoryMetadataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GitRepositoryMetadataBuilder toBuilder() =>
      GitRepositoryMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GitRepositoryMetadata &&
        url == other.url &&
        branch == other.branch &&
        credential == other.credential &&
        lastSync == other.lastSync &&
        commitHash == other.commitHash &&
        gpgIds == other.gpgIds &&
        numberOfVaults == other.numberOfVaults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, branch.hashCode);
    _$hash = $jc(_$hash, credential.hashCode);
    _$hash = $jc(_$hash, lastSync.hashCode);
    _$hash = $jc(_$hash, commitHash.hashCode);
    _$hash = $jc(_$hash, gpgIds.hashCode);
    _$hash = $jc(_$hash, numberOfVaults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GitRepositoryMetadata')
          ..add('url', url)
          ..add('branch', branch)
          ..add('credential', credential)
          ..add('lastSync', lastSync)
          ..add('commitHash', commitHash)
          ..add('gpgIds', gpgIds)
          ..add('numberOfVaults', numberOfVaults))
        .toString();
  }
}

class GitRepositoryMetadataBuilder
    implements Builder<GitRepositoryMetadata, GitRepositoryMetadataBuilder> {
  _$GitRepositoryMetadata? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _branch;
  String? get branch => _$this._branch;
  set branch(String? branch) => _$this._branch = branch;

  GitCredential? _credential;
  GitCredential? get credential => _$this._credential;
  set credential(GitCredential? credential) => _$this._credential = credential;

  String? _lastSync;
  String? get lastSync => _$this._lastSync;
  set lastSync(String? lastSync) => _$this._lastSync = lastSync;

  String? _commitHash;
  String? get commitHash => _$this._commitHash;
  set commitHash(String? commitHash) => _$this._commitHash = commitHash;

  ListBuilder<String>? _gpgIds;
  ListBuilder<String> get gpgIds => _$this._gpgIds ??= ListBuilder<String>();
  set gpgIds(ListBuilder<String>? gpgIds) => _$this._gpgIds = gpgIds;

  int? _numberOfVaults;
  int? get numberOfVaults => _$this._numberOfVaults;
  set numberOfVaults(int? numberOfVaults) =>
      _$this._numberOfVaults = numberOfVaults;

  GitRepositoryMetadataBuilder();

  GitRepositoryMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _branch = $v.branch;
      _credential = $v.credential;
      _lastSync = $v.lastSync;
      _commitHash = $v.commitHash;
      _gpgIds = $v.gpgIds.toBuilder();
      _numberOfVaults = $v.numberOfVaults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GitRepositoryMetadata other) {
    _$v = other as _$GitRepositoryMetadata;
  }

  @override
  void update(void Function(GitRepositoryMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GitRepositoryMetadata build() => _build();

  _$GitRepositoryMetadata _build() {
    _$GitRepositoryMetadata _$result;
    try {
      _$result =
          _$v ??
          _$GitRepositoryMetadata._(
            url: BuiltValueNullFieldError.checkNotNull(
              url,
              r'GitRepositoryMetadata',
              'url',
            ),
            branch: BuiltValueNullFieldError.checkNotNull(
              branch,
              r'GitRepositoryMetadata',
              'branch',
            ),
            credential: credential,
            lastSync: BuiltValueNullFieldError.checkNotNull(
              lastSync,
              r'GitRepositoryMetadata',
              'lastSync',
            ),
            commitHash: BuiltValueNullFieldError.checkNotNull(
              commitHash,
              r'GitRepositoryMetadata',
              'commitHash',
            ),
            gpgIds: gpgIds.build(),
            numberOfVaults: BuiltValueNullFieldError.checkNotNull(
              numberOfVaults,
              r'GitRepositoryMetadata',
              'numberOfVaults',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'gpgIds';
        gpgIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GitRepositoryMetadata',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Vault extends Vault {
  @override
  final String raw;
  @override
  final String vault;
  @override
  final String username;
  @override
  final BuiltList<String> websites;
  @override
  final BuiltList<MapEntry<String, String>> customFields;

  factory _$Vault([void Function(VaultBuilder)? updates]) =>
      (VaultBuilder()..update(updates))._build();

  _$Vault._({
    required this.raw,
    required this.vault,
    required this.username,
    required this.websites,
    required this.customFields,
  }) : super._();
  @override
  Vault rebuild(void Function(VaultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VaultBuilder toBuilder() => VaultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Vault &&
        raw == other.raw &&
        vault == other.vault &&
        username == other.username &&
        websites == other.websites &&
        customFields == other.customFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, raw.hashCode);
    _$hash = $jc(_$hash, vault.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, websites.hashCode);
    _$hash = $jc(_$hash, customFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Vault')
          ..add('raw', raw)
          ..add('vault', vault)
          ..add('username', username)
          ..add('websites', websites)
          ..add('customFields', customFields))
        .toString();
  }
}

class VaultBuilder implements Builder<Vault, VaultBuilder> {
  _$Vault? _$v;

  String? _raw;
  String? get raw => _$this._raw;
  set raw(String? raw) => _$this._raw = raw;

  String? _vault;
  String? get vault => _$this._vault;
  set vault(String? vault) => _$this._vault = vault;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  ListBuilder<String>? _websites;
  ListBuilder<String> get websites =>
      _$this._websites ??= ListBuilder<String>();
  set websites(ListBuilder<String>? websites) => _$this._websites = websites;

  ListBuilder<MapEntry<String, String>>? _customFields;
  ListBuilder<MapEntry<String, String>> get customFields =>
      _$this._customFields ??= ListBuilder<MapEntry<String, String>>();
  set customFields(ListBuilder<MapEntry<String, String>>? customFields) =>
      _$this._customFields = customFields;

  VaultBuilder();

  VaultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _raw = $v.raw;
      _vault = $v.vault;
      _username = $v.username;
      _websites = $v.websites.toBuilder();
      _customFields = $v.customFields.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Vault other) {
    _$v = other as _$Vault;
  }

  @override
  void update(void Function(VaultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Vault build() => _build();

  _$Vault _build() {
    _$Vault _$result;
    try {
      _$result =
          _$v ??
          _$Vault._(
            raw: BuiltValueNullFieldError.checkNotNull(raw, r'Vault', 'raw'),
            vault: BuiltValueNullFieldError.checkNotNull(
              vault,
              r'Vault',
              'vault',
            ),
            username: BuiltValueNullFieldError.checkNotNull(
              username,
              r'Vault',
              'username',
            ),
            websites: websites.build(),
            customFields: customFields.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'websites';
        websites.build();
        _$failedField = 'customFields';
        customFields.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Vault', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
