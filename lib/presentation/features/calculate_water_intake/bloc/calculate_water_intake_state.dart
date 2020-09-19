part of 'calculate_water_intake_bloc.dart';

@freezed
abstract class CalculateWaterIntakeState with _$CalculateWaterIntakeState {
  const factory CalculateWaterIntakeState.initial() =
      _CalculateWaterIntakeInitial;
  const factory CalculateWaterIntakeState.error(String errorMessage) =
      _CalculateWaterIntakeErrorState;
  const factory CalculateWaterIntakeState.calculationFinished() =
      _CalculationFinished;
}
