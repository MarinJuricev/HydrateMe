import 'dart:async';

import 'package:HydrateMe/presentation/common/model/weight_type.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculate_water_intake_event.dart';
part 'calculate_water_intake_state.dart';
part 'calculate_water_intake_bloc.freezed.dart';

class CalculateWaterIntakeBloc
    extends Bloc<CalculateWaterIntakeEvent, CalculateWaterIntakeState> {
  CalculateWaterIntakeBloc() : super(CalculateWaterIntakeState.initial());

  @override
  Stream<CalculateWaterIntakeState> mapEventToState(
    CalculateWaterIntakeEvent event,
  ) async* {
    yield* event.map(
      weightEntered: (params) => _handleWeightEntered(
        params.weight,
        params.weightType,
      ),
      activityEntered: (params) => _handleActivityEntered(
        params.activeMinutes,
      ),
    );
  }

  Stream<CalculateWaterIntakeState> _handleWeightEntered(
    int weight,
    WeightType weightType,
  ) async* {
    yield CalculateWaterIntakeState.weightEnterSuccess();
  }

  Stream<CalculateWaterIntakeState> _handleActivityEntered(
      int activeMinutes) async* {
    yield CalculateWaterIntakeState.initial();
  }
}
