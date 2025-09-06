import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get theme => _base(ThemeData.light());

  static ThemeData get darkTheme => _base(ThemeData.dark());

  static ThemeData _base(ThemeData base) => base.copyWith();
}
