import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/data_source/time_provider.dart';
import 'package:HydrateMe/data/mapper/user_data_to_local_user_data_mapper.dart';
import 'package:HydrateMe/data/model/local_activity_level.dart';
import 'package:HydrateMe/data/model/local_gender.dart';
import 'package:HydrateMe/data/model/local_user_data.dart';
import 'package:HydrateMe/data/model/local_weight_type.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockTimeProvider extends Mock implements TimeProvider {}

class MockGenderMapper extends Mock implements Mapper<LocalGender, Gender> {}

class MockActivityMapper extends Mock
    implements Mapper<LocalActivityLevel, ActivityLevel> {}

class MockWeightTypeMapper extends Mock
    implements Mapper<LocalWeightType, WeightType> {}

void main() {
  MockGenderMapper _mockGenderMapper;
  MockActivityMapper _mockActivityMapper;
  MockWeightTypeMapper _mockWeightTypeMapper;
  MockTimeProvider _mockTimeProvider;

  Mapper<LocalUserData, UserData> sut;
  const testCurrentWeight = 75;
  final testDateTime = DateTime.now();
  const testSleepTime = TimeOfDay(hour: 23, minute: 0);
  const testWakeUpTime = TimeOfDay(hour: 7, minute: 0);
  const testGender = Gender.male;
  const testWeightType = WeightType.kg;
  const testActivityLevel = ActivityLevel.active;
  const testLocalGender = LocalGender.male;
  const testLocalWeightType = LocalWeightType.kg;
  const testLocalActivityLevel = LocalActivityLevel.active;

  setUp(
    () {
      _mockGenderMapper = MockGenderMapper();
      _mockActivityMapper = MockActivityMapper();
      _mockWeightTypeMapper = MockWeightTypeMapper();
      _mockTimeProvider = MockTimeProvider();

      sut = UserDataToLocalUserDataMapper(
        timeProvider: _mockTimeProvider,
        activityLevelMapper: _mockActivityMapper,
        genderMapper: _mockGenderMapper,
        weightTypeMapper: _mockWeightTypeMapper,
      );
    },
  );

  test(
    'map should return a valid LocalUserData instance',
    () async {
      when(_mockTimeProvider.getCurrentDate()).thenReturn(testDateTime);
      when(_mockWeightTypeMapper.map(testWeightType))
          .thenAnswer((_) => Future.value(testLocalWeightType));
      when(_mockActivityMapper.map(testActivityLevel))
          .thenAnswer((_) => Future.value(testLocalActivityLevel));
      when(_mockGenderMapper.map(testGender))
          .thenAnswer((_) => Future.value(testLocalGender));

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
        wakeUpTime: DateTime(
          testDateTime.year,
          testDateTime.month,
          testDateTime.day,
          testWakeUpTime.hour,
          testWakeUpTime.minute,
        ),
        sleepTime: DateTime(
          testDateTime.year,
          testDateTime.month,
          testDateTime.day,
          testSleepTime.hour,
          testSleepTime.minute,
        ),
        currentWeight: testCurrentWeight,
        gender: testLocalGender,
        weightType: testLocalWeightType,
        activityLevel: testLocalActivityLevel,
      );

      expect(actualResult, expectedResult);
    },
  );
}
