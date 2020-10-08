import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/model/hydrate_status.dart';
import '../../../service_locator.dart' as di;
import '../calculate_water_intake/widget/water_transition.dart';
import 'bloc/current_water_intake_bloc.dart';
import 'particles.dart';
import 'waves.dart';
import 'widget/manual_water_intake.dart';

class DisplayCurrentWaterIntakePage extends StatelessWidget {
  static const DISPLAY_CURRENT_WATER_INTAKE_PAGE = '/displayCurrentWaterIntake';

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
      body: BlocProvider(
        create: (BuildContext context) => di.getIt<CurrentWaterIntakeBloc>(),
        child: BlocBuilder<CurrentWaterIntakeBloc, CurrentWaterIntakeState>(
          builder: (context, state) {
            return state.when(
              initial: (HydrateStatus initialHydrateStatus) =>
                  _buildWaterIntake(initialHydrateStatus),
              updated: (HydrateStatus hydrateStatus) =>
                  _buildWaterIntake(hydrateStatus),
              completed: () => _buildWaterIntake(
                HydrateStatus(
                  hydrationPercentage: 0,
                  formattedCurrentIntake: '0',
                  currentIntake: 0,
                  dailyIntakeGoal: 0,
                ),
              ),
              error: (String errorMessage) => Text(errorMessage),
              loading: () => WaterTransition(),
            );
          },
        ),
      ),
    );
  }
}

Widget _buildWaterIntake(HydrateStatus hydrateStatus) {
  return Stack(
    children: <Widget>[
      Positioned.fill(child: Particles(30)),
      Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Waves(
              currentHydrateStatus: hydrateStatus,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ManualWaterIntake(),
              ),
            ),
          )
        ],
      ),
    ],
  );
}
