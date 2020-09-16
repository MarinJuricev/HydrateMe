import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
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
    'should return Left(NegativeNumberFailure()) when a negative number is provided',
    () async {
      final actualResult = await _calculateAdditionalWaterIntakePerActivity(-1);
      final expectedResult =
          Left(NegativeNumberFailure(CANT_PROVIDE_NEGATIVE_NUMBER));

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return [Right(40)], when 100 activity is provided',
    () async {
      final actualResult =
          await _calculateAdditionalWaterIntakePerActivity(100);
      final expectedResult = Right(40);

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return [Right(40)], when 25 activity is provided',
    () async {
      final actualResult = await _calculateAdditionalWaterIntakePerActivity(25);
      final expectedResult = Right(10);

      expect(actualResult, expectedResult);
    },
  );
}
