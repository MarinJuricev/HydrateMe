import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/repository/water_intake_repository.dart';
import 'package:HydrateMe/domain/usecases/calculate_waves_percentage.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockWaterIntakeRepository extends Mock implements WaterIntakeRepository {}

void main() {
  MockWaterIntakeRepository _mockWaterIntakeRepository;
  CalculateWavesPercentage _calculateWavesPercentage;
  
  final testDate = DateTime.now();

  setUp(
    () {
      _mockWaterIntakeRepository = MockWaterIntakeRepository();

      _calculateWavesPercentage = CalculateWavesPercentage(
        waterIntakeRepository: _mockWaterIntakeRepository,
      );
    },
  );

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

      when(_mockWaterIntakeRepository.getCurrentWaterIntake())
          .thenAnswer((_) async => testRepositoryResponse);

      final actualResult = await _calculateWavesPercentage(
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

      final actualResult = await _calculateWavesPercentage(
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
    'should return <Left(NonExistentDailyIntake)> when null is returned from the repo',
    () async {
      when(_mockWaterIntakeRepository.getCurrentWaterIntake())
          .thenAnswer((_) async => null);

      final actualResult = await _calculateWavesPercentage(
        CalculateWavesPercentageParams(
          updatedValue: -10,
          waterMaximumHeight: 100,
        ),
      );

      final expectedValue =
          Left(NonExistentDailyIntake(DAILY_WATER_INTAKE_MUST_BE_DEFINED));

      expect(actualResult, expectedValue);
    },
  );
}
