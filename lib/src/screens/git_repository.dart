import 'package:app/src/data/models.dart';
import 'package:app/src/data/repository.dart';
import 'package:app/src/utils/show_error_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final class GitRepositoryScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GitRepositoryScreenState();
  }
}

final class _GitRepositoryScreenState extends State<GitRepositoryScreen> {
  Future<void> _handleSync() async {
    try {
      await Repository.instance.syncCurrentGitRepository();
    } catch (e) {
      showErrorDialog(context, '$e');
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Git repository synced successfully')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Git Repository'),
        actions: [
          PopupMenuButton<String>(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'edit',
                child: Text('Edit config'),
              ),
              PopupMenuItem(
                value: 'sync',
                child: Text('Sync'),
              ),
            ],
            onSelected: (value) {
              switch (value) {
                case 'edit':
                  context.go('/settings/git-repository/edit');
                case 'sync':
                  _handleSync();
                default:
                  throw 'Unknown value: $value';
              }
            },
          ),
        ],
      ),
      body: SafeArea(
        child: StreamBuilder<GitRepositoryMetadata>(
          stream: Repository.instance.subscribeGitRepositoryMetadata(),
          builder: (context, ss) {
            if (ss.hasError) return Center(child: Text('${ss.error}'));
            final metadata = ss.data;
            if (metadata == null) return SizedBox();
            final credential = metadata.credential;
            return ListView(
              children: [
                ListTile(
                  title: Text('URL'),
                  subtitle: Text(metadata.url),
                ),
                ListTile(
                  title: Text('Branch'),
                  subtitle: Text(metadata.branch),
                ),
                ListTile(
                  title: Text('Credential Type'),
                  subtitle: Text(switch (credential) {
                    GitCredentialUserPass() => "Password (Username=${credential.username})",
                    null => "None",
                  }),
                ),
                Divider(),
                ListTile(
                  title: Text('Last Sync'),
                  subtitle: Text(metadata.lastSync.split('.').first.replaceFirst('T', ' ')),
                ),
                ListTile(
                  title: Text('Commit Hash'),
                  subtitle: Text(metadata.commitHash.substring(0, 20)),
                ),
                ListTile(
                  title: Text('.gpg-id'),
                  subtitle: Text(metadata.gpgIds.join(' / ')),
                ),
                ListTile(
                  title: Text('Number of Vaults'),
                  subtitle: Text('${metadata.numberOfVaults}'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
