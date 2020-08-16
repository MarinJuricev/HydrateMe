part of 'water_intake_bloc.dart';

@freezed
abstract class WaterIntakeState with _$WaterIntakeState {
  const factory WaterIntakeState.initial() = WaterIntakeInitialState;
  const factory WaterIntakeState.changed(double updatedValue) = WaterIntakeChangedState;
  const factory WaterIntakeState.updated(double updatedValue) = WaterIntakeUpdatedState;
  const factory WaterIntakeState.completed() = WaterIntakeCompletedState;
}