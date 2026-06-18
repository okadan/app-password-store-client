import 'package:dart_mappable/dart_mappable.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

part 'models.mapper.dart';

@MappableClass()
sealed class GitCredential with GitCredentialMappable {
  const GitCredential();
}

@MappableClass()
class GitCredentialUserPass extends GitCredential with GitCredentialUserPassMappable {
  const GitCredentialUserPass({
    required this.username,
    required this.password,
  });

  @MappableField(key: 'username')
  final String username;

  @MappableField(key: 'password')
  final String password;
}

@MappableClass()
class GitRepositoryMetadata with GitRepositoryMetadataMappable {
  const GitRepositoryMetadata({
    required this.url,
    required this.branch,
    this.credential,
    required this.lastSync,
    required this.commitHash,
    required this.gpgIds,
    required this.numberOfVaults,
  });

  @MappableField(key: 'url')
  final String url;

  @MappableField(key: 'branch')
  final String branch;

  @MappableField(key: 'credential')
  final GitCredential? credential;

  @MappableField(key: 'lastSync')
  final String lastSync;

  @MappableField(key: 'commitHash')
  final String commitHash;

  @MappableField(key: 'gpgIds')
  final IList<String> gpgIds;

  @MappableField(key: 'numberOfVaults')
  final int numberOfVaults;
}

@MappableClass()
class Vault with VaultMappable {
  const Vault({
    required this.raw,
    required this.vault,
    required this.username,
    required this.websites,
    required this.customFields,
  });

  @MappableField(key: 'raw')
  final String raw;

  @MappableField(key: 'vault')
  final String vault;

  @MappableField(key: 'username')
  final String username;

  @MappableField(key: 'websites')
  final IList<String> websites;

  @MappableField(key: '')
  final IList<MapEntry<String, String>> customFields;
}
