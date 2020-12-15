import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:HydrateMe/domain/repository/user_data_repository.dart';
import 'package:HydrateMe/domain/usecases/save_user_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockUserDataRepository extends Mock implements UserDataRepository {}

void main() {
  MockUserDataRepository _mockUserDataRepository;
  SaveUserData sut;

  const testWakeUpTime = TimeOfDay(hour: 6, minute: 0);
  const testSleepTime = TimeOfDay(hour: 23, minute: 0);
  const testCurrentWeight = 75;
  const testGender = Gender.male;
  const testWeightType = WeightType.kg;
  const testActivityLevel = ActivityLevel.active;

  final testUserData = UserData(
    wakeUpTime: testWakeUpTime,
    sleepTime: testSleepTime,
    currentWeight: testCurrentWeight,
    gender: testGender,
    weightType: testWeightType,
    activityLevel: testActivityLevel,
  );

  setUp(
    () {
      _mockUserDataRepository = MockUserDataRepository();
      sut = SaveUserData(
        userDataRepository: _mockUserDataRepository,
      );
    },
  );

  test(
    'should trigger userDataRepository saveUserData with a constructed UserData object',
    () async {
      const saveUserDataParams = SaveUserDataParams(
        wakeUpTime: testWakeUpTime,
        sleepTime: testSleepTime,
        currentWeight: testCurrentWeight,
        gender: testGender,
        weightType: testWeightType,
        activityLevel: testActivityLevel,
      );

      when(_mockUserDataRepository.saveUserData(testUserData))
          .thenAnswer((_) => null);

      await sut(saveUserDataParams);

      verify(_mockUserDataRepository.saveUserData(testUserData));
    },
  );
}
