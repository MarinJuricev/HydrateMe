import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:HydrateMe/domain/usecases/calculate_daily_water_intake.dart';
import 'package:HydrateMe/domain/usecases/should_skip_calculationh.dart';
import 'package:HydrateMe/presentation/features/calculate_water_intake/bloc/calculate_water_intake_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockCalculateDailyWaterIntake extends Mock
    implements CalculateDailyWaterIntake {}

class MockShouldSkipCalculation extends Mock implements ShouldSkipCalculation {}

void main() {
  MockCalculateDailyWaterIntake _mockCalculateDailyWaterIntake;
  MockShouldSkipCalculation _mockShouldSkipCalculation;

  const testGender = Gender.male;
  const testWeightType = WeightType.kg;
  const testActivityLevel = ActivityLevel.active;
  const testCurrentWeight = 75;
  final testWakeUpTime = TimeOfDay.now();
  final testSleepTime = TimeOfDay.now();
  final testDate = DateTime.now();
  final testHydrateStatus = HydrateStatus(
    currentIntake: 2500,
    dailyIntakeGoal: 2500,
    date: testDate,
    formattedCurrentIntake: '2500/2500',
    hydrationPercentage: 1.0,
  );

  setUp(() {
    _mockCalculateDailyWaterIntake = MockCalculateDailyWaterIntake();
    _mockShouldSkipCalculation = MockShouldSkipCalculation();
  });

  group(
    'calculateWtareIntakeEvent calculateClicked -',
    () {
      blocTest(
        'should emit CalculateWaterIntakeState.error when calculateDailyWaterIntake returns a failure',
        build: () {
          final useCaseParams = CalculateDailyWaterIntakeParams(
            currentSelectedGender: testGender,
            currentSelectedWeightType: testWeightType,
            currentWeight: testCurrentWeight,
            currentActivityInMinutes: testActivityLevel,
            wakeUpTime: testWakeUpTime,
            sleepTime: testSleepTime,
          );

          when(_mockCalculateDailyWaterIntake(useCaseParams)).thenAnswer((_) =>
              Future.value(const Left(GeneralFailure(genericErrorMessage))));

          return CalculateWaterIntakeBloc(
            calculateDailyWaterIntake: _mockCalculateDailyWaterIntake,
            shouldSkipCalculation: _mockShouldSkipCalculation,
          );
        },
        act: (CalculateWaterIntakeBloc bloc) => bloc.add(
          CalculateWaterIntakeEvent.calculateClicked(
            testGender,
            testWeightType,
            testActivityLevel,
            testCurrentWeight,
            testWakeUpTime,
            testSleepTime,
          ),
        ),
        expect: [CalculateWaterIntakeState.error(genericErrorMessage)],
      );

      blocTest(
        'should emit CalculateWaterIntakeState.calculationFinished when calculateDailyWaterIntake returns a success',
        build: () {
          final useCaseParams = CalculateDailyWaterIntakeParams(
            currentSelectedGender: testGender,
            currentSelectedWeightType: testWeightType,
            currentWeight: testCurrentWeight,
            currentActivityInMinutes: testActivityLevel,
            wakeUpTime: testWakeUpTime,
            sleepTime: testSleepTime,
          );

          when(_mockCalculateDailyWaterIntake(useCaseParams))
              .thenAnswer((_) => Future.value(Right(testHydrateStatus)));

          return CalculateWaterIntakeBloc(
            calculateDailyWaterIntake: _mockCalculateDailyWaterIntake,
            shouldSkipCalculation: _mockShouldSkipCalculation,
          );
        },
        act: (CalculateWaterIntakeBloc bloc) => bloc.add(
          CalculateWaterIntakeEvent.calculateClicked(
            testGender,
            testWeightType,
            testActivityLevel,
            testCurrentWeight,
            testWakeUpTime,
            testSleepTime,
          ),
        ),
        expect: [CalculateWaterIntakeState.calculationFinished()],
      );
    },
  );

  group(
    'calculateWtareIntakeEvent shouldSkipCalculation -',
    () {
      blocTest(
        'should emit CalculateWaterIntakeState.startCalculation when shouldSkipCalculation returns a failure',
        build: () {
          when(_mockShouldSkipCalculation(NoParams())).thenAnswer((_) =>
              Future.value(const Left(GeneralFailure(genericErrorMessage))));

          return CalculateWaterIntakeBloc(
            calculateDailyWaterIntake: _mockCalculateDailyWaterIntake,
            shouldSkipCalculation: _mockShouldSkipCalculation,
          );
        },
        act: (CalculateWaterIntakeBloc bloc) => bloc.add(
          const CalculateWaterIntakeEvent.shouldSkipCalculation(),
        ),
        expect: [CalculateWaterIntakeState.startCalculation()],
      );

      blocTest(
        'should emit CalculateWaterIntakeState.skipCalculation when shouldSkipCalculation returns a success',
        build: () {
          when(_mockShouldSkipCalculation(NoParams()))
              .thenAnswer((_) => Future.value(const Right(null)));

          return CalculateWaterIntakeBloc(
            calculateDailyWaterIntake: _mockCalculateDailyWaterIntake,
            shouldSkipCalculation: _mockShouldSkipCalculation,
          );
        },
        act: (CalculateWaterIntakeBloc bloc) => bloc.add(
          const CalculateWaterIntakeEvent.shouldSkipCalculation(),
        ),
        expect: [CalculateWaterIntakeState.skipCalculation()],
      );
    },
  );
}
