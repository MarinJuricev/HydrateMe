import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/usecases/calculate_waves_percentage.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  CalculateWavesPercentage calculateWavesPercentage;

  setUp(
    () {
      calculateWavesPercentage = CalculateWavesPercentage();
    },
  );

  test(
    'should return valid hydrate status with hydrationPercentage 0.70 and percentage 70% when 70 and 100 are provided',
    () async {
      final actualResult = await calculateWavesPercentage(
        CalculateWavesPercentageParams(
          updatedValue: 70,
          waterMaximumHeight: 100,
        ),
      );

      final expectedValue = Right(
        HydrateStatus(
          hydrationPercentage: 0.7,
          percentage: '70.0%',
        ),
      );

      expect(actualResult, expectedValue);
    },
  );

  test(
    'should return hydrate status with hydrationPercentage 1.0 and percentage 100% when 110 and 100 are provided',
    () async {
      final actualResult = await calculateWavesPercentage(
        CalculateWavesPercentageParams(
          updatedValue: 110,
          waterMaximumHeight: 100,
        ),
      );

      final expectedValue = Right(
        HydrateStatus(
          hydrationPercentage: 1.0,
          percentage: '100.0%',
        ),
      );

      expect(actualResult, expectedValue);
    },
  );

  test(
    'should return hydrate status with hydrationPercentage 0.0 and percentage 0% when -10 and 100 are provided',
    () async {
      final actualResult = await calculateWavesPercentage(
        CalculateWavesPercentageParams(
          updatedValue: -10,
          waterMaximumHeight: 100,
        ),
      );

      final expectedValue = Right(
        HydrateStatus(
          hydrationPercentage: 0.0,
          percentage: '0.0%',
        ),
      );

      expect(actualResult, expectedValue);
    },
  );
}
