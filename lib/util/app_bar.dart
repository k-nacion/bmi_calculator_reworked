import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar generateAppBar(
  BuildContext context,
  String title, {
  bool? centerTitle = true,
  double? fontSize,
  FontWeight? fontWeight = FontWeight.bold,
}) {
  var appTitle = title;

  return AppBar(
    elevation: 0,
    centerTitle: centerTitle,
    title: Text(
      appTitle,
      style: TextStyle(
          fontWeight: fontWeight,
          fontSize:
              fontSize == null ? Theme.of(context).appBarTheme.titleTextStyle!.fontSize : fontSize),
    ),
  );
}
