import 'package:flutter/material.dart';
import 'package:theme_calculator_dribbble_design/screens/calculator/widgets/math_buttons/math_buttons_container_widget.dart';
import 'package:theme_calculator_dribbble_design/screens/calculator/widgets/scoreboard_widget.dart';
import 'package:theme_calculator_dribbble_design/screens/calculator/widgets/switch_color_buttons/switch_color_container_widget.dart';


class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;
    final double height = screenSize.height;
    final double width = screenSize.width;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(
          top: height * 0.07,
          bottom: height * 0.09,
          right: width * 0.05,
          left: width * 0.05,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Scoreboard(height: height * 0.15, width: width * 0.9),
            SwitchColorContainer(height: height * 0.1),
            MathButtonsContainer(height: height * 0.59, width: width  * 0.9), // height * 0.59
          ],
        ),
      ),
    );
  }
}










