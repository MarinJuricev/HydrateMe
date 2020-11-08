import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/mapper/hydrate_status_to_local_hydrate_status_mapper.dart';
import 'package:HydrateMe/data/model/local_hydrate_status.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Mapper<LocalHydrateStatus, HydrateStatus> sut;

  setUp(
    () {
      sut = HydrateStatusToLocalHydrateStatusMapper();
    },
  );

  test(
    'should return Future(LocalHydrateStatus) with the values from HydrateStatus when map is called',
    () async {
      final testHydrateStatus = HydrateStatus(
        hydrationPercentage: 1.0,
        formattedCurrentIntake: '2500',
        dailyIntakeGoal: 2500,
        currentIntake: 2500,
        date: DateTime.now(),
      );

      final actualResult = await sut.map(testHydrateStatus);
      final expectedResult = LocalHydrateStatus(
        hydrationPercentage: testHydrateStatus.hydrationPercentage,
        formattedCurrentIntake: testHydrateStatus.formattedCurrentIntake,
        dailyIntakeGoal: testHydrateStatus.dailyIntakeGoal,
        currentIntake: testHydrateStatus.currentIntake,
        date: testHydrateStatus.date,
      );

      expect(actualResult, expectedResult);
    },
  );
}
