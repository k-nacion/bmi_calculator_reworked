import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar generateAppBar(
  BuildContext context, {
  String textTitle = 'BMI CALCULATOR',
  bool? centerTitle = true,
  double? fontSize,
  FontWeight? fontWeight = FontWeight.bold,
}) {
  return AppBar(
    elevation: 0,
    centerTitle: centerTitle,
    title: Text(
      textTitle,
      style: TextStyle(
          fontWeight: fontWeight,
          fontSize:
              fontSize == null ? Theme.of(context).appBarTheme.titleTextStyle!.fontSize : fontSize),
    ),
  );
}
