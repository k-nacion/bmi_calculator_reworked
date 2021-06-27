import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar generateAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    centerTitle: true,
    title: Text(
      'BMI CALCULATOR',
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}
