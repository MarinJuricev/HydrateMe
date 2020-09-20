import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/usecases/calculate_additional_water_intake_per_activity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  CalculateAdditionalWaterIntakePerActivity
      _calculateAdditionalWaterIntakePerActivity;

  setUp(
    () {
      _calculateAdditionalWaterIntakePerActivity =
          CalculateAdditionalWaterIntakePerActivity();
    },
  );

  test(
    'should return [Right(12)], when ActivityLevel.low is provided',
    () async {
      final actualResult =
          await _calculateAdditionalWaterIntakePerActivity(ActivityLevel.low);
      final expectedResult = Right(12);

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return [Right(24)], when 25 activity is provided',
    () async {
      final actualResult = await _calculateAdditionalWaterIntakePerActivity(
          ActivityLevel.active);
      final expectedResult = Right(24);

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return [Right(48)], when 25 activity is provided',
    () async {
      final actualResult = await _calculateAdditionalWaterIntakePerActivity(
          ActivityLevel.veryActive);
      final expectedResult = Right(48);

      expect(actualResult, expectedResult);
    },
  );
}
