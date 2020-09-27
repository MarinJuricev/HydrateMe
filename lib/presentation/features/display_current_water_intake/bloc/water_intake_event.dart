part of 'water_intake_bloc.dart';

@freezed
abstract class WaterIntakeEvent with _$WaterIntakeEvent {
  // The height can be dynamically changed on the web, that's why we provide the height, so that the  % calculation
  // is always on point
  const factory WaterIntakeEvent.updated({
    @required double updatedValue,
    @required double waterMaximumHeight,
  }) = WaterIntakeUpdatedEvent;
  const factory WaterIntakeEvent.started() = WaterIntakeStaredEvent;
}
