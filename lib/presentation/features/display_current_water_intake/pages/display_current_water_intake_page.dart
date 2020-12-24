import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/model/hydrate_status.dart';
import '../bloc/current_water_intake_bloc.dart';
import '../widget/manual_water_intake.dart';
import '../widget/particles.dart';
import '../widget/waves.dart';

class DisplayCurrentWaterIntakePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: BlocConsumer<CurrentWaterIntakeBloc, CurrentWaterIntakeState>(
          listenWhen: (previousState, currentState) {
            return previousState ==
                    const CurrentWaterIntakeState.error(genericErrorMessage) ||
                currentState ==
                    const CurrentWaterIntakeState.error(genericErrorMessage);
          },
          listener: (context, state) => state.maybeMap(
              error: (errorState) =>
                  FlushbarHelper.createError(message: errorState.errorMessage)
                      .show(context),
              orElse: () => null),
          buildWhen: (previousState, currentState) =>
              previousState !=
                  const CurrentWaterIntakeState.error(genericErrorMessage) &&
              currentState !=
                  const CurrentWaterIntakeState.error(genericErrorMessage),
          builder: (context, state) {
            return state.maybeWhen(
              initial: (HydrateStatus initialHydrateStatus) =>
                  _buildWaterIntake(initialHydrateStatus),
              updated: (HydrateStatus hydrateStatus) =>
                  _buildWaterIntake(hydrateStatus),
              completed: () => _buildWaterIntake(
                HydrateStatus(
                    //TODO: send the completed hydrate status through the state... no need to initliaze it here
                    hydrationPercentage: 0,
                    formattedCurrentIntake: '0',
                    currentIntake: 0,
                    dailyIntakeGoal: 0,
                    date: DateTime.now()),
              ),
              loading: () => _buildLoading(context),
              orElse: () => null,
            );
          },
        ),
      ),
    );
  }
}

Widget _buildLoading(BuildContext context) {
  BlocProvider.of<CurrentWaterIntakeBloc>(context)
      .add(const CurrentWaterIntakeEvent.started());

  return const Center(
    child: CircularProgressIndicator(),
  );
}

Widget _buildWaterIntake(HydrateStatus hydrateStatus) {
  return Stack(
    children: <Widget>[
      const Positioned.fill(child: Particles(30)),
      Column(
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
