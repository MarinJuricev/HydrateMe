import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/data_source/time_provider.dart';
import 'package:HydrateMe/data/mapper/user_data_to_local_user_data_mapper.dart';
import 'package:HydrateMe/data/model/local_user_data.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockTimeProvider extends Mock implements TimeProvider {}

void main() {
  MockTimeProvider _mockTimeProvider;

  Mapper<LocalUserData, UserData> sut;
  final testActivityLevel = ActivityLevel.active;
  final testCurrentWeight = 75;
  final testGender = Gender.male;
  final testSleepTime = TimeOfDay(hour: 23, minute: 0);
  final testWakeUpTime = TimeOfDay(hour: 7, minute: 0);
  final testWeightType = WeightType.kg;
  final testDateTime = DateTime.now();

  setUp(
    () {
      _mockTimeProvider = MockTimeProvider();

      sut = UserDataToLocalUserDataMapper(
        timeProvider: _mockTimeProvider,
      );
    },
  );

  test(
    'map should return a valid LocalUserData instance',
    () async {
      when(_mockTimeProvider.getCurrentDate()).thenReturn(testDateTime);

      final testUserData = UserData(
        activityLevel: testActivityLevel,
        currentWeight: testCurrentWeight,
        gender: testGender,
        sleepTime: testSleepTime,
        wakeUpTime: testWakeUpTime,
        weightType: testWeightType,
      );

      // final actualResult = await sut.map(testUserData);
      // final expectedResult = LocalUserData(
      //   wakeUpTime: DateTime(
      //     testDateTime.year,
      //     testDateTime.month,
      //     testDateTime.day,
      //     testWakeUpTime.hour,
      //     testWakeUpTime.minute,
      //   ),
      //   sleepTime: DateTime(
      //     testDateTime.year,
      //     testDateTime.month,
      //     testDateTime.day,
      //     testSleepTime.hour,
      //     testSleepTime.minute,
      //   ),
      //   currentWeight: testCurrentWeight,
      //   gender: testGender,
      //   weightType: testWeightType,
      //   activityLevel: testActivityLevel,
      // );

      // expect(actualResult, null);
    },
  );
}
