import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:HydrateMe/domain/repository/user_data_repository.dart';
import 'package:HydrateMe/domain/repository/water_intake_repository.dart';
import 'package:HydrateMe/domain/usecases/calculate_waves_percentage.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockWaterIntakeRepository extends Mock implements WaterIntakeRepository {}

class MockUserDataRepository extends Mock implements UserDataRepository {}

void main() {
  MockWaterIntakeRepository _mockWaterIntakeRepository;
  MockUserDataRepository _mockUserDataRepository;
  CalculateWavesPercentage sut;

  final testDate = DateTime.now();
  final testTimeOfDay = TimeOfDay.now();
  final testUserData = UserData(
    wakeUpTime: testTimeOfDay,
    sleepTime: testTimeOfDay,
    currentWeight: 75,
    gender: Gender.male,
    weightType: WeightType.kg,
    activityLevel: ActivityLevel.active,
  );

  setUp(
    () {
      _mockWaterIntakeRepository = MockWaterIntakeRepository();
      _mockUserDataRepository = MockUserDataRepository();

      sut = CalculateWavesPercentage(
        waterIntakeRepository: _mockWaterIntakeRepository,
        userDataRepository: _mockUserDataRepository,
      );
    },
  );

  void setupUserDataSuccessCase() {
    when(_mockUserDataRepository.getUserData())
        .thenAnswer((_) => Future.value(Right(testUserData)));
  }

  test(
    'should return valid hydrate status with hydrationPercentage 0.70 and percentage 70% when 70 and 100 are provided',
    () async {
      final testHydrateStatus = HydrateStatus(
        hydrationPercentage: 0,
        formattedCurrentIntake: '',
        dailyIntakeGoal: 1000,
        currentIntake: 0,
        date: testDate,
      );

      final Either<Failure, HydrateStatus> testRepositoryResponse =
          Right(testHydrateStatus);

      setupUserDataSuccessCase();
      when(_mockWaterIntakeRepository.getCurrentWaterIntake())
          .thenAnswer((_) async => testRepositoryResponse);

      final actualResult = await sut(
        CalculateWavesPercentageParams(
          updatedValue: 70,
          waterMaximumHeight: 100,
        ),
      );

      final expectedHydrateStatus = HydrateStatus(
        hydrationPercentage: 0.7,
        currentIntake: 300,
        formattedCurrentIntake: '300/1000',
        dailyIntakeGoal: 1000,
        date: testHydrateStatus.date,
      );
      final expectedValue = Right(expectedHydrateStatus);

      verify(
        _mockWaterIntakeRepository
            .saveCurrentWaterIntake(expectedHydrateStatus),
      );
      expect(actualResult, expectedValue);
    },
  );

  test(
    'should return hydrate status with hydrationPercentage 1.0 and percentage 100% when 110 and 100 are provided',
    () async {
      final testHydrateStatus = HydrateStatus(
        hydrationPercentage: 0,
        formattedCurrentIntake: '',
        dailyIntakeGoal: 1000,
        currentIntake: 0,
        date: testDate,
      );

      final Either<Failure, HydrateStatus> testRepositoryResponse =
          Right(testHydrateStatus);

      when(_mockWaterIntakeRepository.getCurrentWaterIntake())
          .thenAnswer((_) async => testRepositoryResponse);

      final actualResult = await sut(
        CalculateWavesPercentageParams(
          updatedValue: 110,
          waterMaximumHeight: 100,
        ),
      );

      final expectedHydrateStatus = HydrateStatus(
        hydrationPercentage: 1.0,
        currentIntake: 0,
        dailyIntakeGoal: 1000,
        formattedCurrentIntake: '0/1000',
        date: testDate,
      );
      final expectedValue = Right(expectedHydrateStatus);

      verify(
        _mockWaterIntakeRepository
            .saveCurrentWaterIntake(expectedHydrateStatus),
      );
      expect(actualResult, expectedValue);
    },
  );

  test(
    'should return <Left(NonExistentHydrateStatus)> when Failure is returned from the repository',
    () async {
      when(_mockWaterIntakeRepository.getCurrentWaterIntake()).thenAnswer(
          (_) async => Left(CacheFailure(ERROR_RETREIVING_LOCAL_DATA)));

      final actualResult = await sut(
        CalculateWavesPercentageParams(
          updatedValue: -10,
          waterMaximumHeight: 100,
        ),
      );

      final expectedValue =
          Left(NonExistentHydrateStatus(ERROR_RETREIVING_LOCAL_DATA));

      expect(actualResult, expectedValue);
    },
  );
}
