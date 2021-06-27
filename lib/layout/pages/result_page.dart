import 'package:bmi_calculator_reworked/layout/widgets/bottom_button.dart';
import 'package:bmi_calculator_reworked/layout/widgets/card_container.dart';
import 'package:bmi_calculator_reworked/layout/widgets/result_content.dart';
import 'package:bmi_calculator_reworked/util/app_bar.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: generateAppBar(context),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Text(
              'Your Result',
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black87),
            ),
          ),
          CardContainer(
            child: ResultContent(bmiValue: 26.7),
          ),
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
