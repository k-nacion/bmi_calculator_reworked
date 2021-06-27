import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultContent extends StatelessWidget {
  final double bmiValue;
  late final String bmiDescriptive;
  late final String description;

  ResultContent({required this.bmiValue});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BmiDescriptive(),
          BmiNumerical(bmiValue),
          BmiDescription(),
        ],
      ),
    ));
  }
}

class BmiDescriptive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'OVERWEIGHT',
      style: Theme.of(context)
          .textTheme
          .button!
          .copyWith(color: Colors.green.shade800, fontWeight: FontWeight.w700),
    );
  }
}

class BmiNumerical extends StatelessWidget {
  BmiNumerical(this.value);

  final double value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value.toStringAsFixed(1),
      style: Theme.of(context)
          .textTheme
          .headline1!
          .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}

class BmiDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'You have a higher than normal body weight. Try to exercise more.',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
    );
  }
}
