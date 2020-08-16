import 'package:HydrateMe/presentation/features/water_intake/bloc/water_intake_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/widgets/hydrate_button.dart';
import 'particles.dart';
import 'waves.dart';
import 'package:flutter/material.dart';

class WaterIntakePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: BlocBuilder<WaterIntakeBloc, WaterIntakeState>(
          builder: (context, state) {
            return state.when(
              initial: () => _buildInitialWaterIntake(),
              accepted: (_) => _buildInitialWaterIntake(),
              updated: (_) => _buildInitialWaterIntake(),
              completed: () => _buildInitialWaterIntake(),
            );
          },
        ),
      ),
    );
  }
}

Widget _buildInitialWaterIntake() {
  return Stack(
    children: <Widget>[
      Positioned.fill(child: Particles(30)),
      // HydrationProgress(),
      Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Waves(currentHeightPercentage: 1,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              HydrateButton(title: 'Deny'),
              HydrateButton(title: 'Confirm'),
            ],
          )
        ],
      ),
    ],
  );
}
