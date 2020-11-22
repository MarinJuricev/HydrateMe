import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:HydrateMe/domain/usecases/get_settings_data.dart';
import 'package:HydrateMe/domain/usecases/get_user_data.dart';
import 'package:HydrateMe/presentation/features/settings/model/ui_user_data.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGetUserData extends Mock implements GetUserData {}

class MockUserDataToUiUserDataMapper extends Mock
    implements Mapper<UiUserData, UserData> {}

void main() {
  final testUserData = UserData(
    wakeUpTime: TimeOfDay.now(),
    sleepTime: TimeOfDay.now(),
    currentWeight: 75,
    gender: Gender.male,
    weightType: WeightType.kg,
    activityLevel: ActivityLevel.active,
  );

  final testUiUserData = UiUserData(
    wakeUpTime: TimeOfDay.now(),
    sleepTime: TimeOfDay.now(),
    currentWeight: 75,
    gender: 'Male',
    weightType: 'Kg',
    activityLevel: 'Active',
  );

  NoParams _noParams;
  MockGetUserData _mockGetUserData;
  MockUserDataToUiUserDataMapper _mockUserDataToUiUserDataMapper;
  GetSettingsData sut;

  setUp(
    () {
      _noParams = NoParams();
      _mockGetUserData = MockGetUserData();
      _mockUserDataToUiUserDataMapper = MockUserDataToUiUserDataMapper();

      sut = GetSettingsData(
        getUserData: _mockGetUserData,
        userDataToUiUserDataMapper: _mockUserDataToUiUserDataMapper,
      );
    },
  );

  test(
    'should return the getUser result when it returns a failure',
    () async {
      when(_mockGetUserData(_noParams)).thenAnswer(
          (_) => Future.value(Left(CacheFailure(GENERAL_ERROR_MESSAGE))));

      final actualResult = await sut(_noParams);
      final expectedResult = Left(CacheFailure(GENERAL_ERROR_MESSAGE));

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return the [Future.RightUiUserData] when getUserData returns a success',
    () async {
      when(_mockGetUserData(_noParams))
          .thenAnswer((_) => Future.value(Right(testUserData)));
      when(_mockUserDataToUiUserDataMapper.map(testUserData))
          .thenAnswer((_) => Future.value(testUiUserData));

      final actualResult = await sut(_noParams);
      final expectedResult = Right(testUiUserData);

      expect(actualResult, expectedResult);
    },
  );
}
