// Flutter imports:
import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/init/theme/app_theme_light.dart';

import '../../constants/enums/app_theme_enum.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currnetTheme = AppThemeLight.instance.theme;
  ThemeData get currentTheme => AppThemeLight.instance.theme;

  void changeValue(AppThemes themes) {
    if (themes == AppThemes.LIGHT) {
      _currnetTheme = ThemeData.light();
    } else {
      _currnetTheme = ThemeData.dark();
    }
    notifyListeners();
  }
}
