import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/mapper/activity_level_to_local_activity_level_mapper.dart';
import 'package:HydrateMe/data/model/local_activity_level.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart';

void main() {
  Mapper<LocalActivityLevel, ActivityLevel> sut;

  setUp(
    () {
      sut = ActivityLevelToLocalActivityLevelMapper();
    },
  );

  test(
    'should return Future(LocalActivityLevel.low) when ActivityLevel.low is provided',
    () async {
      final actualResult = await sut.map(ActivityLevel.low);
      const expectedResult = LocalActivityLevel.low;

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return Future(LocalActivityLevel.active) when ActivityLevel.active is provided',
    () async {
      final actualResult = await sut.map(ActivityLevel.active);
      const expectedResult = LocalActivityLevel.active;

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return Future(LocalActivityLevel.veryActive) when ActivityLevel.veryActive is provided',
    () async {
      final actualResult = await sut.map(ActivityLevel.veryActive);
      const expectedResult = LocalActivityLevel.veryActive;

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should throw a exception when a non mapped ActivityLevel is provided',
    () async {
      expect(() => sut.map(null), throwsA(const TypeMatcher<Exception>()));
    },
  );
}
