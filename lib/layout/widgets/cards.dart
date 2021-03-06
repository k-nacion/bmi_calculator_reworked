import 'package:bmi_calculator_reworked/layout/widgets/gender_cards.dart';
import 'package:flutter/material.dart';

import 'counter_card.dart';
import 'height_card.dart';

class Cards extends StatelessWidget {
  final List<dynamic>? callbacks;
  final Map<String, dynamic>? args;

  Cards({
    this.callbacks,
    this.args,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          GenderCards(),
          HeightCard(initialHeight: 190, minHeightValue: 110, maxHeightValue: 250, args: args),
          Expanded(
            child: Row(
              children: [
                CounterCard(
                  label: 'WEIGHT',
                  initialValue: 54,
                  hasUnits: true,
                  units: 'Kg',
                  args: args,
                ),
                CounterCard(label: 'AGE', initialValue: 18),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
