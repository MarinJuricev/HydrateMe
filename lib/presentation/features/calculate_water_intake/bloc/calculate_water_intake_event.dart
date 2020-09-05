part of 'calculate_water_intake_bloc.dart';

@freezed
abstract class CalculateWaterIntakeEvent with _$CalculateWaterIntakeEvent {
  const factory CalculateWaterIntakeEvent.weightEntered(int weight, WeightType weightType) = _WeightEntered;
  const factory CalculateWaterIntakeEvent.activityEntered(int activeMinutes) = _ActivityEntered;
}