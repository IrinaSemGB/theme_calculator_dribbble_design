import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_calculator_dribbble_design/screens/calculator/widgets/switch_color_buttons/colored_dot_widget.dart';
import 'package:theme_calculator_dribbble_design/screens/calculator/widgets/switch_color_buttons/inner_shadow_container.dart';
import 'package:theme_calculator_dribbble_design/theme/app_themes.dart';
import '../../../../constants/app_colors.dart';
import '../../../../theme/theme_provider.dart';

class SwitchColorContainer extends StatelessWidget {

  final double height;
  const SwitchColorContainer({super.key, required this.height});

  @override
  Widget build(BuildContext context) {

    final themeProvider = Provider.of<ThemeProvider>(context);

    return Container(
      margin: EdgeInsets.symmetric(vertical: height * 0.25),
      height: height * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  themeProvider.toggleThemeData(CurrentTheme.Grey);
                },
                child: InnerShadowContainer(
                  height: height * 0.5,
                  child: ColoredDot(height: height * 0.45, color: AppColors.blueGrey),
                  isActiveColor: themeProvider.themeData == AppTheme.lightGreyTheme,
                ),
              ),
              SizedBox(width: height * 0.25),
              GestureDetector(
                onTap: () {
                  themeProvider.toggleThemeData(CurrentTheme.PinkBlue);
                },
                child: InnerShadowContainer(
                  height: height * 0.5,
                  child: ColoredDot(height: height * 0.45, color: AppColors.pink.withOpacity(0.7)),
                  isActiveColor: themeProvider.themeData == AppTheme.lightPinkBlueTheme,
                ),
              ),
              SizedBox(width: height * 0.25),
              GestureDetector(
                onTap: () {
                  themeProvider.toggleThemeData(CurrentTheme.RedBlueGreen);
                },
                child: InnerShadowContainer(
                  height: height * 0.5,
                  child: ColoredDot(height: height * 0.45, color: AppColors.green),
                  isActiveColor: themeProvider.themeData == AppTheme.lightRedBlueGreenTheme,
                ),
              ),
            ],
          ),
          InnerShadowContainer(
            height: height * 0.5,
            child: Icon(
              Icons.settings_outlined,
              color: Theme.of(context).shadowColor,
              size: height * 0.234,
            ),
            isActiveColor: false,
          ),
        ],
      ),
    );
  }
}

