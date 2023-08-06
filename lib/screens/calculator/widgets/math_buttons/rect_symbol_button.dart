import 'package:flutter/material.dart';
import 'package:theme_calculator_dribbble_design/screens/calculator/widgets/math_buttons/rect_button_container.dart';

class RectSymbolButton extends StatelessWidget {

  final double height;
  final double width;
  final Color color;
  final String title;
  final double textHeight;

  const RectSymbolButton({super.key,
    required this.height,
    required this.width,
    required this.color,
    required this.title,
    this.textHeight = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return RectButtonContainer(
      height: height,
      width: width,
      color: color,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
          height: textHeight,
          fontSize: width * 0.75,
        ),
      ),
    );
  }
}
