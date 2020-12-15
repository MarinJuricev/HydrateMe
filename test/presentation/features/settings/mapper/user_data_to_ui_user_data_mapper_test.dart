import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:HydrateMe/presentation/features/settings/mapper/user_data_to_ui_user_data_mapper.dart';
import 'package:HydrateMe/presentation/features/settings/model/ui_user_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Mapper<UiUserData, UserData> sut;

  final testWakeUpTime = TimeOfDay.now();
  final testSleepTime = TimeOfDay.now();

  setUp(
    () {
      sut = UserDataToUiUserDataMapper();
    },
  );

  test(
    'should return provided wakeUpTime from the origin',
    () async {
      final testUserData = UserData(
        wakeUpTime: testWakeUpTime,
        sleepTime: testSleepTime,
        currentWeight: 75,
        gender: Gender.male,
        weightType: WeightType.kg,
        activityLevel: ActivityLevel.active,
      );

      final actualResult = await sut.map(testUserData);
      final expectedResult = testWakeUpTime;

      expect(actualResult.wakeUpTime, expectedResult);
    },
  );

  test(
    'should return provided sleepTime from the origin',
    () async {
      final testUserData = UserData(
        wakeUpTime: testWakeUpTime,
        sleepTime: testSleepTime,
        currentWeight: 75,
        gender: Gender.male,
        weightType: WeightType.kg,
        activityLevel: ActivityLevel.active,
      );

      final actualResult = await sut.map(testUserData);
      final expectedResult = testSleepTime;

      expect(actualResult.sleepTime, expectedResult);
    },
  );

  test(
    'should return provided currentWeight from the origin',
    () async {
      final testUserData = UserData(
        wakeUpTime: testWakeUpTime,
        sleepTime: testSleepTime,
        currentWeight: 75,
        gender: Gender.male,
        weightType: WeightType.kg,
        activityLevel: ActivityLevel.active,
      );

      final actualResult = await sut.map(testUserData);
      const expectedResult = 75;

      expect(actualResult.currentWeight, expectedResult);
    },
  );

  test(
    'should return provided currentWeight from the origin',
    () async {
      final testUserData = UserData(
        wakeUpTime: testWakeUpTime,
        sleepTime: testSleepTime,
        currentWeight: 75,
        gender: Gender.male,
        weightType: WeightType.kg,
        activityLevel: ActivityLevel.active,
      );

      final actualResult = await sut.map(testUserData);
      const expectedResult = 75;

      expect(actualResult.currentWeight, expectedResult);
    },
  );

  test(
    'should return Male when the provided Gender is Gender.male',
    () async {
      final testUserData = UserData(
        wakeUpTime: testWakeUpTime,
        sleepTime: testSleepTime,
        currentWeight: 75,
        gender: Gender.male,
        weightType: WeightType.kg,
        activityLevel: ActivityLevel.active,
      );

      final actualResult = await sut.map(testUserData);
      const expectedResult = 'Male';

      expect(actualResult.gender, expectedResult);
    },
  );

  test(
    'should return Female when the provided Gender is Gender.female',
    () async {
      final testUserData = UserData(
        wakeUpTime: testWakeUpTime,
        sleepTime: testSleepTime,
        currentWeight: 75,
        gender: Gender.female,
        weightType: WeightType.kg,
        activityLevel: ActivityLevel.active,
      );

      final actualResult = await sut.map(testUserData);
      const expectedResult = 'Female';

      expect(actualResult.gender, expectedResult);
    },
  );

  test(
    'should return Kg when the provided WeightType is WeightType.kg',
    () async {
      final testUserData = UserData(
        wakeUpTime: testWakeUpTime,
        sleepTime: testSleepTime,
        currentWeight: 75,
        gender: Gender.male,
        weightType: WeightType.kg,
        activityLevel: ActivityLevel.active,
      );

      final actualResult = await sut.map(testUserData);
      const expectedResult = 'Kg';

      expect(actualResult.weightType, expectedResult);
    },
  );

  test(
    'should return Lbs when the provided WeightType is WeightType.lbs',
    () async {
      final testUserData = UserData(
        wakeUpTime: testWakeUpTime,
        sleepTime: testSleepTime,
        currentWeight: 75,
        gender: Gender.male,
        weightType: WeightType.lbs,
        activityLevel: ActivityLevel.active,
      );

      final actualResult = await sut.map(testUserData);
      const expectedResult = 'Lbs';

      expect(actualResult.weightType, expectedResult);
    },
  );

  test(
    'should return Low when the provided ActivityLevel is ActivityLevel.low',
    () async {
      final testUserData = UserData(
        wakeUpTime: testWakeUpTime,
        sleepTime: testSleepTime,
        currentWeight: 75,
        gender: Gender.male,
        weightType: WeightType.kg,
        activityLevel: ActivityLevel.low,
      );

      final actualResult = await sut.map(testUserData);
      const expectedResult = 'Low';

      expect(actualResult.activityLevel, expectedResult);
    },
  );

  test(
    'should return Active when the provided ActivityLevel is ActivityLevel.Active',
    () async {
      final testUserData = UserData(
        wakeUpTime: testWakeUpTime,
        sleepTime: testSleepTime,
        currentWeight: 75,
        gender: Gender.male,
        weightType: WeightType.kg,
        activityLevel: ActivityLevel.active,
      );

      final actualResult = await sut.map(testUserData);
      const expectedResult = 'Active';

      expect(actualResult.activityLevel, expectedResult);
    },
  );

  test(
    'should return Very Active when the provided ActivityLevel is ActivityLevel.veryActive',
    () async {
      final testUserData = UserData(
          wakeUpTime: testWakeUpTime,
          sleepTime: testSleepTime,
          currentWeight: 75,
          gender: Gender.male,
          weightType: WeightType.kg,
          activityLevel: ActivityLevel.veryActive);

      final actualResult = await sut.map(testUserData);
      const expectedResult = 'Very Active';

      expect(actualResult.activityLevel, expectedResult);
    },
  );
}
