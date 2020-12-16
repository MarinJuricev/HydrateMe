import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/error/exceptions.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/data/data_source/user_data_local_data_source.dart';
import 'package:HydrateMe/data/repository/user_data_repository_impl.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:HydrateMe/domain/repository/user_data_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockUserDataLocalDataSource extends Mock
    implements UserDataLocalDataSource {}

void main() {
  MockUserDataLocalDataSource _mockUserDataLocalDataSource;
  UserDataRepository sut;
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
      _mockUserDataLocalDataSource = MockUserDataLocalDataSource();
      sut = UserDataRepositoryImpl(
        userDataLocalDataSource: _mockUserDataLocalDataSource,
      );
    },
  );

  test(
    'getUserData should return Right userData from userDataLocalDataSource',
    () async {
      when(_mockUserDataLocalDataSource.getUserData())
          .thenAnswer((_) => Future.value(testUserData));

      final actualResult = await sut.getUserData();
      final expectedResult = Right(testUserData);

      expect(actualResult, expectedResult);
      verify(_mockUserDataLocalDataSource.getUserData());
    },
  );

  test(
    'getUserData should return Left CacheFailure when userDataLocalDataSource throws a CacheException',
    () async {
      when(_mockUserDataLocalDataSource.getUserData())
          .thenThrow(CacheException());

      final actualResult = await sut.getUserData();
      const expectedResult = Left(CacheFailure(errorRetreivingLocalData));

      expect(actualResult, expectedResult);
      verify(_mockUserDataLocalDataSource.getUserData());
    },
  );

  test(
    'saveUserData should return Right Future<void> when userDataLocalDataSource successfully saves data into the data source',
    () async {
      when(_mockUserDataLocalDataSource.saveUserData(testUserData))
          .thenAnswer((_) => Future.value());

      final actualResult = await sut.saveUserData(testUserData);
      const expectedResult = Right(null);

      expect(actualResult, expectedResult);
      verify(_mockUserDataLocalDataSource.saveUserData(testUserData));
    },
  );

  test(
    'saveUserData should return Left CacheFailure when userDataLocalDataSource throws a CacheException',
    () async {
      when(_mockUserDataLocalDataSource.saveUserData(testUserData))
          .thenThrow(CacheException());

      final actualResult = await sut.saveUserData(testUserData);
      const expectedResult = Left(CacheFailure(errorRetreivingLocalData));

      expect(actualResult, expectedResult);
      verify(_mockUserDataLocalDataSource.saveUserData(testUserData));
    },
  );
}
