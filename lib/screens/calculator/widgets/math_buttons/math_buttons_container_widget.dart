import 'package:flutter/material.dart';
import '../../../../constants/app_titles.dart';
import 'oval_button_widget.dart';
import 'rect_number_button.dart';
import 'rect_symbol_button.dart';

class MathButtonsContainer extends StatelessWidget {
  const MathButtonsContainer({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // c
              RectSymbolButton(height: width * 0.21, width: width * 0.2,
                color: Theme.of(context).primaryColor, title: AppTitles.cancel, textHeight: 0.85,
              ),
              // 1/2
              RectSymbolButton(height: width * 0.21, width: width * 0.2,
                color: Theme.of(context).primaryColorLight, title: AppTitles.half,
              ),
              // %
              RectSymbolButton(height: width * 0.21, width: width * 0.2,
                color: Theme.of(context).primaryColorLight, title: AppTitles.percent, textHeight: 1.1,
              ),
              // ÷
              OvalButton(height: width * 0.21, width: width * 0.2,
                color: Theme.of(context).primaryColorDark, title: AppTitles.divider,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 7
              RectNumberButton(height: width * 0.21, width: width * 0.2,
                color: Theme.of(context).secondaryHeaderColor, title: AppTitles.seven,
              ),
              // 8
              RectNumberButton(height: width * 0.21, width: width * 0.2,
                color: Theme.of(context).secondaryHeaderColor, title: AppTitles.eight,
              ),
              // 9
              RectNumberButton(height: width * 0.21, width: width * 0.2,
                color: Theme.of(context).secondaryHeaderColor, title: AppTitles.nine,
              ),
              // x
              OvalButton(height: width * 0.21, width: width * 0.2,
                color: Theme.of(context).primaryColorDark, title: AppTitles.multiply, textHeight: 0.7,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 4
              RectNumberButton(height: width * 0.21, width: width * 0.2,
                color: Theme.of(context).secondaryHeaderColor, title: AppTitles.four,
              ),
              // 5
              RectNumberButton(height: width * 0.21, width: width * 0.2,
                color: Theme.of(context).secondaryHeaderColor, title: AppTitles.five,
              ),
              // 6
              RectNumberButton(height: width * 0.21, width: width * 0.2,
                color: Theme.of(context).secondaryHeaderColor, title: AppTitles.six,
              ),
              // -
              OvalButton(height: width * 0.21, width: width * 0.2,
                color: Theme.of(context).primaryColorDark, title: AppTitles.minus,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 1
              RectNumberButton(height: width * 0.21, width: width * 0.2,
                color: Theme.of(context).secondaryHeaderColor, title: AppTitles.one,
              ),
              // 2
              RectNumberButton(height: width * 0.21, width: width * 0.2,
                color: Theme.of(context).secondaryHeaderColor, title: AppTitles.two,
              ),
              // 3
              RectNumberButton(height: width * 0.21, width: width * 0.2,
                color: Theme.of(context).secondaryHeaderColor, title: AppTitles.three,
              ),
              // +
              OvalButton(height: width * 0.21, width: width * 0.2,
                color: Theme.of(context).primaryColorDark, title: AppTitles.plus,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 0
              RectNumberButton(height: width * 0.21, width: width * 0.2  * 2.3,
                color: Theme.of(context).secondaryHeaderColor, title: AppTitles.zero,
              ),
              // .
              RectNumberButton(height: width * 0.21, width: width * 0.2,
                color: Theme.of(context).secondaryHeaderColor, title: AppTitles.decimalSeparator,
              ),
              // =
              OvalButton(height: width * 0.21, width: width * 0.2,
                color: Theme.of(context).focusColor, title: AppTitles.equals,
              ),
            ],
          ),
        ],
      ),
    );
  }
}