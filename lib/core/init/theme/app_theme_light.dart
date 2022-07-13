// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:fluttermvvmtemplate/core/init/theme/app_theme.dart';

class AppThemeLight extends AppTheme {
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    _instance ??= AppThemeLight._init();
    return _instance!;
  }

  AppThemeLight._init();

  ThemeData get theme => ThemeData.light();
}
