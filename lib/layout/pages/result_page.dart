import 'package:bmi_calculator_reworked/controller/bmi_calculator.dart';
import 'package:bmi_calculator_reworked/layout/widgets/bottom_button.dart';
import 'package:bmi_calculator_reworked/layout/widgets/card_container.dart';
import 'package:bmi_calculator_reworked/layout/widgets/result_content.dart';
import 'package:bmi_calculator_reworked/util/app_bar.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as BmiCalculator;

    return Scaffold(
      appBar: generateAppBar(context, textTitle: ''),
      body: SafeArea(
        child: Column(
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
              child: ResultContent(bmiResult: args),
            ),
            BottomButton(
                text: 'RECALCULATE YOUR BMI',
                callback: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
