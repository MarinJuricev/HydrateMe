import 'package:HydrateMe/core/error/exceptions.dart';
import 'package:HydrateMe/data/data_source/local_persistence_provider.dart';
import 'package:HydrateMe/data/data_source/user_data_local_data_source.dart';
import 'package:HydrateMe/data/mapper/local_user_data_to_user_data_mapper.dart';
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
import 'package:matcher/matcher.dart' as matcher;

class MockLocalPersistenceProvider extends Mock
    implements LocalPersistenceProvider {}

class MockUserDataToLocalUserDataMapper extends Mock
    implements UserDataToLocalUserDataMapper {}

class MockLocalUserDataToUserDataMapper extends Mock
    implements LocalUserDataToUserDataMapper {}

void main() {
  MockLocalPersistenceProvider _mockLocalPersistenceProvider;
  MockUserDataToLocalUserDataMapper _mockUserDataToLocalUserDataMapper;
  MockLocalUserDataToUserDataMapper _mockLocalUserDataToUserDataMapper;

  UserDataLocalDataSource sut;

  final testUserData = UserData(
    wakeUpTime: TimeOfDay.now(),
    sleepTime: TimeOfDay.now(),
    currentWeight: 75,
    gender: Gender.male,
    weightType: WeightType.kg,
    activityLevel: ActivityLevel.active,
  );

  final testDate = DateTime.now();

  final testLocalUserData = LocalUserData(
    wakeUpTime: testDate,
    sleepTime: testDate,
    currentWeight: 75,
    gender: LocalGender.male,
    weightType: LocalWeightType.kg,
    activityLevel: LocalActivityLevel.active,
  );

  setUp(
    () {
      _mockLocalPersistenceProvider = MockLocalPersistenceProvider();
      _mockUserDataToLocalUserDataMapper = MockUserDataToLocalUserDataMapper();
      _mockLocalUserDataToUserDataMapper = MockLocalUserDataToUserDataMapper();

      sut = UserDataLocalDataSourceImpl(
        localPersistenceProvider: _mockLocalPersistenceProvider,
        userDataToLocalUserDataMapper: _mockUserDataToLocalUserDataMapper,
        localUserDataToUserDataMapper: _mockLocalUserDataToUserDataMapper,
      );
    },
  );

  test(
    'saveUserData should trigger localPersistenceProvider.saveKeyValuePair with USER_DATA_BOX and the provided userData',
    () async {
      when(_mockLocalPersistenceProvider.saveKeyValuePair(
        boxToSaveInto: UserDataLocalDataSourceImpl.userDataBox,
        valueToSave: testUserData,
      )).thenAnswer((_) => Future.value());
      when(_mockUserDataToLocalUserDataMapper.map(testUserData))
          .thenAnswer((_) => Future.value(testLocalUserData));
      await sut.saveUserData(testUserData);

      verify(
        _mockLocalPersistenceProvider.saveKeyValuePair(
          boxToSaveInto: UserDataLocalDataSourceImpl.userDataBox,
          valueToSave: testLocalUserData,
        ),
      );
    },
  );

  test(
    'getUserData should return a userData object if its present inside localPersistence',
    () async {
      when(
        _mockLocalPersistenceProvider.getFromKeyValuePair(
          boxToGetDataFrom: UserDataLocalDataSourceImpl.userDataBox,
        ),
      ).thenAnswer((_) => Future.value(testLocalUserData));
      when(_mockLocalUserDataToUserDataMapper.map(testLocalUserData))
          .thenAnswer((_) => Future.value(testUserData));

      final actualResult = await sut.getUserData();

      expect(actualResult, testUserData);

      verify(
        _mockLocalPersistenceProvider.getFromKeyValuePair(
          boxToGetDataFrom: UserDataLocalDataSourceImpl.userDataBox,
        ),
      );
      verify(_mockLocalUserDataToUserDataMapper.map(testLocalUserData));
    },
  );

  test(
    'getUserData should throw a CacheException when the local result is null',
    () async {
      when(
        _mockLocalPersistenceProvider.getFromKeyValuePair(
          boxToGetDataFrom: UserDataLocalDataSourceImpl.userDataBox,
        ),
      ).thenAnswer((_) => Future.value());

      expect(() => sut.getUserData(),
          throwsA(const matcher.TypeMatcher<CacheException>()));
    },
  );
}
