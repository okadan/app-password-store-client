import 'package:app/src/app/app.dart';
import 'package:app/src/data/git2.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeLibgit2();
  runApp(App());
}
