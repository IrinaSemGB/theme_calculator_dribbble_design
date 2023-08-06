import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightPinkBlueTextTheme = TextTheme(

    // 14,336
    displayLarge: TextStyle(
      height: 1.0,
      color: AppColors.dark,
      fontFamily: 'Calculator',
    ),

    // 56 * 256
    displaySmall: TextStyle(
      color: AppColors.dark.withOpacity(0.4),
      fontFamily: 'Calculator',
      fontWeight: FontWeight.w600,
    ),

    // c # % ÷ х - + =
    titleLarge: TextStyle(
      fontFamily: 'Calculator',
      color: AppColors.dark,
      fontWeight: FontWeight.w400,
    ),

    // 7 8 9 4 5 6 1 2 3 0 .
    titleMedium: GoogleFonts.quantico(
      color: AppColors.dark,
    ),
  );

  static TextTheme darkPinkBlueTextTheme = TextTheme(

    // 14,336
    displayLarge: TextStyle(
      height: 1.0,
      color: AppColors.light,
      fontFamily: 'Calculator',
    ),

    // 56 * 256
    displaySmall: TextStyle(
      color: AppColors.white.withOpacity(0.3),
      fontFamily: 'Calculator',
      fontWeight: FontWeight.w600,
    ),

    // c # % ÷ х - + =
    titleLarge: TextStyle(
      fontFamily: 'Calculator',
      color: AppColors.white,
      fontWeight: FontWeight.w400,
    ),

    // 7 8 9 4 5 6 1 2 3 0 .
    titleMedium: GoogleFonts.quantico(
      color: AppColors.white,
    ),
  );

  static TextTheme lightRedBlueGreenTextTheme = TextTheme(

    // 14,336
    displayLarge: TextStyle(
      height: 1.0,
      color: AppColors.dark,
      fontFamily: 'Calculator',
    ),

    // 56 * 256
    displaySmall: TextStyle(
      color: AppColors.dark.withOpacity(0.4),
      fontFamily: 'Calculator',
      fontWeight: FontWeight.w600,
    ),

    // c # % ÷ х - + =
    titleLarge: TextStyle(
      fontFamily: 'Calculator',
      color: AppColors.white,
      fontWeight: FontWeight.w400,
    ),

    // 7 8 9 4 5 6 1 2 3 0 .
    titleMedium: GoogleFonts.quantico(
      color: AppColors.blueNumber,
    ),
  );

  static TextTheme darkRedBlueGreenTextTheme = TextTheme(

    // 14,336
    displayLarge: TextStyle(
      height: 1.0,
      color: AppColors.light,
      fontFamily: 'Calculator',
    ),

    // 56 * 256
    displaySmall: TextStyle(
      color: AppColors.white.withOpacity(0.3),
      fontFamily: 'Calculator',
      fontWeight: FontWeight.w600,
    ),

    // c # % ÷ х - + =
    titleLarge: TextStyle(
      fontFamily: 'Calculator',
      color: AppColors.white,
      fontWeight: FontWeight.w400,
    ),

    // 7 8 9 4 5 6 1 2 3 0 .
    titleMedium: GoogleFonts.quantico(
      color: AppColors.blueNumber,
    ),
  );
}