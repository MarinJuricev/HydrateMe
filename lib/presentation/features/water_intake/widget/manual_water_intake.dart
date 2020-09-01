import 'package:HydrateMe/presentation/common/widgets/hydrate_button.dart';
import 'package:HydrateMe/presentation/common/widgets/hydrate_text_field.dart';
import 'package:flutter/material.dart';

class ManualWaterIntake extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: const Padding(
            padding: const EdgeInsets.all(8.0),
            child: const HydrateTextField(
              labelText: 'Manual water intake',
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: const Padding(
            padding: const EdgeInsets.all(8.0),
            child: const HydrateButton(title: '+'),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const HydrateButton(title: '-'),
          ),
        ),
      ],
    );
  }
}
