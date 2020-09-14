import 'dart:async';

import 'package:HydrateMe/domain/usecases/calculate_daily_water_intake.dart';
import 'package:HydrateMe/presentation/common/model/gender.dart';
import 'package:HydrateMe/presentation/common/model/weight_type.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculate_water_intake_event.dart';
part 'calculate_water_intake_state.dart';
part 'calculate_water_intake_bloc.freezed.dart';

class CalculateWaterIntakeBloc
    extends Bloc<CalculateWaterIntakeEvent, CalculateWaterIntakeState> {
  final CalculateDailyWaterIntake _calculateDailyWaterIntake;

  CalculateWaterIntakeBloc(this._calculateDailyWaterIntake)
      : super(CalculateWaterIntakeState.initial());

  @override
  Stream<CalculateWaterIntakeState> mapEventToState(
    CalculateWaterIntakeEvent event,
  ) async* {
    yield* event.map(
      calculateClicked: (params) => _handleCalculateClicked(params),
    );
  }

  Stream<CalculateWaterIntakeState> _handleCalculateClicked(
      _CalculateClicked params) async* {
    yield CalculateWaterIntakeState.calculationInProgress();

    final dailyWaterIntakeResult = await _calculateDailyWaterIntake(
      CalculateDailyWaterIntakeParams(
          currentSelectedGender: params.currentSelectedGender,
          currentSelectedWeightType: params.currentSelectedWeightType,
          currentWeight: params.currentWeight,
          currentActivityInMinutes: params.currentActivityInMinutes),
    );

    yield  dailyWaterIntakeResult.fold(
      (failure) => CalculateWaterIntakeState.error(failure.message),
      (hydrateStatus) => CalculateWaterIntakeState.calculationFinished(),
    );
  }
}
