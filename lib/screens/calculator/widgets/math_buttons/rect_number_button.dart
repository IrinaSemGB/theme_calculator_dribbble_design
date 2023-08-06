import 'package:flutter/material.dart';
import 'package:theme_calculator_dribbble_design/screens/calculator/widgets/math_buttons/rect_button_container.dart';

class RectNumberButton extends StatelessWidget {

  final double height;
  final double width;
  final Color color;
  final String title;

  const RectNumberButton({super.key,
    required this.height,
    required this.width,
    required this.color,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return RectButtonContainer(
      height: height,
      width: width,
      color: color,
      child: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontSize: height * 0.55,
          ),
        ),
      ),
    );
  }
}

