part of 'water_intake_bloc.dart';

@freezed
abstract class WaterIntakeEvent with _$WaterIntakeEvent{
  const factory WaterIntakeEvent.changed(double changedValue) = WaterIntakeChangedEvent;
  const factory WaterIntakeEvent.updated(double updatedValue) = WaterIntakeUpdatedEvent;
  const factory WaterIntakeEvent.accepted(double acceptedValue) = WaterIntakeAcceptedEvent;
  const factory WaterIntakeEvent.canceled() = WaterIntakeCanceledEvent;
}
