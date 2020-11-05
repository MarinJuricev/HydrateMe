import 'dart:async';

import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/usecases/calculate_daily_water_intake.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:HydrateMe/domain/usecases/get_user_data.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculate_water_intake_event.dart';
part 'calculate_water_intake_state.dart';
part 'calculate_water_intake_bloc.freezed.dart';

class CalculateWaterIntakeBloc
    extends Bloc<CalculateWaterIntakeEvent, CalculateWaterIntakeState> {
  final CalculateDailyWaterIntake calculateDailyWaterIntake;
  final GetUserData getUserData;

  CalculateWaterIntakeBloc({
    @required this.calculateDailyWaterIntake,
    @required this.getUserData,
  }) : super(CalculateWaterIntakeState.initial());

  @override
  Stream<CalculateWaterIntakeState> mapEventToState(
    CalculateWaterIntakeEvent event,
  ) async* {
    yield* event.map(
      calculateClicked: (params) => _handleCalculateClicked(params),
      shouldSkipCalculation: (_) => _handleShouldSkipCalculation(),
    );
  }

  Stream<CalculateWaterIntakeState> _handleCalculateClicked(
      _CalculateClicked params) async* {
    final dailyWaterIntakeResult = await calculateDailyWaterIntake(
      CalculateDailyWaterIntakeParams(
        currentSelectedGender: params.currentSelectedGender,
        currentSelectedWeightType: params.currentSelectedWeightType,
        currentWeight: params.currentWeight,
        currentActivityInMinutes: params.activityLevel,
        wakeUpTime: params.wakeUpTime,
        sleepTime: params.sleepTime,
      ),
    );

    yield dailyWaterIntakeResult.fold(
      (failure) => CalculateWaterIntakeState.error(failure.message),
      (hydrateStatus) => CalculateWaterIntakeState.calculationFinished(),
    );
  }

  Stream<CalculateWaterIntakeState> _handleShouldSkipCalculation() async* {
    final getUserDataResult = await getUserData(NoParams());

    yield getUserDataResult.fold(
      (noUserDataSet) => CalculateWaterIntakeState.startCalculation(),
      (userDataSet) => CalculateWaterIntakeState.skipCalculation(),
    );
  }
}
