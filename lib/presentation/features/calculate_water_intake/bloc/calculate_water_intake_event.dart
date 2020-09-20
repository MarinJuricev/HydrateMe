part of 'calculate_water_intake_bloc.dart';

@freezed
abstract class CalculateWaterIntakeEvent with _$CalculateWaterIntakeEvent {
  const factory CalculateWaterIntakeEvent.calculateClicked(
    Gender currentSelectedGender,
    WeightType currentSelectedWeightType,
    ActivityLevel activityLevel,
    int currentWeight,
  ) = _CalculateClicked;
}
