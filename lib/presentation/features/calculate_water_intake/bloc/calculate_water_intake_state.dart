part of 'calculate_water_intake_bloc.dart';

@freezed
abstract class CalculateWaterIntakeState with _$CalculateWaterIntakeState {
  const factory CalculateWaterIntakeState.initial() = _Initial;
  const factory CalculateWaterIntakeState.weightEnterSuccess() = _WeightEnterSuccess;
}
