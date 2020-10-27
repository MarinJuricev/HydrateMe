import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/mapper/local_activity_level_to_activity_level_mapper.dart';
import 'package:HydrateMe/data/model/local_activity_level.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart';

void main() {
  Mapper<ActivityLevel, LocalActivityLevel> sut;

  setUp(
    () {
      sut = LocalActivityLevelToActivityLevelMapper();
    },
  );

  test(
    'should return Future(ActivityLevel.low) when LocalActivityLevel.low is provided',
    () async {
      final actualResult = await sut.map(LocalActivityLevel.low);
      final expectedResult = ActivityLevel.low;

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return Future(ActivityLevel.active) when LocalActivityLevel.active is provided',
    () async {
      final actualResult = await sut.map(LocalActivityLevel.active);
      final expectedResult = ActivityLevel.active;

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return Future(ActivityLevel.veryActive) when LocalActivityLevel.veryActive is provided',
    () async {
      final actualResult = await sut.map(LocalActivityLevel.veryActive);
      final expectedResult = ActivityLevel.veryActive;

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should throw a exception when a non mapped LocalActivityLevel is provided',
    () async {
      expect(() => sut.map(null), throwsA(const TypeMatcher<Exception>()));
    },
  );
}
