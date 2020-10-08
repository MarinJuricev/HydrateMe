part of 'current_water_intake_bloc.dart';

@freezed
abstract class CurrentWaterIntakeEvent with _$CurrentWaterIntakeEvent {
  // The height can be dynamically changed on the web, that's why we provide the height, so that the  % calculation
  // is always on point
  const factory CurrentWaterIntakeEvent.updated({
    @required double updatedValue,
    @required double waterMaximumHeight,
  }) = WaterIntakeUpdatedEvent;
  const factory CurrentWaterIntakeEvent.started() = WaterIntakeStaredEvent;
  const factory CurrentWaterIntakeEvent.manualIncrease(
      {@required String waterToAdd}) = WaterIntakeManualAddEvent;
  const factory CurrentWaterIntakeEvent.manualDecrease(
      {@required String waterToSubtract}) = WaterIntakeManualDecreaseEvent;
}
