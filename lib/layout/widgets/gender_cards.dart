import 'package:bmi_calculator_reworked/model/Gender.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'gender_card.dart';

class GenderCards extends StatefulWidget {
  @override
  _GenderCardsState createState() => _GenderCardsState();
}

class _GenderCardsState extends State<GenderCards> {
  var chosenGender = Gender.MALE;

  void pickGender(Gender gender) => setState(() {
        chosenGender = gender;
      });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          GenderCard(
            icon: FontAwesomeIcons.mars,
            gender: Gender.MALE,
            isEnabled: chosenGender == Gender.MALE,
            callback: pickGender,
          ),
          GenderCard(
            icon: FontAwesomeIcons.venus,
            gender: Gender.FEMALE,
            isEnabled: chosenGender == Gender.FEMALE,
            callback: pickGender,
          ),
        ],
      ),
    );
  }
}
