import 'dart:math';

import 'package:bmi_calculator_reworked/model/BmiCategory.dart';

class BmiCalculator {
  double height;
  double weight;
  double _bmi;

  BmiCalculator({required this.height, required this.weight})
      : this._bmi = weight / pow(height / 100, 2);

  double get bmi => _bmi;

  String get category {
    if (_bmi < 18.5) {
      return BmiCategory.UNDERWEIGHT.toString().substring(12);
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return BmiCategory.NORMAL.toString().substring(12);
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return BmiCategory.OVERWEIGHT.toString().substring(12);
    } else {
      return BmiCategory.OBESE.toString().substring(12);
    }
  }
}
