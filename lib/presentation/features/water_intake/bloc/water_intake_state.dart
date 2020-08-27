part of 'water_intake_bloc.dart';

@freezed
abstract class WaterIntakeState with _$WaterIntakeState {
  const factory WaterIntakeState.initial() = WaterIntakeInitialState;
  const factory WaterIntakeState.updated(double updatedValue) = WaterIntakeUpdatedState;
  const factory WaterIntakeState.error(String errorMessage) = WaterIntakeErrorState;
  const factory WaterIntakeState.completed() = WaterIntakeCompletedState;
}