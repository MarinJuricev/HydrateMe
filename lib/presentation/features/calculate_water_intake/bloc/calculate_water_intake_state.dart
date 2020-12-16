part of 'calculate_water_intake_bloc.dart';

@freezed
abstract class CalculateWaterIntakeState with _$CalculateWaterIntakeState {
  factory CalculateWaterIntakeState.initial() = _CalculateWaterIntakeInitial;
  factory CalculateWaterIntakeState.skipCalculation() =
      _CalculateWaterIntakeSkipCalculation;
  factory CalculateWaterIntakeState.startCalculation() =
      _CalculateWaterIntakeStartCalculation;
  factory CalculateWaterIntakeState.error(String errorMessage) =
      _CalculateWaterIntakeErrorState;
  factory CalculateWaterIntakeState.calculationFinished() =
      _CalculationFinished;
}
