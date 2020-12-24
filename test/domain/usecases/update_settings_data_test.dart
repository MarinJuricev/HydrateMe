import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:HydrateMe/domain/model/settings_item.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:HydrateMe/domain/usecases/get_settings_data.dart';
import 'package:HydrateMe/domain/usecases/get_user_data.dart';
import 'package:HydrateMe/domain/usecases/save_user_data.dart';
import 'package:HydrateMe/domain/usecases/update_settings_data.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGetUserData extends Mock implements GetUserData {}

class MockGetSettingsData extends Mock implements GetSettingsData {}

class MockSaveUserData extends Mock implements SaveUserData {}

void main() {
  MockGetUserData _mockGetUserData;
  MockGetSettingsData _mockGetSettingsData;
  MockSaveUserData _mockSaveUserData;
  UpdateSettingsData sut;
  final testUserData = UserData(
    wakeUpTime: TimeOfDay.now(),
    sleepTime: TimeOfDay.now(),
    currentWeight: 75,
    gender: Gender.male,
    weightType: WeightType.kg,
    activityLevel: ActivityLevel.active,
  );

  setUp(
    () {
      _mockGetUserData = MockGetUserData();
      _mockGetSettingsData = MockGetSettingsData();
      _mockSaveUserData = MockSaveUserData();

      sut = UpdateSettingsData(
        getUserData: _mockGetUserData,
        getSettingsData: _mockGetSettingsData,
        saveUserData: _mockSaveUserData,
      );
    },
  );

  test(
    'should return failure when GetUserData returns a Left<Failure>',
    () async {
      when(_mockGetUserData(NoParams())).thenAnswer(
          (_) => Future.value(const Left(GeneralFailure(genericErrorMessage))));

      const testSettingsItem =
          SettingsItem.updateGender(updatedGender: Gender.male);

      final actualResult = await sut(testSettingsItem);

      expect(actualResult, const Left(GeneralFailure(genericErrorMessage)));
    },
  );

  test(
    'should trigger SaveUserData with updated wakeUpTime when the provided settingsItem is updateWakeUpTime',
    () async {
      when(_mockGetUserData(NoParams()))
          .thenAnswer((_) => Future.value(Right(testUserData)));

      const updatedWakeUpTime = TimeOfDay(hour: 22, minute: 0);
      const testSettingsItem =
          SettingsItem.updateWakeUpTime(newWakeUpTime: updatedWakeUpTime);

      await sut(testSettingsItem);

      verify(
        _mockSaveUserData(
          SaveUserDataParams(
            wakeUpTime: updatedWakeUpTime,
            sleepTime: testUserData.sleepTime,
            currentWeight: testUserData.currentWeight,
            gender: testUserData.gender,
            weightType: testUserData.weightType,
            activityLevel: testUserData.activityLevel,
          ),
        ),
      );
    },
  );

  test(
    'should trigger SaveUserData with updated sleepTime when the provided settingsItem is updateSleepTime',
    () async {
      when(_mockGetUserData(NoParams()))
          .thenAnswer((_) => Future.value(Right(testUserData)));

      const updatedSleepTime = TimeOfDay(hour: 23, minute: 0);
      const testSettingsItem =
          SettingsItem.updateSleepTime(newSleepTime: updatedSleepTime);

      await sut(testSettingsItem);

      verify(
        _mockSaveUserData(
          SaveUserDataParams(
            wakeUpTime: testUserData.wakeUpTime,
            sleepTime: updatedSleepTime,
            currentWeight: testUserData.currentWeight,
            gender: testUserData.gender,
            weightType: testUserData.weightType,
            activityLevel: testUserData.activityLevel,
          ),
        ),
      );
    },
  );

  test(
    'should trigger SaveUserData with updated currentWeight when the provided settingsItem is updateCurrentWeight',
    () async {
      when(_mockGetUserData(NoParams()))
          .thenAnswer((_) => Future.value(Right(testUserData)));

      const updatedCurrentWeight = 90;
      const testSettingsItem =
          SettingsItem.updateCurrentWeight(updatedWeight: updatedCurrentWeight);

      await sut(testSettingsItem);

      verify(
        _mockSaveUserData(
          SaveUserDataParams(
            wakeUpTime: testUserData.wakeUpTime,
            sleepTime: testUserData.sleepTime,
            currentWeight: updatedCurrentWeight,
            gender: testUserData.gender,
            weightType: testUserData.weightType,
            activityLevel: testUserData.activityLevel,
          ),
        ),
      );
    },
  );

  test(
    'should trigger SaveUserData with updated gender when the provided settingsItem is updateGender',
    () async {
      when(_mockGetUserData(NoParams()))
          .thenAnswer((_) => Future.value(Right(testUserData)));

      const updatedGender = Gender.female;
      const testSettingsItem =
          SettingsItem.updateGender(updatedGender: updatedGender);

      await sut(testSettingsItem);

      verify(
        _mockSaveUserData(
          SaveUserDataParams(
            wakeUpTime: testUserData.wakeUpTime,
            sleepTime: testUserData.sleepTime,
            currentWeight: testUserData.currentWeight,
            gender: updatedGender,
            weightType: testUserData.weightType,
            activityLevel: testUserData.activityLevel,
          ),
        ),
      );
    },
  );

  test(
    'should trigger SaveUserData with updated weightType when the provided settingsItem is updateWeightType',
    () async {
      when(_mockGetUserData(NoParams()))
          .thenAnswer((_) => Future.value(Right(testUserData)));

      const updatedWeightType = WeightType.lbs;
      const testSettingsItem =
          SettingsItem.updateWeightType(updatedWeightType: updatedWeightType);

      await sut(testSettingsItem);

      verify(
        _mockSaveUserData(
          SaveUserDataParams(
            wakeUpTime: testUserData.wakeUpTime,
            sleepTime: testUserData.sleepTime,
            currentWeight: testUserData.currentWeight,
            gender: testUserData.gender,
            weightType: updatedWeightType,
            activityLevel: testUserData.activityLevel,
          ),
        ),
      );
    },
  );

  test(
    'should trigger SaveUserData with updated activityLevel when the provided settingsItem is updateActivityLevel',
    () async {
      when(_mockGetUserData(NoParams()))
          .thenAnswer((_) => Future.value(Right(testUserData)));

      const updatedActivityLevel = ActivityLevel.veryActive;
      const testSettingsItem = SettingsItem.updateActivityLevel(
          updatedActivityLevel: updatedActivityLevel);

      await sut(testSettingsItem);

      verify(
        _mockSaveUserData(
          SaveUserDataParams(
            wakeUpTime: testUserData.wakeUpTime,
            sleepTime: testUserData.sleepTime,
            currentWeight: testUserData.currentWeight,
            gender: testUserData.gender,
            weightType: testUserData.weightType,
            activityLevel: updatedActivityLevel,
          ),
        ),
      );
    },
  );
}
