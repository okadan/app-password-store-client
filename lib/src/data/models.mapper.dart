// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'models.dart';

class GitCredentialMapper extends ClassMapperBase<GitCredential> {
  GitCredentialMapper._();

  static GitCredentialMapper? _instance;
  static GitCredentialMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GitCredentialMapper._());
      GitCredentialUserPassMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GitCredential';

  @override
  final MappableFields<GitCredential> fields = const {};

  static GitCredential _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('GitCredential');
  }

  @override
  final Function instantiate = _instantiate;

  static GitCredential fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GitCredential>(map);
  }

  static GitCredential fromJson(String json) {
    return ensureInitialized().decodeJson<GitCredential>(json);
  }
}

mixin GitCredentialMappable {
  String toJson();
  Map<String, dynamic> toMap();
  GitCredentialCopyWith<GitCredential, GitCredential, GitCredential>
  get copyWith;
}

abstract class GitCredentialCopyWith<$R, $In extends GitCredential, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  GitCredentialCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class GitCredentialUserPassMapper
    extends SubClassMapperBase<GitCredentialUserPass> {
  GitCredentialUserPassMapper._();

  static GitCredentialUserPassMapper? _instance;
  static GitCredentialUserPassMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GitCredentialUserPassMapper._());
      GitCredentialMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'GitCredentialUserPass';

  static String _$username(GitCredentialUserPass v) => v.username;
  static const Field<GitCredentialUserPass, String> _f$username = Field(
    'username',
    _$username,
  );
  static String _$password(GitCredentialUserPass v) => v.password;
  static const Field<GitCredentialUserPass, String> _f$password = Field(
    'password',
    _$password,
  );

  @override
  final MappableFields<GitCredentialUserPass> fields = const {
    #username: _f$username,
    #password: _f$password,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'GitCredentialUserPass';
  @override
  late final ClassMapperBase superMapper =
      GitCredentialMapper.ensureInitialized();

  static GitCredentialUserPass _instantiate(DecodingData data) {
    return GitCredentialUserPass(
      username: data.dec(_f$username),
      password: data.dec(_f$password),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static GitCredentialUserPass fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GitCredentialUserPass>(map);
  }

  static GitCredentialUserPass fromJson(String json) {
    return ensureInitialized().decodeJson<GitCredentialUserPass>(json);
  }
}

mixin GitCredentialUserPassMappable {
  String toJson() {
    return GitCredentialUserPassMapper.ensureInitialized()
        .encodeJson<GitCredentialUserPass>(this as GitCredentialUserPass);
  }

  Map<String, dynamic> toMap() {
    return GitCredentialUserPassMapper.ensureInitialized()
        .encodeMap<GitCredentialUserPass>(this as GitCredentialUserPass);
  }

  GitCredentialUserPassCopyWith<
    GitCredentialUserPass,
    GitCredentialUserPass,
    GitCredentialUserPass
  >
  get copyWith =>
      _GitCredentialUserPassCopyWithImpl<
        GitCredentialUserPass,
        GitCredentialUserPass
      >(this as GitCredentialUserPass, $identity, $identity);
  @override
  String toString() {
    return GitCredentialUserPassMapper.ensureInitialized().stringifyValue(
      this as GitCredentialUserPass,
    );
  }

  @override
  bool operator ==(Object other) {
    return GitCredentialUserPassMapper.ensureInitialized().equalsValue(
      this as GitCredentialUserPass,
      other,
    );
  }

  @override
  int get hashCode {
    return GitCredentialUserPassMapper.ensureInitialized().hashValue(
      this as GitCredentialUserPass,
    );
  }
}

extension GitCredentialUserPassValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GitCredentialUserPass, $Out> {
  GitCredentialUserPassCopyWith<$R, GitCredentialUserPass, $Out>
  get $asGitCredentialUserPass => $base.as(
    (v, t, t2) => _GitCredentialUserPassCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class GitCredentialUserPassCopyWith<
  $R,
  $In extends GitCredentialUserPass,
  $Out
>
    implements GitCredentialCopyWith<$R, $In, $Out> {
  @override
  $R call({String? username, String? password});
  GitCredentialUserPassCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _GitCredentialUserPassCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GitCredentialUserPass, $Out>
    implements GitCredentialUserPassCopyWith<$R, GitCredentialUserPass, $Out> {
  _GitCredentialUserPassCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GitCredentialUserPass> $mapper =
      GitCredentialUserPassMapper.ensureInitialized();
  @override
  $R call({String? username, String? password}) => $apply(
    FieldCopyWithData({
      if (username != null) #username: username,
      if (password != null) #password: password,
    }),
  );
  @override
  GitCredentialUserPass $make(CopyWithData data) => GitCredentialUserPass(
    username: data.get(#username, or: $value.username),
    password: data.get(#password, or: $value.password),
  );

  @override
  GitCredentialUserPassCopyWith<$R2, GitCredentialUserPass, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _GitCredentialUserPassCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class GitRepositoryMetadataMapper
    extends ClassMapperBase<GitRepositoryMetadata> {
  GitRepositoryMetadataMapper._();

  static GitRepositoryMetadataMapper? _instance;
  static GitRepositoryMetadataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GitRepositoryMetadataMapper._());
      GitCredentialMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GitRepositoryMetadata';

  static String _$url(GitRepositoryMetadata v) => v.url;
  static const Field<GitRepositoryMetadata, String> _f$url = Field(
    'url',
    _$url,
  );
  static String _$branch(GitRepositoryMetadata v) => v.branch;
  static const Field<GitRepositoryMetadata, String> _f$branch = Field(
    'branch',
    _$branch,
  );
  static GitCredential? _$credential(GitRepositoryMetadata v) => v.credential;
  static const Field<GitRepositoryMetadata, GitCredential> _f$credential =
      Field('credential', _$credential, opt: true);
  static String _$lastSync(GitRepositoryMetadata v) => v.lastSync;
  static const Field<GitRepositoryMetadata, String> _f$lastSync = Field(
    'lastSync',
    _$lastSync,
  );
  static String _$commitHash(GitRepositoryMetadata v) => v.commitHash;
  static const Field<GitRepositoryMetadata, String> _f$commitHash = Field(
    'commitHash',
    _$commitHash,
  );
  static IList<String> _$gpgIds(GitRepositoryMetadata v) => v.gpgIds;
  static const Field<GitRepositoryMetadata, IList<String>> _f$gpgIds = Field(
    'gpgIds',
    _$gpgIds,
  );
  static int _$numberOfVaults(GitRepositoryMetadata v) => v.numberOfVaults;
  static const Field<GitRepositoryMetadata, int> _f$numberOfVaults = Field(
    'numberOfVaults',
    _$numberOfVaults,
  );

  @override
  final MappableFields<GitRepositoryMetadata> fields = const {
    #url: _f$url,
    #branch: _f$branch,
    #credential: _f$credential,
    #lastSync: _f$lastSync,
    #commitHash: _f$commitHash,
    #gpgIds: _f$gpgIds,
    #numberOfVaults: _f$numberOfVaults,
  };

  static GitRepositoryMetadata _instantiate(DecodingData data) {
    return GitRepositoryMetadata(
      url: data.dec(_f$url),
      branch: data.dec(_f$branch),
      credential: data.dec(_f$credential),
      lastSync: data.dec(_f$lastSync),
      commitHash: data.dec(_f$commitHash),
      gpgIds: data.dec(_f$gpgIds),
      numberOfVaults: data.dec(_f$numberOfVaults),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static GitRepositoryMetadata fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GitRepositoryMetadata>(map);
  }

  static GitRepositoryMetadata fromJson(String json) {
    return ensureInitialized().decodeJson<GitRepositoryMetadata>(json);
  }
}

mixin GitRepositoryMetadataMappable {
  String toJson() {
    return GitRepositoryMetadataMapper.ensureInitialized()
        .encodeJson<GitRepositoryMetadata>(this as GitRepositoryMetadata);
  }

  Map<String, dynamic> toMap() {
    return GitRepositoryMetadataMapper.ensureInitialized()
        .encodeMap<GitRepositoryMetadata>(this as GitRepositoryMetadata);
  }

  GitRepositoryMetadataCopyWith<
    GitRepositoryMetadata,
    GitRepositoryMetadata,
    GitRepositoryMetadata
  >
  get copyWith =>
      _GitRepositoryMetadataCopyWithImpl<
        GitRepositoryMetadata,
        GitRepositoryMetadata
      >(this as GitRepositoryMetadata, $identity, $identity);
  @override
  String toString() {
    return GitRepositoryMetadataMapper.ensureInitialized().stringifyValue(
      this as GitRepositoryMetadata,
    );
  }

  @override
  bool operator ==(Object other) {
    return GitRepositoryMetadataMapper.ensureInitialized().equalsValue(
      this as GitRepositoryMetadata,
      other,
    );
  }

  @override
  int get hashCode {
    return GitRepositoryMetadataMapper.ensureInitialized().hashValue(
      this as GitRepositoryMetadata,
    );
  }
}

extension GitRepositoryMetadataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GitRepositoryMetadata, $Out> {
  GitRepositoryMetadataCopyWith<$R, GitRepositoryMetadata, $Out>
  get $asGitRepositoryMetadata => $base.as(
    (v, t, t2) => _GitRepositoryMetadataCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class GitRepositoryMetadataCopyWith<
  $R,
  $In extends GitRepositoryMetadata,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  GitCredentialCopyWith<$R, GitCredential, GitCredential>? get credential;
  $R call({
    String? url,
    String? branch,
    GitCredential? credential,
    String? lastSync,
    String? commitHash,
    IList<String>? gpgIds,
    int? numberOfVaults,
  });
  GitRepositoryMetadataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _GitRepositoryMetadataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GitRepositoryMetadata, $Out>
    implements GitRepositoryMetadataCopyWith<$R, GitRepositoryMetadata, $Out> {
  _GitRepositoryMetadataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GitRepositoryMetadata> $mapper =
      GitRepositoryMetadataMapper.ensureInitialized();
  @override
  GitCredentialCopyWith<$R, GitCredential, GitCredential>? get credential =>
      $value.credential?.copyWith.$chain((v) => call(credential: v));
  @override
  $R call({
    String? url,
    String? branch,
    Object? credential = $none,
    String? lastSync,
    String? commitHash,
    IList<String>? gpgIds,
    int? numberOfVaults,
  }) => $apply(
    FieldCopyWithData({
      if (url != null) #url: url,
      if (branch != null) #branch: branch,
      if (credential != $none) #credential: credential,
      if (lastSync != null) #lastSync: lastSync,
      if (commitHash != null) #commitHash: commitHash,
      if (gpgIds != null) #gpgIds: gpgIds,
      if (numberOfVaults != null) #numberOfVaults: numberOfVaults,
    }),
  );
  @override
  GitRepositoryMetadata $make(CopyWithData data) => GitRepositoryMetadata(
    url: data.get(#url, or: $value.url),
    branch: data.get(#branch, or: $value.branch),
    credential: data.get(#credential, or: $value.credential),
    lastSync: data.get(#lastSync, or: $value.lastSync),
    commitHash: data.get(#commitHash, or: $value.commitHash),
    gpgIds: data.get(#gpgIds, or: $value.gpgIds),
    numberOfVaults: data.get(#numberOfVaults, or: $value.numberOfVaults),
  );

  @override
  GitRepositoryMetadataCopyWith<$R2, GitRepositoryMetadata, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _GitRepositoryMetadataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class VaultMapper extends ClassMapperBase<Vault> {
  VaultMapper._();

  static VaultMapper? _instance;
  static VaultMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VaultMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Vault';

  static String _$raw(Vault v) => v.raw;
  static const Field<Vault, String> _f$raw = Field('raw', _$raw);
  static String _$vault(Vault v) => v.vault;
  static const Field<Vault, String> _f$vault = Field('vault', _$vault);
  static String _$username(Vault v) => v.username;
  static const Field<Vault, String> _f$username = Field('username', _$username);
  static IList<String> _$websites(Vault v) => v.websites;
  static const Field<Vault, IList<String>> _f$websites = Field(
    'websites',
    _$websites,
  );
  static IList<MapEntry<String, String>> _$customFields(Vault v) =>
      v.customFields;
  static const Field<Vault, IList<MapEntry<String, String>>> _f$customFields =
      Field('customFields', _$customFields, key: r'');

  @override
  final MappableFields<Vault> fields = const {
    #raw: _f$raw,
    #vault: _f$vault,
    #username: _f$username,
    #websites: _f$websites,
    #customFields: _f$customFields,
  };

  static Vault _instantiate(DecodingData data) {
    return Vault(
      raw: data.dec(_f$raw),
      vault: data.dec(_f$vault),
      username: data.dec(_f$username),
      websites: data.dec(_f$websites),
      customFields: data.dec(_f$customFields),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Vault fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Vault>(map);
  }

  static Vault fromJson(String json) {
    return ensureInitialized().decodeJson<Vault>(json);
  }
}

mixin VaultMappable {
  String toJson() {
    return VaultMapper.ensureInitialized().encodeJson<Vault>(this as Vault);
  }

  Map<String, dynamic> toMap() {
    return VaultMapper.ensureInitialized().encodeMap<Vault>(this as Vault);
  }

  VaultCopyWith<Vault, Vault, Vault> get copyWith =>
      _VaultCopyWithImpl<Vault, Vault>(this as Vault, $identity, $identity);
  @override
  String toString() {
    return VaultMapper.ensureInitialized().stringifyValue(this as Vault);
  }

  @override
  bool operator ==(Object other) {
    return VaultMapper.ensureInitialized().equalsValue(this as Vault, other);
  }

  @override
  int get hashCode {
    return VaultMapper.ensureInitialized().hashValue(this as Vault);
  }
}

extension VaultValueCopy<$R, $Out> on ObjectCopyWith<$R, Vault, $Out> {
  VaultCopyWith<$R, Vault, $Out> get $asVault =>
      $base.as((v, t, t2) => _VaultCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class VaultCopyWith<$R, $In extends Vault, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? raw,
    String? vault,
    String? username,
    IList<String>? websites,
    IList<MapEntry<String, String>>? customFields,
  });
  VaultCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VaultCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Vault, $Out>
    implements VaultCopyWith<$R, Vault, $Out> {
  _VaultCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Vault> $mapper = VaultMapper.ensureInitialized();
  @override
  $R call({
    String? raw,
    String? vault,
    String? username,
    IList<String>? websites,
    IList<MapEntry<String, String>>? customFields,
  }) => $apply(
    FieldCopyWithData({
      if (raw != null) #raw: raw,
      if (vault != null) #vault: vault,
      if (username != null) #username: username,
      if (websites != null) #websites: websites,
      if (customFields != null) #customFields: customFields,
    }),
  );
  @override
  Vault $make(CopyWithData data) => Vault(
    raw: data.get(#raw, or: $value.raw),
    vault: data.get(#vault, or: $value.vault),
    username: data.get(#username, or: $value.username),
    websites: data.get(#websites, or: $value.websites),
    customFields: data.get(#customFields, or: $value.customFields),
  );

  @override
  VaultCopyWith<$R2, Vault, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _VaultCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

