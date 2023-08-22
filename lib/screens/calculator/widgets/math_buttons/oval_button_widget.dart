import 'package:flutter/material.dart';
import '../../../../constants/app_colors.dart';

class OvalButton extends StatelessWidget {

  final double width;
  final double height;
  final Color color;
  final String title;
  final double textHeight;

  const OvalButton({
    super.key,
    required this.width,
    required this.height,
    required this.title,
    required this.color,
    this.textHeight = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(width * 0.45),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
        ),
        child: Center(
          child: Container(
            width: width * 0.75,
            height: height * 0.75,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(width * 0.45),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.09),
                  offset: Offset(width * 0.13, height * 0.13),
                  blurRadius: width * 0.13,
                ),
                BoxShadow(
                  color: AppColors.white.withOpacity(0.2),
                  offset: Offset(-width * 0.13, -height * 0.13),
                  blurRadius: width * 0.1,
                ),
              ],
              border: Border.all(
                color: AppColors.white,
                width: 0.1,
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: width * 0.56,
                  height: textHeight,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}