import 'package:HydrateMe/data/data_source/time_provider.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:HydrateMe/domain/repository/notification_repository.dart';
import 'package:HydrateMe/domain/repository/water_intake_repository.dart';
import 'package:HydrateMe/domain/usecases/calculate_additional_water_intake_per_activity.dart';
import 'package:HydrateMe/domain/usecases/calculate_daily_water_intake.dart';
import 'package:HydrateMe/domain/usecases/kg_to_lbs_converter.dart';
import 'package:HydrateMe/domain/usecases/oz_to_milliliter_converter.dart';
import 'package:HydrateMe/domain/usecases/save_user_data.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockKgToLbsConverter extends Mock implements KgToLbsConverter {}

class MockCalculateAdditionalWaterIntakePerActivity extends Mock
    implements CalculateAdditionalWaterIntakePerActivity {}

class MockOzToMIliliterConverter extends Mock
    implements OzToMIliliterConverter {}

class MockWaterIntakeRepository extends Mock implements WaterIntakeRepository {}

class MockNotificationRepository extends Mock
    implements NotificationRepository {}

class MockTimeProvider extends Mock implements TimeProvider {}

class MockSaveUserData extends Mock implements SaveUserData {}

void main() {
  MockKgToLbsConverter _mockKgToLbsConverter;
  MockCalculateAdditionalWaterIntakePerActivity
      _mockCalculateAdditionalWaterIntakePerActivity;
  MockOzToMIliliterConverter _mockOzToMIliliterConverter;
  MockWaterIntakeRepository _mockWaterIntakeRepository;
  MockNotificationRepository _mockNotificationRepository;
  MockSaveUserData _mockSaveUserData;
  MockTimeProvider _mockTimeProvider;

  final useCaseParamsInKg = CalculateDailyWaterIntakeParams(
    currentSelectedGender: Gender.male,
    currentSelectedWeightType: WeightType.kg,
    currentWeight: 75,
    currentActivityInMinutes: ActivityLevel.active,
    wakeUpTime: TimeOfDay(hour: 7, minute: 0),
    sleepTime: TimeOfDay(hour: 24, minute: 0),
  );

  final testDate = DateTime.now();

  final useCaseParamsInLbs = CalculateDailyWaterIntakeParams(
    currentSelectedGender: Gender.male,
    currentSelectedWeightType: WeightType.lbs,
    currentWeight: 75,
    currentActivityInMinutes: ActivityLevel.active,
    wakeUpTime: TimeOfDay(hour: 7, minute: 0),
    sleepTime: TimeOfDay(hour: 24, minute: 0),
  );

  CalculateDailyWaterIntake _calculateDailyWaterIntake;

  setUp(
    () {
      _mockKgToLbsConverter = MockKgToLbsConverter();
      _mockCalculateAdditionalWaterIntakePerActivity =
          MockCalculateAdditionalWaterIntakePerActivity();
      _mockOzToMIliliterConverter = MockOzToMIliliterConverter();
      _mockWaterIntakeRepository = MockWaterIntakeRepository();
      _mockNotificationRepository = MockNotificationRepository();
      _mockSaveUserData = MockSaveUserData();
      _mockTimeProvider = MockTimeProvider();

      _calculateDailyWaterIntake = CalculateDailyWaterIntake(
          calculateAdditionalWaterIntakePerActivity:
              _mockCalculateAdditionalWaterIntakePerActivity,
          kgToLbsconverter: _mockKgToLbsConverter,
          ozToMIliliterConverter: _mockOzToMIliliterConverter,
          waterIntakeRepository: _mockWaterIntakeRepository,
          notificationRepository: _mockNotificationRepository,
          saveUserData: _mockSaveUserData,
          timeProvider: _mockTimeProvider);

      when(_mockTimeProvider.getCurrentDate()).thenReturn(testDate);
    },
  );

  test(
    'should return hydrate status with 2000 as the dailyIntakeGoal when useCaseParamsInKg is provided',
    () async {
      when(
        _mockKgToLbsConverter(useCaseParamsInKg.currentWeight),
      ).thenAnswer((_) async => (Right(150)));

      when(
        _mockCalculateAdditionalWaterIntakePerActivity(
            useCaseParamsInKg.currentActivityInMinutes),
      ).thenAnswer((_) async => (Right(30)));

      when(
        _mockOzToMIliliterConverter(130.0),
      ).thenAnswer((_) async => (Right(2000)));

      final expectedHydrateStatus = HydrateStatus(
        hydrationPercentage: 1.0,
        dailyIntakeGoal: 2000,
        formattedCurrentIntake: '0/2000 ml',
        currentIntake: 0,
        date: testDate,
      );

      final actualResult = await _calculateDailyWaterIntake(useCaseParamsInKg);
      final expectedResult = Right(expectedHydrateStatus);

      // We can safely ignore this lint error since we are the ones who
      // are returning Right(HydrateStatus), we know that it isn't Left(Failure)
      // ignore: unrelated_type_equality_checks
      assert(expectedResult == actualResult);

      verify(_mockWaterIntakeRepository
          .saveCurrentWaterIntake(expectedHydrateStatus));
    },
  );

  test(
    'should return hydrate status with 2000 as the dailyIntakeGoal when useCaseParamsInLbs is provided',
    () async {
      when(
        _mockKgToLbsConverter(useCaseParamsInLbs.currentWeight),
      ).thenAnswer((_) async => (Right(150)));

      when(
        _mockCalculateAdditionalWaterIntakePerActivity(
            useCaseParamsInLbs.currentActivityInMinutes),
      ).thenAnswer((_) async => (Right(30)));

      when(
        _mockOzToMIliliterConverter(80.0),
      ).thenAnswer((_) async => (Right(2000)));

      final expectedHydrateStatus = HydrateStatus(
        hydrationPercentage: 1.0,
        dailyIntakeGoal: 2000,
        formattedCurrentIntake: '0/2000 oz',
        currentIntake: 0,
        date: testDate,
      );

      final actualResult = await _calculateDailyWaterIntake(useCaseParamsInLbs);
      final expectedResult = Right(expectedHydrateStatus);

      // We can safely ignore this lint error since we are the ones who
      // are returning Right(HydrateStatus), we know that it isn't Left(Failure)
      // ignore: unrelated_type_equality_checks
      assert(expectedResult == actualResult);

      verify(_mockWaterIntakeRepository
          .saveCurrentWaterIntake(expectedHydrateStatus));
    },
  );

  test(
    'should trigger notificationRepository scheduleDaily notification with the provided wakeUpTime and sleepTime',
    () async {
      when(
        _mockKgToLbsConverter(useCaseParamsInLbs.currentWeight),
      ).thenAnswer((_) async => (Right(150)));

      when(
        _mockCalculateAdditionalWaterIntakePerActivity(
            useCaseParamsInLbs.currentActivityInMinutes),
      ).thenAnswer((_) async => (Right(30)));

      when(
        _mockOzToMIliliterConverter(80.0),
      ).thenAnswer((_) async => (Right(2000)));

      await _calculateDailyWaterIntake(useCaseParamsInLbs);
      verify(_mockNotificationRepository.scheduleDailyNotifications(
        useCaseParamsInLbs.wakeUpTime,
        useCaseParamsInLbs.sleepTime,
      ));
    },
  );

  test(
    'should trigger saveUserData with the necessary parametars',
    () async {
      when(
        _mockKgToLbsConverter(useCaseParamsInLbs.currentWeight),
      ).thenAnswer((_) async => (Right(150)));

      when(
        _mockCalculateAdditionalWaterIntakePerActivity(
            useCaseParamsInLbs.currentActivityInMinutes),
      ).thenAnswer((_) async => (Right(30)));

      when(
        _mockOzToMIliliterConverter(80.0),
      ).thenAnswer((_) async => (Right(2000)));

      await _calculateDailyWaterIntake(useCaseParamsInLbs);
      verify(
        _mockSaveUserData(
          SaveUserDataParams(
            wakeUpTime: useCaseParamsInLbs.wakeUpTime,
            sleepTime: useCaseParamsInLbs.sleepTime,
            currentWeight: useCaseParamsInLbs.currentWeight,
            gender: useCaseParamsInLbs.currentSelectedGender,
            weightType: useCaseParamsInLbs.currentSelectedWeightType,
            activityLevel: useCaseParamsInLbs.currentActivityInMinutes,
          ),
        ),
      );
    },
  );
}
