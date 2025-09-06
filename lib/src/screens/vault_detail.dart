import 'package:app/src/data/repository.dart';
import 'package:flutter/material.dart';

final class VaultDetailScreen extends StatefulWidget {
  const VaultDetailScreen(this.path);

  final String path;

  @override
  State<StatefulWidget> createState() {
    return _VaultDetailScreenState();
  }
}

final class _VaultDetailScreenState extends State<VaultDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.path),
      ),
      body: SafeArea(
        child: StreamBuilder<String>(
          stream: Repository.instance.subscribeVaultDetail(widget.path),
          builder: (context, ss) {
            if (ss.hasError) return Center(child: Text('${ss.error}'));
            final vault = ss.data;
            if (vault == null) return SizedBox();
            return SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: SelectableText(vault),
            );
          },
        ),
      ),
    );
  }
}
