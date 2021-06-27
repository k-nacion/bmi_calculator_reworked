import 'package:bmi_calculator_reworked/layout/widgets/bottom_button.dart';
import 'package:bmi_calculator_reworked/layout/widgets/cards.dart';
import 'package:bmi_calculator_reworked/util/app_bar.dart';
import 'package:bmi_calculator_reworked/util/constants/Routes.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: generateAppBar(context),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Cards(),
          BottomButton(
            text: 'CALCULATE YOUR BMI',
            callback: () {
              Navigator.pushNamed(context, Routes.result);
            },
          ),
        ],
      ),
    );
  }
}
