import 'package:app/src/app/app.dart';
import 'package:app/src/libgit2/libgit2.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeLibgit2();
  runApp(App());
}
