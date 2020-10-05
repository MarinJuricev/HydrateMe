import 'dart:async';

import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/usecases/calculate_waves_percentage.dart';
import 'package:HydrateMe/domain/usecases/get_current_hydrate_status.dart';
import 'package:HydrateMe/domain/usecases/manual_add_water_intake.dart';
import 'package:HydrateMe/domain/util/input_converter.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';

part 'water_intake_event.dart';
part 'water_intake_state.dart';
part 'water_intake_bloc.freezed.dart';

class WaterIntakeBloc extends Bloc<WaterIntakeEvent, WaterIntakeState> {
  final CalculateWavesPercentage calculateWavesPercentage;
  final GetCurrentHydrateStatus getCurrentHydrateStatus;
  final ManualAddWaterIntake manualAddWaterIntake;

  WaterIntakeBloc({
    @required this.calculateWavesPercentage,
    @required this.getCurrentHydrateStatus,
    @required this.manualAddWaterIntake,
  }) : super(WaterIntakeState.loading());

  @override
  Stream<WaterIntakeState> mapEventToState(
    WaterIntakeEvent event,
  ) async* {
    yield* event.map(
      updated: (params) => _handleUpdateWaterIntake(
        params.updatedValue,
        params.waterMaximumHeight,
      ),
      started: (WaterIntakeStaredEvent value) => _handleStartedEvent(),
      manualIncrease: (params) => _handleManualIncrease(params.waterToAdd),
      manualDecrease: (params) => _handleManualDecrease(params.waterToSubtract),
    );
  }

  Stream<WaterIntakeState> _handleUpdateWaterIntake(
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
      (failure) => WaterIntakeState.error(failure.message),
      (newHydrationStatus) => WaterIntakeState.updated(newHydrationStatus),
    );
  }

  Stream<WaterIntakeState> _handleStartedEvent() async* {
    final useCaseResult = await getCurrentHydrateStatus(NoParams());

    yield useCaseResult.fold(
      (failure) => WaterIntakeState.error(failure.message),
      (newHydrationStatus) => WaterIntakeState.initial(newHydrationStatus),
    );
  }

  Stream<WaterIntakeState> _handleManualIncrease(String waterToAdd) async* {
    final useCaseResult = await manualAddWaterIntake(waterToAdd);

    yield useCaseResult.fold(
      (failure) => WaterIntakeState.error(failure.message),
      (newHydrationStatus) => WaterIntakeState.initial(newHydrationStatus),
    );
  }

  Stream<WaterIntakeState> _handleManualDecrease(
      String waterToSubtract) async* {
    final useCaseResult = await getCurrentHydrateStatus(NoParams());

    yield useCaseResult.fold(
      (failure) => WaterIntakeState.error(failure.message),
      (newHydrationStatus) => WaterIntakeState.initial(newHydrationStatus),
    );
  }
}
