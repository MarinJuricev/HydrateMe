import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/base_usecase.dart';
import '../../../../domain/model/activity_level.dart';
import '../../../../domain/model/gender.dart';
import '../../../../domain/model/weight_type.dart';
import '../../../../domain/usecases/calculate_daily_water_intake.dart';
import '../../../../domain/usecases/should_skip_calculationh.dart';

part 'calculate_water_intake_bloc.freezed.dart';
part 'calculate_water_intake_event.dart';
part 'calculate_water_intake_state.dart';

class CalculateWaterIntakeBloc
    extends Bloc<CalculateWaterIntakeEvent, CalculateWaterIntakeState> {
  final CalculateDailyWaterIntake calculateDailyWaterIntake;
  final ShouldSkipCalculation shouldSkipCalculation;

  CalculateWaterIntakeBloc({
    @required this.calculateDailyWaterIntake,
    @required this.shouldSkipCalculation,
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
    final shouldSkipCalculationResult = await shouldSkipCalculation(NoParams());

    yield shouldSkipCalculationResult.fold(
      (error) => CalculateWaterIntakeState.startCalculation(),
      (success) => CalculateWaterIntakeState.skipCalculation(),
    );
  }
}
