import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'models.g.dart';

sealed class GitCredential {
  static GitCredential fromJson(Map<String, dynamic> json) => serializers.deserialize(
    json,
    specifiedType: const FullType(GitCredential),
  ) as GitCredential;
  static Map<String, dynamic> toJson(GitCredential instance) => serializers.serialize(
    instance,
    specifiedType: const FullType(GitCredential),
  ) as Map<String, dynamic>;
}

@BuiltValue(wireName: 'GitCredentialUserPass')
abstract class GitCredentialUserPass implements Built<GitCredentialUserPass, GitCredentialUserPassBuilder>, GitCredential {
  GitCredentialUserPass._();
  static Serializer<GitCredentialUserPass> get serializer => _$gitCredentialUserPassSerializer;
  factory GitCredentialUserPass([void Function(GitCredentialUserPassBuilder) updates]) = _$GitCredentialUserPass;
  factory GitCredentialUserPass.fromJson(Map<String, dynamic> json) => serializers.deserializeWith(serializer, json)!;
  Map<String, dynamic> toJson() => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  @BuiltValueField(wireName: 'username')
  String get username;

  @BuiltValueField(wireName: 'password')
  String get password;
}

@BuiltValue(wireName: 'GitRepositoryMetadata')
abstract class GitRepositoryMetadata implements Built<GitRepositoryMetadata, GitRepositoryMetadataBuilder> {
  GitRepositoryMetadata._();
  static Serializer<GitRepositoryMetadata> get serializer => _$gitRepositoryMetadataSerializer;
  factory GitRepositoryMetadata([void Function(GitRepositoryMetadataBuilder) updates]) = _$GitRepositoryMetadata;
  factory GitRepositoryMetadata.fromJson(Map<String, dynamic> json) => serializers.deserializeWith(serializer, json)!;
  Map<String, dynamic> toJson() => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  @BuiltValueField(wireName: 'url')
  String get url;

  @BuiltValueField(wireName: 'branch')
  String get branch;

  @BuiltValueField(wireName: 'credential')
  GitCredential? get credential;

  @BuiltValueField(wireName: 'lastSync')
  String get lastSync;

  @BuiltValueField(wireName: 'commitHash')
  String get commitHash;

  @BuiltValueField(wireName: 'gpgIds')
  BuiltList<String> get gpgIds;

  @BuiltValueField(wireName: 'numberOfVaults')
  int get numberOfVaults;
}

@SerializersFor([
  GitCredential,
  GitCredentialUserPass,
  GitRepositoryMetadata,
])
final Serializers serializers = (_$serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin())
).build();
