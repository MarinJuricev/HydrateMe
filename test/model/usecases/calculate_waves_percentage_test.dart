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

      final expectedValue = Right(
        HydrateStatus(
          hydrationPercentage: 0.7,
          currentIntake: 700,
          formattedCurrentIntake: '700/1000',
          dailyIntakeGoal: 1000,
        ),
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

      final expectedValue = Right(
        HydrateStatus(
          hydrationPercentage: 1.0,
          currentIntake: 1000,
          dailyIntakeGoal: 1000,
          formattedCurrentIntake: '1000/1000',
        ),
      );

      expect(actualResult, expectedValue);
    },
  );

  test(
    'should return <Left(NonExistentDailyIntake)> when 0 dailyIntake is returned from the repo',
    () async {
      final testHydrateStatus = HydrateStatus(
        hydrationPercentage: 0,
        formattedCurrentIntake: '0/0',
        dailyIntakeGoal: 0,
        currentIntake: 0,
      );

      final Either<Failure, HydrateStatus> testRepositoryResponse =
          Right(testHydrateStatus);

      when(_mockWaterIntakeRepository.getCurrentWaterIntake())
          .thenAnswer((_) async => testRepositoryResponse);

      final actualResult = await _calculateWavesPercentage(
        CalculateWavesPercentageParams(
          updatedValue: -10,
          waterMaximumHeight: 100,
        ),
      );

      final expectedValue = Left(NonExistentDailyIntake(DAILY_WATER_INTAKE_MUST_BE_DEFINED));

      expect(actualResult, expectedValue);
    },
  );
}
