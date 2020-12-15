import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../../core/usecase/base_usecase.dart';
import '../../../../domain/model/hydrate_status.dart';
import '../../../../domain/usecases/calculate_waves_percentage.dart';
import '../../../../domain/usecases/get_current_hydrate_status.dart';
import '../../../../domain/usecases/manual_add_water_intake.dart';
import '../../../../domain/usecases/manual_decrease_water_intake.dart';

part 'current_water_intake_bloc.freezed.dart';
part 'current_water_intake_event.dart';
part 'current_water_intake_state.dart';

class CurrentWaterIntakeBloc
    extends Bloc<CurrentWaterIntakeEvent, CurrentWaterIntakeState> {
  final CalculateWavesPercentage calculateWavesPercentage;
  final GetCurrentHydrateStatus getCurrentHydrateStatus;
  final ManualAddWaterIntake manualAddWaterIntake;
  final ManualDecreaseWaterIntake manualDecraseWaterIntake;

  CurrentWaterIntakeBloc({
    @required this.calculateWavesPercentage,
    @required this.getCurrentHydrateStatus,
    @required this.manualAddWaterIntake,
    @required this.manualDecraseWaterIntake,
  }) : super(const CurrentWaterIntakeState.loading());

  @override
  Stream<CurrentWaterIntakeState> mapEventToState(
    CurrentWaterIntakeEvent event,
  ) async* {
    yield* event.map(
      started: (params) => _handleStartedEvent(),
      updated: (params) => _handleUpdateWaterIntake(
        params.updatedValue,
        params.waterMaximumHeight,
      ),
      manualIncrease: (params) => _handleManualIncrease(params.waterToAdd),
      manualDecrease: (params) => _handleManualDecrease(params.waterToSubtract),
    );
  }

  Stream<CurrentWaterIntakeState> _handleUpdateWaterIntake(
    double updatedValue,
    double waterMaximumHeight,
  ) async* {
    final useCaseResult = await calculateWavesPercentage(
      CalculateWavesPercentageParams(
        updatedValue: updatedValue,
        waterMaximumHeight: waterMaximumHeight,
      ),
    );

    yield useCaseResult.fold(
      (failure) => CurrentWaterIntakeState.error(failure.message),
      (newHydrationStatus) =>
          CurrentWaterIntakeState.updated(newHydrationStatus),
    );
  }

  Stream<CurrentWaterIntakeState> _handleStartedEvent() async* {
    final useCaseResult = await getCurrentHydrateStatus(NoParams());

    yield useCaseResult.fold(
      (failure) => CurrentWaterIntakeState.error(failure.message),
      (newHydrationStatus) =>
          CurrentWaterIntakeState.initial(newHydrationStatus),
    );
  }

  Stream<CurrentWaterIntakeState> _handleManualIncrease(
      String waterToAdd) async* {
    final useCaseResult = await manualAddWaterIntake(waterToAdd);

    yield useCaseResult.fold(
      (failure) => CurrentWaterIntakeState.error(failure.message),
      (newHydrationStatus) =>
          CurrentWaterIntakeState.updated(newHydrationStatus),
    );
  }

  Stream<CurrentWaterIntakeState> _handleManualDecrease(
      String waterToDecrease) async* {
    final useCaseResult = await manualDecraseWaterIntake(waterToDecrease);

    yield useCaseResult.fold(
      (failure) => CurrentWaterIntakeState.error(failure.message),
      (newHydrationStatus) =>
          CurrentWaterIntakeState.updated(newHydrationStatus),
    );
  }
}
