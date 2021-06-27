import 'package:bmi_calculator_reworked/util/constants/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          border: Border.all(width: 3, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(8),
          color: ThemeColor.ACCENT_COLOR,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.black26,
            onTap: () {},
            child: Center(
              child: Text(
                'CALCULATE YOUR BMI',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
