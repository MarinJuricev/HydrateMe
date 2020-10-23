import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/mapper/user_data_to_local_user_data_mapper.dart';
import 'package:HydrateMe/data/model/local_user_data.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Mapper<LocalUserData, UserData> sut;
  final testActivityLevel = ActivityLevel.active;
  final testCurrentWeight = 75;
  final testGender = Gender.male;
  final testSleepTime = TimeOfDay(hour: 23, minute: 0);
  final testWakeUpTime = TimeOfDay(hour: 7, minute: 0);
  final testWeightType = WeightType.kg;

  setUp(
    () {
      sut = UserDataToLocalUserDataMapper();
    },
  );

  test(
    'map should return a valid LocalUserData instance',
    () async {
      final testUserData = UserData(
        activityLevel: testActivityLevel,
        currentWeight: testCurrentWeight,
        gender: testGender,
        sleepTime: testSleepTime,
        wakeUpTime: testWakeUpTime,
        weightType: testWeightType,
      );

      final actualResult = await sut.map(testUserData);
      final expectedResult = LocalUserData(
        wakeUpTime: testWakeUpTime,
        sleepTime: testSleepTime,
        currentWeight: testCurrentWeight,
        gender: testGender,
        weightType: testWeightType,
        activityLevel: testActivityLevel,
      );

      expect(actualResult, expectedResult);
    },
  );
}
