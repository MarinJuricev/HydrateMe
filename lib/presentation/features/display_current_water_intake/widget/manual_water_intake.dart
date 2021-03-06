import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/widgets/hydrate_button.dart';
import '../../../common/widgets/hydrate_text_field.dart';
import '../bloc/current_water_intake_bloc.dart';

class ManualWaterIntake extends StatefulWidget {
  @override
  _ManualWaterIntakeState createState() => _ManualWaterIntakeState();
}

class _ManualWaterIntakeState extends State<ManualWaterIntake> {
  String currentManualEntryText = '';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: HydrateTextField(
              labelText: 'Manual water intake',
              getCurrentTextCallback: (String newValue) {
                currentManualEntryText = newValue;
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: HydrateButton(
              title: '+',
              onPressedCallback: () => _onManualAddClicked(context),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: HydrateButton(
              title: '-',
              onPressedCallback: _onManualDecreaseClicked,
            ),
          ),
        ),
      ],
    );
  }

  void _onManualAddClicked(BuildContext context) {
    BlocProvider.of<CurrentWaterIntakeBloc>(context).add(
      CurrentWaterIntakeEvent.manualIncrease(
        waterToAdd: currentManualEntryText,
      ),
    );
  }

  void _onManualDecreaseClicked() {
    BlocProvider.of<CurrentWaterIntakeBloc>(context).add(
      CurrentWaterIntakeEvent.manualDecrease(
        waterToSubtract: currentManualEntryText,
      ),
    );
  }
}
