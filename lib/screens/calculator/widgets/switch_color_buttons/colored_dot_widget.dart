import 'package:flutter/cupertino.dart';

class ColoredDot extends StatelessWidget {

  final double height;
  final Color color;

  ColoredDot({super.key, required this.height, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.2,
      width: height * 0.2,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(height * 0.5),
      ),
    );
  }
}