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

      when(_mockWaterIntakeRepository.getCurrentWaterIntake())
          .thenAnswer((_) async => testHydrateStatus);

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

      when(_mockWaterIntakeRepository.getCurrentWaterIntake())
          .thenAnswer((_) async => testHydrateStatus);

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
    'should return hydrate status with hydrationPercentage 0.0 and percentage 0% when -10 and 100 are provided',
    () async {
      final testHydrateStatus = HydrateStatus(
        hydrationPercentage: 0,
        formattedCurrentIntake: '0/0',
        dailyIntakeGoal: 0,
        currentIntake: 0,
      );

      when(_mockWaterIntakeRepository.getCurrentWaterIntake())
          .thenAnswer((_) async => testHydrateStatus);

      final actualResult = await _calculateWavesPercentage(
        CalculateWavesPercentageParams(
          updatedValue: -10,
          waterMaximumHeight: 100,
        ),
      );

      final expectedValue = Right(
        HydrateStatus(
          hydrationPercentage: 0.0,
          currentIntake: 0,
          dailyIntakeGoal: 0,
          formattedCurrentIntake: '0/0',
        ),
      );

      expect(actualResult, expectedValue);
    },
  );
}
