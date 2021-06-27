import 'package:bmi_calculator_reworked/layout/widgets/card_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CounterCard extends StatefulWidget {
  final String label;
  int initialValue;
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
  _CounterCardState createState() => _CounterCardState();
}

class _CounterCardState extends State<CounterCard> {
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
                widget.initialValue.toString(),
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
              IconButton(
                icon: Icon(FontAwesomeIcons.minus),
                onPressed: () {
                  setState(() {
                    widget.initialValue--;
                  });
                },
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    widget.initialValue++;
                  });
                },
                icon: Icon(FontAwesomeIcons.plus),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
