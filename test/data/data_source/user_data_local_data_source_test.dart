import 'package:HydrateMe/data/data_source/local_persistence_provider.dart';
import 'package:HydrateMe/data/data_source/user_data_local_data_source.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockLocalPersistenceProvider extends Mock
    implements LocalPersistenceProvider {}

void main() {
  MockLocalPersistenceProvider _mockLocalPersistenceProvider;
  UserDataLocalDataSource userDataLocalDataSource;

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
      _mockLocalPersistenceProvider = MockLocalPersistenceProvider();
      userDataLocalDataSource = UserDataLocalDataSourceImpl(
        localPersistenceProvider: _mockLocalPersistenceProvider,
      );
    },
  );

  test(
    'saveUserData should trigger localPersistenceProvider.saveKeyValuePair with USER_DATA_BOX and the provided userData',
    () async {
      await userDataLocalDataSource.saveUserData(testUserData);

      verify(
        _mockLocalPersistenceProvider.saveKeyValuePair(
          boxToSaveInto: UserDataLocalDataSourceImpl.USER_DATA_BOX,
          valueToSave: testUserData,
        ),
      );
    },
  );

  test(
    'getUserData should return a userData object if its present inside localPersistence',
    () async {
      when(
        _mockLocalPersistenceProvider.getFromKeyValuePair(
          boxToGetDataFrom: UserDataLocalDataSourceImpl.USER_DATA_BOX,
        ),
      ).thenAnswer((_) => Future.value(testUserData));

      final actualResult = await userDataLocalDataSource.getUserData();

      expect(actualResult, testUserData);

      verify(
        _mockLocalPersistenceProvider.getFromKeyValuePair(
          boxToGetDataFrom: UserDataLocalDataSourceImpl.USER_DATA_BOX,
        ),
      );
    },
  );
}
