import 'package:flutter/material.dart';
import '../../../../constants/app_colors.dart';

class InnerShadowContainer extends StatelessWidget {
  const InnerShadowContainer({Key? key, required this.height, required this.child, required this.isActiveColor}) : super(key: key);

  final double height;
  final Widget child;
  final bool isActiveColor;

  @override
  Widget build(BuildContext context) {

    var brightness = MediaQuery.of(context).platformBrightness;
    final List<BoxShadow> shadows = brightness == Brightness.light ? buildLightShadows(height, isActiveColor) : buildDarkShadows(height, isActiveColor);

    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(height),
        boxShadow: shadows,
      ),
      child: Container(
        height: height * 0.9,
        width: height * 0.9,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(height * 0.9),
          border: Border.all(
            color: Theme.of(context).scaffoldBackgroundColor,
            width: 0.2,
          ),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }

  static List<BoxShadow> buildLightShadows(double height, bool isActive) {
    return [
      BoxShadow(
        color: isActive ? Colors.grey.withOpacity(0.4) : AppColors.white.withOpacity(0.8),
        offset: Offset(height * 0.05, height * 0.05),
        blurRadius: height * 0.3,
      ),
      BoxShadow(
        color: isActive ? AppColors.white.withOpacity(0.8) : Colors.grey.withOpacity(0.4),
        offset: Offset(-height * 0.05, -height * 0.05),
        blurRadius: height * 0.2,
      ),
    ];
  }

  static List<BoxShadow> buildDarkShadows(double height, bool isActive) {
    return [
      BoxShadow(
        color: isActive ? Colors.black.withOpacity(0.4) : AppColors.white.withOpacity(0.1),
        offset: Offset(height * 0.05, height * 0.05),
        blurRadius: height * 0.3,
      ),
      BoxShadow(
        color: isActive ? AppColors.white.withOpacity(0.1) : Colors.black.withOpacity(0.5),
        offset: Offset(-height * 0.05, -height * 0.05),
        blurRadius: height * 0.2,
      ),
    ];
  }
}
