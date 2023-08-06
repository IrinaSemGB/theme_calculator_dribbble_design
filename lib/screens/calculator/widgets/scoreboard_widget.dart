import 'package:flutter/material.dart';
import 'package:theme_calculator_dribbble_design/constants/app_titles.dart';
import '../../../constants/app_colors.dart';


class Scoreboard extends StatelessWidget {
  const Scoreboard({super.key, required this.height, required this.width});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    final List<BoxShadow> shadows = brightness == Brightness.light ? buildLightShadows(width) : buildDarkShadows(width);

    return Container(
      padding: EdgeInsets.all(height * 0.1),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: shadows,
        borderRadius: BorderRadius.circular(width * 0.025),
        border: Border.all(
          color: Theme.of(context).scaffoldBackgroundColor,
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            AppTitles.example,
            textAlign: TextAlign.end,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: width * 0.051),
          ),
          Text(
            AppTitles.displayNumber,
            textAlign: TextAlign.end,
            style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: width * 0.15),
          ),
        ],
      ),
    );
  }

  static List<BoxShadow> buildLightShadows(double width) {
    return [
      BoxShadow(
        color: Colors.grey.withOpacity(0.26),
        offset: Offset(width * 0.02, width * 0.02),
        blurRadius: 18.0,
      ),
      BoxShadow(
        color: AppColors.white.withOpacity(0.8),
        offset: Offset(-width * 0.02, -width * 0.02),
        blurRadius: 24.0,
      ),
    ];
  }

  static List<BoxShadow> buildDarkShadows(double width) {
    return [
      BoxShadow(
        color: AppColors.black.withOpacity(0.16),
        offset: Offset(width * 0.02, width * 0.02),
        blurRadius: width * 0.03,
      ),
      BoxShadow(
        color: AppColors.white.withOpacity(0.04),
        offset: Offset(-width * 0.03, -width * 0.03),
        blurRadius: width * 0.03,
      ),
    ];
  }
}