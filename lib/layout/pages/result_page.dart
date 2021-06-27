import 'package:bmi_calculator_reworked/layout/widgets/bottom_button.dart';
import 'package:bmi_calculator_reworked/layout/widgets/card_container.dart';
import 'package:bmi_calculator_reworked/util/app_bar.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: generateAppBar(context, 'Your Result'),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CardContainer(),
          BottomButton(
              text: 'RECALCULATE YOUR BMI',
              callback: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
