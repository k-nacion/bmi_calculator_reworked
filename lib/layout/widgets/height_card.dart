import 'package:bmi_calculator_reworked/layout/widgets/card_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeightCard extends StatefulWidget {
  final double initialHeight;
  final double minHeightValue;
  final double maxHeightValue;

  HeightCard(
      {required this.initialHeight, required this.minHeightValue, required this.maxHeightValue});

  @override
  _HeightCardState createState() => _HeightCardState(initialHeight);
}

class _HeightCardState extends State<HeightCard> {
  double _heightValue;

  _HeightCardState(this._heightValue);

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'HEIGHT',
            style: Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(_heightValue.toStringAsFixed(0),
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(fontWeight: FontWeight.bold, color: Colors.black)),
              Text(
                'CM',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontWeight: FontWeight.bold, color: Color(0xB4000000)),
              ),
            ],
          ),
          Slider(
            value: _heightValue,
            onChanged: (value) => setState(() {
              _heightValue = value;
            }),
            min: widget.minHeightValue,
            max: widget.maxHeightValue,
          ),
        ],
      ),
    );
  }
}
