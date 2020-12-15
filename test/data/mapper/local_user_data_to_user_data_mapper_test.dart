import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/mapper/local_user_data_to_user_data_mapper.dart';
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

class MockLocalGenderMapper extends Mock
    implements Mapper<Gender, LocalGender> {}

class MockLocalActivityMapper extends Mock
    implements Mapper<ActivityLevel, LocalActivityLevel> {}

class MockLocalWeightTypeMapper extends Mock
    implements Mapper<WeightType, LocalWeightType> {}

void main() {
  MockLocalGenderMapper _mockGenderMapper;
  MockLocalActivityMapper _mockActivityMapper;
  MockLocalWeightTypeMapper _mockWeightTypeMapper;

  Mapper<UserData, LocalUserData> sut;
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
      _mockGenderMapper = MockLocalGenderMapper();
      _mockActivityMapper = MockLocalActivityMapper();
      _mockWeightTypeMapper = MockLocalWeightTypeMapper();

      sut = LocalUserDataToUserDataMapper(
        activityLevelMapper: _mockActivityMapper,
        genderMapper: _mockGenderMapper,
        weightTypeMapper: _mockWeightTypeMapper,
      );
    },
  );

  test(
    'map should return a valid UserData instance',
    () async {
      when(_mockWeightTypeMapper.map(testLocalWeightType))
          .thenAnswer((_) => Future.value(testWeightType));
      when(_mockActivityMapper.map(testLocalActivityLevel))
          .thenAnswer((_) => Future.value(testActivityLevel));
      when(_mockGenderMapper.map(testLocalGender))
          .thenAnswer((_) => Future.value(testGender));

      final testLocalUserData = LocalUserData(
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

      final actualResult = await sut.map(testLocalUserData);
      final expectedResult = UserData(
        activityLevel: testActivityLevel,
        currentWeight: testCurrentWeight,
        gender: testGender,
        weightType: testWeightType,
        sleepTime: TimeOfDay(
          hour: testSleepTime.hour,
          minute: testSleepTime.minute,
        ),
        wakeUpTime: TimeOfDay(
          hour: testWakeUpTime.hour,
          minute: testWakeUpTime.minute,
        ),
      );

      expect(actualResult, expectedResult);
    },
  );
}
