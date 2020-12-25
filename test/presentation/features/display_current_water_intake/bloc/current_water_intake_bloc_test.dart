import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/usecases/calculate_waves_percentage.dart';
import 'package:HydrateMe/domain/usecases/get_current_hydrate_status.dart';
import 'package:HydrateMe/domain/usecases/manual_add_water_intake.dart';
import 'package:HydrateMe/domain/usecases/manual_decrease_water_intake.dart';
import 'package:HydrateMe/presentation/features/display_current_water_intake/bloc/current_water_intake_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockCalculateWavesPercentage extends Mock
    implements CalculateWavesPercentage {}

class MockGetCurrentHydrateStatus extends Mock
    implements GetCurrentHydrateStatus {}

class MockManualAddWaterIntake extends Mock implements ManualAddWaterIntake {}

class MockManualDecreaseWaterIntake extends Mock
    implements ManualDecreaseWaterIntake {}

void main() {
  MockCalculateWavesPercentage _mockCalculateWavesPercentage;
  MockGetCurrentHydrateStatus _mockGetCurrentHydrateStatus;
  MockManualAddWaterIntake _mockManualAddWaterIntake;
  MockManualDecreaseWaterIntake _mockManualDecreaseWaterIntake;

  final testDate = DateTime.now();
  final testHydrateStatus = HydrateStatus(
    currentIntake: 2500,
    dailyIntakeGoal: 2500,
    date: testDate,
    formattedCurrentIntake: '2500/2500',
    hydrationPercentage: 1.0,
  );
  const testUpdatedHyrdateValue = 160.0;
  const testWaterMaximumHeight = 260.0;

  setUp(() {
    _mockCalculateWavesPercentage = MockCalculateWavesPercentage();
    _mockGetCurrentHydrateStatus = MockGetCurrentHydrateStatus();
    _mockManualAddWaterIntake = MockManualAddWaterIntake();
    _mockManualDecreaseWaterIntake = MockManualDecreaseWaterIntake();
  });

  group(
    'CurrentWaterIntakeState started -',
    () {
      blocTest(
        'should emit CurrentWaterIntakeState.error when getCurrentHydrateStatus returns a failure',
        build: () {
          when(_mockGetCurrentHydrateStatus(NoParams())).thenAnswer((_) =>
              Future.value(const Left(GeneralFailure(genericErrorMessage))));

          return CurrentWaterIntakeBloc(
            calculateWavesPercentage: _mockCalculateWavesPercentage,
            getCurrentHydrateStatus: _mockGetCurrentHydrateStatus,
            manualAddWaterIntake: _mockManualAddWaterIntake,
            manualDecraseWaterIntake: _mockManualDecreaseWaterIntake,
          );
        },
        act: (CurrentWaterIntakeBloc bloc) => bloc.add(
          const CurrentWaterIntakeEvent.started(),
        ),
        expect: [const CurrentWaterIntakeState.error(genericErrorMessage)],
      );

      blocTest(
        'should emit CurrentWaterIntakeState.initial when getCurrentHydrateStatus returns a success',
        build: () {
          when(_mockGetCurrentHydrateStatus(NoParams()))
              .thenAnswer((_) => Future.value(Right(testHydrateStatus)));

          return CurrentWaterIntakeBloc(
            calculateWavesPercentage: _mockCalculateWavesPercentage,
            getCurrentHydrateStatus: _mockGetCurrentHydrateStatus,
            manualAddWaterIntake: _mockManualAddWaterIntake,
            manualDecraseWaterIntake: _mockManualDecreaseWaterIntake,
          );
        },
        act: (CurrentWaterIntakeBloc bloc) => bloc.add(
          const CurrentWaterIntakeEvent.started(),
        ),
        expect: [CurrentWaterIntakeState.initial(testHydrateStatus)],
      );
    },
  );

  group(
    'CurrentWaterIntakeState updated -',
    () {
      blocTest(
        'should emit CurrentWaterIntakeState.error when calculateWavesPercentage returns a failure',
        build: () {
          const _useCaseParams = CalculateWavesPercentageParams(
            updatedValue: testUpdatedHyrdateValue,
            waterMaximumHeight: testWaterMaximumHeight,
          );

          when(_mockCalculateWavesPercentage(_useCaseParams)).thenAnswer((_) =>
              Future.value(const Left(GeneralFailure(genericErrorMessage))));

          return CurrentWaterIntakeBloc(
            calculateWavesPercentage: _mockCalculateWavesPercentage,
            getCurrentHydrateStatus: _mockGetCurrentHydrateStatus,
            manualAddWaterIntake: _mockManualAddWaterIntake,
            manualDecraseWaterIntake: _mockManualDecreaseWaterIntake,
          );
        },
        act: (CurrentWaterIntakeBloc bloc) => bloc.add(
          const CurrentWaterIntakeEvent.updated(
            updatedValue: testUpdatedHyrdateValue,
            waterMaximumHeight: testWaterMaximumHeight,
          ),
        ),
        expect: [const CurrentWaterIntakeState.error(genericErrorMessage)],
      );

      blocTest(
        'should emit CurrentWaterIntakeState.updated when calculateWavesPercentage returns a success',
        build: () {
          const _useCaseParams = CalculateWavesPercentageParams(
            updatedValue: testUpdatedHyrdateValue,
            waterMaximumHeight: testWaterMaximumHeight,
          );

          when(_mockCalculateWavesPercentage(_useCaseParams))
              .thenAnswer((_) => Future.value(Right(testHydrateStatus)));

          return CurrentWaterIntakeBloc(
            calculateWavesPercentage: _mockCalculateWavesPercentage,
            getCurrentHydrateStatus: _mockGetCurrentHydrateStatus,
            manualAddWaterIntake: _mockManualAddWaterIntake,
            manualDecraseWaterIntake: _mockManualDecreaseWaterIntake,
          );
        },
        act: (CurrentWaterIntakeBloc bloc) => bloc.add(
          const CurrentWaterIntakeEvent.updated(
            updatedValue: testUpdatedHyrdateValue,
            waterMaximumHeight: testWaterMaximumHeight,
          ),
        ),
        expect: [CurrentWaterIntakeState.updated(testHydrateStatus)],
      );
    },
  );

  group(
    'CurrentWaterIntakeState started -',
    () {
      blocTest(
        'should emit CurrentWaterIntakeState.error when getCurrentHydrateStatus returns a failure',
        build: () {
          when(_mockGetCurrentHydrateStatus(NoParams())).thenAnswer((_) =>
              Future.value(const Left(GeneralFailure(genericErrorMessage))));

          return CurrentWaterIntakeBloc(
            calculateWavesPercentage: _mockCalculateWavesPercentage,
            getCurrentHydrateStatus: _mockGetCurrentHydrateStatus,
            manualAddWaterIntake: _mockManualAddWaterIntake,
            manualDecraseWaterIntake: _mockManualDecreaseWaterIntake,
          );
        },
        act: (CurrentWaterIntakeBloc bloc) => bloc.add(
          const CurrentWaterIntakeEvent.started(),
        ),
        expect: [const CurrentWaterIntakeState.error(genericErrorMessage)],
      );

      blocTest(
        'should emit CurrentWaterIntakeState.initial when getCurrentHydrateStatus returns a success',
        build: () {
          when(_mockGetCurrentHydrateStatus(NoParams()))
              .thenAnswer((_) => Future.value(Right(testHydrateStatus)));

          return CurrentWaterIntakeBloc(
            calculateWavesPercentage: _mockCalculateWavesPercentage,
            getCurrentHydrateStatus: _mockGetCurrentHydrateStatus,
            manualAddWaterIntake: _mockManualAddWaterIntake,
            manualDecraseWaterIntake: _mockManualDecreaseWaterIntake,
          );
        },
        act: (CurrentWaterIntakeBloc bloc) => bloc.add(
          const CurrentWaterIntakeEvent.started(),
        ),
        expect: [CurrentWaterIntakeState.initial(testHydrateStatus)],
      );
    },
  );

  group(
    'CurrentWaterIntakeState manualIncrease -',
    () {
      const testWaterToAdd = '250';

      blocTest(
        'should emit CurrentWaterIntakeState.error when manualAddWaterIntake returns a failure',
        build: () {
          when(_mockManualAddWaterIntake(testWaterToAdd)).thenAnswer((_) =>
              Future.value(const Left(GeneralFailure(genericErrorMessage))));

          return CurrentWaterIntakeBloc(
            calculateWavesPercentage: _mockCalculateWavesPercentage,
            getCurrentHydrateStatus: _mockGetCurrentHydrateStatus,
            manualAddWaterIntake: _mockManualAddWaterIntake,
            manualDecraseWaterIntake: _mockManualDecreaseWaterIntake,
          );
        },
        act: (CurrentWaterIntakeBloc bloc) => bloc.add(
          const CurrentWaterIntakeEvent.manualIncrease(
            waterToAdd: testWaterToAdd,
          ),
        ),
        expect: [const CurrentWaterIntakeState.error(genericErrorMessage)],
      );

      blocTest(
        'should emit CurrentWaterIntakeState.updated when manualAddWaterIntake returns a success',
        build: () {
          when(_mockManualAddWaterIntake(testWaterToAdd))
              .thenAnswer((_) => Future.value(Right(testHydrateStatus)));

          return CurrentWaterIntakeBloc(
            calculateWavesPercentage: _mockCalculateWavesPercentage,
            getCurrentHydrateStatus: _mockGetCurrentHydrateStatus,
            manualAddWaterIntake: _mockManualAddWaterIntake,
            manualDecraseWaterIntake: _mockManualDecreaseWaterIntake,
          );
        },
        act: (CurrentWaterIntakeBloc bloc) => bloc.add(
          const CurrentWaterIntakeEvent.manualIncrease(
            waterToAdd: testWaterToAdd,
          ),
        ),
        expect: [CurrentWaterIntakeState.updated(testHydrateStatus)],
      );
    },
  );

  group(
    'CurrentWaterIntakeState manualIncrease -',
    () {
      const testWaterToDecrease = '250';

      blocTest(
        'should emit CurrentWaterIntakeState.error when manualDecraseWaterIntake returns a failure',
        build: () {
          when(_mockManualDecreaseWaterIntake(testWaterToDecrease)).thenAnswer(
              (_) => Future.value(
                  const Left(GeneralFailure(genericErrorMessage))));

          return CurrentWaterIntakeBloc(
            calculateWavesPercentage: _mockCalculateWavesPercentage,
            getCurrentHydrateStatus: _mockGetCurrentHydrateStatus,
            manualAddWaterIntake: _mockManualAddWaterIntake,
            manualDecraseWaterIntake: _mockManualDecreaseWaterIntake,
          );
        },
        act: (CurrentWaterIntakeBloc bloc) => bloc.add(
          const CurrentWaterIntakeEvent.manualDecrease(
            waterToSubtract: testWaterToDecrease,
          ),
        ),
        expect: [const CurrentWaterIntakeState.error(genericErrorMessage)],
      );

      blocTest(
        'should emit CurrentWaterIntakeState.updated when manualDecraseWaterIntake returns a sucess',
        build: () {
          when(_mockManualDecreaseWaterIntake(testWaterToDecrease))
              .thenAnswer((_) => Future.value(Right(testHydrateStatus)));

          return CurrentWaterIntakeBloc(
            calculateWavesPercentage: _mockCalculateWavesPercentage,
            getCurrentHydrateStatus: _mockGetCurrentHydrateStatus,
            manualAddWaterIntake: _mockManualAddWaterIntake,
            manualDecraseWaterIntake: _mockManualDecreaseWaterIntake,
          );
        },
        act: (CurrentWaterIntakeBloc bloc) => bloc.add(
          const CurrentWaterIntakeEvent.manualDecrease(
            waterToSubtract: testWaterToDecrease,
          ),
        ),
        expect: [CurrentWaterIntakeState.updated(testHydrateStatus)],
      );
    },
  );
}
