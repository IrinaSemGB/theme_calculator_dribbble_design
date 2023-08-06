import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_themes.dart';

enum CurrentTheme { PinkBlue, Grey, RedBlueGreen }

class ThemeProvider extends ChangeNotifier {

  ThemeData themeData = AppTheme.lightPinkBlueTheme;
  ThemeData darkThemeData = AppTheme.darkPinkBlueTheme;

  void toggleThemeData(CurrentTheme currentTheme) {
    if (currentTheme == CurrentTheme.PinkBlue) {
      themeData = AppTheme.lightPinkBlueTheme;
      darkThemeData = AppTheme.darkPinkBlueTheme;
    } else if (currentTheme == CurrentTheme.Grey) {
      themeData = AppTheme.lightGreyTheme;
      darkThemeData = AppTheme.darkGreyTheme;
    } else if (currentTheme == CurrentTheme.RedBlueGreen) {
      themeData = AppTheme.lightRedBlueGreenTheme;
      darkThemeData = AppTheme.darkRedBlueGreenTheme;
    }
    notifyListeners();
  }
}