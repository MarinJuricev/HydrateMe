part of 'current_water_intake_bloc.dart';

@freezed
abstract class CurrentWaterIntakeState with _$CurrentWaterIntakeState {
  const factory CurrentWaterIntakeState.initial(
      HydrateStatus initalHydrateStatus) = WaterIntakeInitialState;
  const factory CurrentWaterIntakeState.loading() = WaterIntakeLoadingState;
  const factory CurrentWaterIntakeState.updated(
      HydrateStatus updatedHydrateStatus) = WaterIntakeUpdatedState;
  const factory CurrentWaterIntakeState.error(String errorMessage) =
      WaterIntakeErrorState;
  const factory CurrentWaterIntakeState.completed() = WaterIntakeCompletedState;
}
