import 'package:HydrateMe/presentation/common/widgets/hydrate_button.dart';
import 'package:HydrateMe/presentation/common/widgets/hydrate_text_field.dart';
import 'package:HydrateMe/presentation/features/display_current_water_intake/bloc/current_water_intake_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: HydrateButton(
              title: '+',
              onPressedCallback: () => _onManualAddClicked(context),
            ),
          ),
        ),
        Expanded(
          flex: 1,
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
          waterToAdd: currentManualEntryText),
    );
  }

  void _onManualDecreaseClicked() {
    BlocProvider.of<CurrentWaterIntakeBloc>(context).add(
      CurrentWaterIntakeEvent.manualDecrease(
          waterToSubtract: currentManualEntryText),
    );
  }
}
