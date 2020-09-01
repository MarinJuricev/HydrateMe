import 'dart:async';

import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/usecases/calculate_waves_percentage.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';

part 'water_intake_event.dart';
part 'water_intake_state.dart';
part 'water_intake_bloc.freezed.dart';

class WaterIntakeBloc extends Bloc<WaterIntakeEvent, WaterIntakeState> {
  final CalculateWavesPercentage calculateWavesPercentage;

  WaterIntakeBloc(this.calculateWavesPercentage)
      : super(WaterIntakeState.initial());

  @override
  Stream<WaterIntakeState> mapEventToState(
    WaterIntakeEvent event,
  ) async* {
    yield* event.map(
      updated: (params) =>
          addTestEvent(params.updatedValue, params.waterMaximumHeight),
    );
  }

  Stream<WaterIntakeState> addTestEvent(
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
}
