import 'package:bmi_calculator_reworked/util/constants/Colors.dart';
import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget? child;
  final Color cardColor;
  final double borderWidth;
  final Color borderColor;
  final Function? onPress;

  CardContainer(
      {Key? key,
      this.child,
      this.cardColor = ThemeColor.URANIAN_BLUE,
      this.borderWidth = 3,
      this.borderColor = Colors.black45,
      this.onPress})
      : super(key: key);

  Function? executeCallback() {
    if (onPress != null) {
      return onPress!;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          if (onPress != null) {
            onPress!();
          }
        },
        child: Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: borderWidth, color: borderColor),
              color: cardColor),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
