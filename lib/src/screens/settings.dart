import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher_string.dart';

final class SettingsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SettingsScreenState();
  }
}

final class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: Text('Git Repository'),
              onTap: () => context.go('/settings/git-repository'),
            ),
            ListTile(
              title: Text('GPG Key'),
              onTap: () => context.go('/settings/gpg-key'),
            ),
            ListTile(
              title: Text('Privacy Policy'),
              onTap: () => launchUrlString('https://docs.google.com/document/d/e/2PACX-1vRTCnm5Ry2T1MAh8EK8ge0QH4eByt6MjQzJf6Ixdg9SqTl5cjqpu44Di1cM1-NUtTN7_vSNvJ1KFL8v/pub'),
            ),
          ],
        ),
      ),
    );
  }
}
