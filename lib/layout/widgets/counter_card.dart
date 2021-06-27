import 'package:bmi_calculator_reworked/layout/widgets/card_container.dart';
import 'package:bmi_calculator_reworked/util/constants/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CounterCard extends StatefulWidget {
  final String label;
  final double initialValue;
  final bool hasUnits;
  final String? units;

  CounterCard(
      {Key? key,
      required this.label,
      required this.initialValue,
      this.hasUnits = false,
      this.units})
      : super(key: key);

  @override
  _CounterCardState createState() => _CounterCardState(initialValue);
}

class _CounterCardState extends State<CounterCard> {
  double _value;

  _CounterCardState(this._value);

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.label,
            style: Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Text(
                _value.toStringAsFixed(0),
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              if (widget.hasUnits)
                Text(
                  widget.units!,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold, color: Color(0xB4000000)),
                ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                onPressed: () => setState(() => _value--),
                child: Icon(
                  FontAwesomeIcons.minus,
                  color: Colors.black,
                ),
                backgroundColor: ThemeColor.LAVENDER,
                shape: CircleBorder(side: BorderSide(width: 2.3, color: Colors.black54)),
                elevation: 0,
                splashColor: lightSplashColor,
              ),
              SizedBox(width: 8),
              FloatingActionButton(
                onPressed: () => setState(() => _value++),
                child: Icon(
                  FontAwesomeIcons.plus,
                  color: Colors.black,
                ),
                elevation: 0,
                splashColor: lightSplashColor,
                backgroundColor: ThemeColor.LAVENDER,
                shape: CircleBorder(side: BorderSide(width: 2.3, color: Colors.black54)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
