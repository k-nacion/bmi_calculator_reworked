import 'package:bmi_calculator_reworked/util/constants/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function? callback;
  final String text;

  BottomButton({this.callback, required this.text});

  bool isEnabled() => callback != null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          border: Border.all(
              width: 3, style: BorderStyle.solid, color: isEnabled() ? Colors.black : Colors.grey),
          borderRadius: BorderRadius.circular(8),
          color: ThemeColor.ACCENT_COLOR,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: darkSplashColor,
            onTap: isEnabled() ? () => callback!() : null,
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: isEnabled() ? Colors.black : Colors.grey),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
