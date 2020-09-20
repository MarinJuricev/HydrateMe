import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/water_intake_bloc.dart';
import 'particles.dart';
import 'waves.dart';
import 'widget/manual_water_intake.dart';
import '../../../service_locator.dart' as di;

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
        create: (BuildContext context) => di.getIt<WaterIntakeBloc>(),
        child: BlocBuilder<WaterIntakeBloc, WaterIntakeState>(
          builder: (context, state) {
            return state.when(
              initial: () => _buildWaterIntake(
                HydrateStatus(
                  hydrationPercentage: 1,
                  percentage: '100%',
                  currentIntake: 0,
                  dailyIntakeGoal: 0,
                ),
              ),
              updated: (HydrateStatus hydrateStatus) =>
                  _buildWaterIntake(hydrateStatus),
              completed: () => _buildWaterIntake(
                HydrateStatus(
                  hydrationPercentage: 0,
                  percentage: '0%',
                  currentIntake: 0,
                  dailyIntakeGoal: 0,
                ),
              ),
              error: (String errorMessage) => Text(errorMessage),
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
