import 'package:app/src/data/models.dart';
import 'package:app/src/data/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        child: StreamBuilder<Vault>(
          stream: Repository.instance.subscribeVaultDetail(widget.path),
          builder: (context, ss) {
            if (ss.hasError) return Center(child: Text('${ss.error}'));
            final vault = ss.data;
            if (vault == null) return SizedBox();
            return SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                spacing: 16,
                children: [
                  _VaultField(label: 'Vault', value: vault.vault),
                  if (vault.username.isNotEmpty)
                    _VaultField(label: 'Username', value: vault.username),
                  ...vault.websites.map((e) =>
                    _VaultField(label: 'Website', value: e)),
                  ...vault.customFields.map((e) =>
                    _VaultField(label: e.key, value: e.value)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

final class _VaultField extends StatefulWidget {
  const _VaultField({required this.label, required this.value});

  final String label;

  final String value;

  @override
  State<StatefulWidget> createState() {
    return _VaultFieldState();
  }
}

final class _VaultFieldState extends State<_VaultField> {
  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        labelText: widget.label,
        suffixIconConstraints: BoxConstraints(),
        suffixIcon: IntrinsicWidth(
          child: Row(
            children: [
              InkWell(
                child: Icon(Icons.copy),
                onTap: () async {
                  await Clipboard.setData(
                    ClipboardData(text: widget.value),
                  );
                  if (!context.mounted) return;
                  ScaffoldMessenger.of(context) .showSnackBar(
                    SnackBar(content: Text('Copied ${widget.label}!')),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      child: Text(widget.value),
    );
  }
}
