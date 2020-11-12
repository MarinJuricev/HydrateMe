import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/usecases/reset_hydrate_status.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  ResetHydrateStatus sut;

  final testDate = DateTime.now();
  final testDateOneDayAfter = testDate.add(Duration(days: 1));

  final testHydrateStatus = HydrateStatus(
    currentIntake: 2000,
    dailyIntakeGoal: 2500,
    date: testDate,
    formattedCurrentIntake: '2000/2500',
    hydrationPercentage: 1.0,
  );

  setUp(
    () {
      sut = ResetHydrateStatus();
    },
  );

  test(
    'should return a updated HydrateStatus instance from the provided params',
    () async {
      final actualResult = await sut(
        ResetHydrateStatusParams(
          hydrateStatusToReset: testHydrateStatus,
          updatedDate: testDateOneDayAfter,
        ),
      );

      final expectedResult = Right(
        HydrateStatus(
          hydrationPercentage: HydrateStatus.INITIAL_HYDRATION_PERCENTRAGE,
          formattedCurrentIntake:
              '${testHydrateStatus.dailyIntakeGoal.toString()}/${testHydrateStatus.dailyIntakeGoal.toString()}',
          dailyIntakeGoal: testHydrateStatus.dailyIntakeGoal,
          currentIntake: testHydrateStatus.dailyIntakeGoal,
          date: testDateOneDayAfter,
        ),
      );

      expect(actualResult, expectedResult);
    },
  );
}
