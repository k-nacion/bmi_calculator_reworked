import 'package:bmi_calculator_reworked/util/constants/Typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/Colors.dart';

ThemeData generateTheme(BuildContext? ctx) {
  var baseTheme = ThemeData.light();

  return baseTheme.copyWith(
    scaffoldBackgroundColor: ThemeColor.PRIMARY_COLOR,
    primaryColor: ThemeColor.PRIMARY_COLOR,
    accentColor: ThemeColor.ACCENT_COLOR,
    textTheme: baseTheme.textTheme.apply(fontFamily: ThemeTypography.FONT_FAMILY),
    appBarTheme: baseTheme.appBarTheme.copyWith(
      textTheme: baseTheme.textTheme.apply(fontFamily: ThemeTypography.FONT_FAMILY),
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
      iconTheme: IconThemeData(color: Colors.black),
    ),
    sliderTheme: baseTheme.sliderTheme.copyWith(
      activeTrackColor: ThemeColor.LAVENDER,
      inactiveTrackColor: ThemeColor.LAVENDER,
      thumbColor: ThemeColor.ACCENT_COLOR,
    ),
  );
}
