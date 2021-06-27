import 'package:bmi_calculator_reworked/layout/pages/homepages.dart';
import 'package:bmi_calculator_reworked/util/app_bar.dart';
import 'package:bmi_calculator_reworked/util/theme/Theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: generateTheme(context),
      home: Builder(
        builder: (BuildContext ctx) => Scaffold(
          appBar: generateAppBar(ctx),
          body: Homepage(),
        ),
      ),
    );
  }
}
