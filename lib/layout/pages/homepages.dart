import 'package:bmi_calculator_reworked/controller/bmi_calculator.dart';
import 'package:bmi_calculator_reworked/layout/widgets/bottom_button.dart';
import 'package:bmi_calculator_reworked/layout/widgets/cards.dart';
import 'package:bmi_calculator_reworked/util/app_bar.dart';
import 'package:bmi_calculator_reworked/util/constants/Routes.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  late double? height;
  late double? weight;

  void setHeight(double height) {
    this.height = height;
    print('Height: $height');
  }

  void setWeight(double weight) {
    this.weight = weight;
    print('Weight: $weight');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: generateAppBar(context),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Cards(
              args: {'setHeight': setHeight, 'setWeight': setWeight},
            ),
            BottomButton(
              text: 'CALCULATE YOUR BMI',
              callback: () {
                Navigator.pushNamed(context, Routes.result,
                    arguments: BmiCalculator(height: height!, weight: weight!));
              },
            ),
          ],
        ),
      ),
    );
  }
}
