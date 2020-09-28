part of 'water_intake_bloc.dart';

@freezed
abstract class WaterIntakeState with _$WaterIntakeState {
  const factory WaterIntakeState.initial(HydrateStatus initalHydrateStatus) = WaterIntakeInitialState;
  const factory WaterIntakeState.loading() = WaterIntakeLoadingState;
  const factory WaterIntakeState.updated(HydrateStatus updatedHydrateStatus) =
      WaterIntakeUpdatedState;
  const factory WaterIntakeState.error(String errorMessage) =
      WaterIntakeErrorState;
  const factory WaterIntakeState.completed() = WaterIntakeCompletedState;
}
