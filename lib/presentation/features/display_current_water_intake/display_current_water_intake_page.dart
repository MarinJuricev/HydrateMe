import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/water_intake_bloc.dart';
import 'particles.dart';
import 'waves.dart';
import 'widget/manual_water_intake.dart';

class DisplayCurrentWaterIntakePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.watch_later),
            tooltip: 'Cups Sizes',
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: Colors.blue,
      body: BlocBuilder<WaterIntakeBloc, WaterIntakeState>(
        builder: (context, state) {
          return state.when(
            initial: () => _buildWaterIntake(
              HydrateStatus(hydrationPercentage: 1, percentage: '100%'),
            ),
            updated: (HydrateStatus hydrateStatus) =>
                _buildWaterIntake(hydrateStatus),
            completed: () => _buildWaterIntake(
              //TODO Make a static variable or a builder for the 100% and 0% case
              HydrateStatus(hydrationPercentage: 0, percentage: '0%'),
            ),
            error: (String errorMessage) => Text(errorMessage),
          );
        },
      ),
    );
  }
}

Widget _buildWaterIntake(HydrateStatus hydrateStatus) {
  return Stack(
    children: <Widget>[
      Positioned.fill(child: Particles(30)),
      Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Waves(
              currentHydrateStatus: hydrateStatus,
            ),
          ),
          ManualWaterIntake()
        ],
      ),
    ],
  );
}