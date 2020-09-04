part of 'calculate_water_intake_bloc.dart';

@freezed
abstract class CalculateWaterIntakeEvent with _$CalculateWaterIntakeEvent {
  const factory CalculateWaterIntakeEvent.started(int weight, WeightType weightType) = _WeightEntered;
}