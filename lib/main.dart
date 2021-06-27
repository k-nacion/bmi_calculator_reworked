import 'package:bmi_calculator_reworked/layout/pages/homepages.dart';
import 'package:bmi_calculator_reworked/layout/pages/result_page.dart';
import 'package:bmi_calculator_reworked/util/theme/Theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'util/constants/Routes.dart';

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
      initialRoute: Routes.home,
      routes: {
        Routes.home: (context) => Homepage(),
        Routes.result: (context) => ResultPage(),
      },
    );
  }
}
