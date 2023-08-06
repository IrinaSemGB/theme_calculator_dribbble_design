import 'package:flutter/material.dart';
import 'package:theme_calculator_dribbble_design/theme/app_text_theme.dart';
import '../constants/app_colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightPinkBlueTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.light,
    primaryColor: AppColors.pink,
    primaryColorLight: AppColors.pink,
    primaryColorDark: AppColors.pink,
    secondaryHeaderColor: AppColors.lightBlue,
    focusColor: AppColors.yellow,
    shadowColor: AppColors.dark.withOpacity(0.8),
    textTheme: AppTextTheme.lightPinkBlueTextTheme,
  );

  static final ThemeData darkPinkBlueTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.dark,
    primaryColor: AppColors.pink,
    primaryColorLight: AppColors.pink,
    primaryColorDark: AppColors.pink,
    secondaryHeaderColor: AppColors.lightBlue,
    focusColor: AppColors.yellow,
    shadowColor: AppColors.light.withOpacity(0.6),
    textTheme: AppTextTheme.darkPinkBlueTextTheme,
  );

  static final ThemeData lightGreyTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.light,
    primaryColor: AppColors.blueGrey,
    primaryColorLight: AppColors.blueGrey,
    primaryColorDark: AppColors.blueGrey,
    secondaryHeaderColor: AppColors.lightGrey,
    focusColor: AppColors.orange,
    shadowColor: AppColors.dark.withOpacity(0.8),
    textTheme: AppTextTheme.lightPinkBlueTextTheme,
  );

  static final ThemeData darkGreyTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.dark,
    primaryColor: AppColors.blueGrey,
    primaryColorLight: AppColors.blueGrey,
    primaryColorDark: AppColors.blueGrey,
    secondaryHeaderColor: AppColors.lightGrey,
    focusColor: AppColors.orange,
    shadowColor: AppColors.light.withOpacity(0.6),
    textTheme: AppTextTheme.darkPinkBlueTextTheme,
  );

  static final ThemeData lightRedBlueGreenTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.light,
    primaryColor: AppColors.red,
    primaryColorLight: AppColors.blue,
    primaryColorDark: AppColors.green,
    secondaryHeaderColor: AppColors.light,
    focusColor: AppColors.yellow,
    shadowColor: AppColors.dark.withOpacity(0.8),
    textTheme: AppTextTheme.lightRedBlueGreenTextTheme,
  );

  static final ThemeData darkRedBlueGreenTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.dark,
    primaryColor: AppColors.red,
    primaryColorLight: AppColors.blue,
    primaryColorDark: AppColors.green,
    secondaryHeaderColor: AppColors.light,
    focusColor: AppColors.yellow,
    shadowColor: AppColors.light.withOpacity(0.6),
    textTheme: AppTextTheme.darkRedBlueGreenTextTheme,
  );
}