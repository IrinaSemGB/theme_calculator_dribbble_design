import 'package:flutter/cupertino.dart';
import '../../../../constants/app_colors.dart';

class RectButtonContainer extends StatelessWidget {
  const RectButtonContainer({Key? key, required this.height, required this.width, required this.color, required this.child}) : super(key: key);

  final double height;
  final double width;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(height * 0.15),
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
              borderRadius: BorderRadius.circular(width * 0.08),
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
            child: child,
          ),
        ),
      ),
    );
  }
}
