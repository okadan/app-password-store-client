import 'package:app/src/app/app_router.dart';
import 'package:app/src/app/app_theme.dart';
import 'package:flutter/material.dart';

final class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.routerConfig,
      theme: AppTheme.theme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
