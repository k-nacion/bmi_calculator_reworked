import 'package:bmi_calculator_reworked/model/Gender.dart';
import 'package:flutter/material.dart';

import 'card_container.dart';

class GenderCard extends StatelessWidget {
  final IconData icon;
  final Gender gender;
  final bool isEnabled;
  final Function callback;

  GenderCard(
      {required this.icon, required this.gender, this.isEnabled = false, required this.callback});

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      borderColor: getBorderColor(),
      onPress: () => callback(gender),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 70, color: isEnabled ? Colors.black : Colors.grey),
          SizedBox(height: 15),
          Text(
            gender.toString().substring(7),
            style: Theme.of(context).textTheme.caption!.copyWith(
                fontWeight: FontWeight.bold,
                color: isEnabled ? Theme.of(context).textTheme.caption!.color : Colors.grey),
          ),
        ],
      ),
    );
  }

  Color getBorderColor() {
    return isEnabled ? CardContainer().borderColor : Colors.grey;
  }
}
