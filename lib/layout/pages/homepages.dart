import 'package:bmi_calculator_reworked/layout/widgets/bottom_button.dart';
import 'package:bmi_calculator_reworked/layout/widgets/cards.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Cards(),
        BottomButton(),
      ],
    );
  }
}
