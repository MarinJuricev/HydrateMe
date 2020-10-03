import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:HydrateMe/domain/repository/water_intake_repository.dart';
import 'package:HydrateMe/domain/usecases/calculate_additional_water_intake_per_activity.dart';
import 'package:HydrateMe/domain/usecases/calculate_daily_water_intake.dart';
import 'package:HydrateMe/domain/usecases/kg_to_lbs_converter.dart';
import 'package:HydrateMe/domain/usecases/oz_to_milliliter_converter.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockKgToLbsConverter extends Mock implements KgToLbsConverter {}

class MockCalculateAdditionalWaterIntakePerActivity extends Mock
    implements CalculateAdditionalWaterIntakePerActivity {}

class MockOzToMIliliterConverter extends Mock
    implements OzToMIliliterConverter {}

class MockWaterIntakeRepository extends Mock implements WaterIntakeRepository {}

void main() {
  MockKgToLbsConverter _mockKgToLbsConverter;
  MockCalculateAdditionalWaterIntakePerActivity
      _mockCalculateAdditionalWaterIntakePerActivity;
  MockOzToMIliliterConverter _mockOzToMIliliterConverter;
  MockWaterIntakeRepository _mockWaterIntakeRepository;

  final useCaseParamsInKg = CalculateDailyWaterIntakeParams(
    currentSelectedGender: Gender.male,
    currentSelectedWeightType: WeightType.kg,
    currentWeight: 75,
    currentActivityInMinutes: ActivityLevel.active,
  );

  final useCaseParamsInLbs = CalculateDailyWaterIntakeParams(
    currentSelectedGender: Gender.male,
    currentSelectedWeightType: WeightType.lbs,
    currentWeight: 75,
    currentActivityInMinutes: ActivityLevel.active,
  );

  CalculateDailyWaterIntake _calculateDailyWaterIntake;

  setUp(
    () {
      _mockKgToLbsConverter = MockKgToLbsConverter();
      _mockCalculateAdditionalWaterIntakePerActivity =
          MockCalculateAdditionalWaterIntakePerActivity();
      _mockOzToMIliliterConverter = MockOzToMIliliterConverter();
      _mockWaterIntakeRepository = MockWaterIntakeRepository();

      _calculateDailyWaterIntake = CalculateDailyWaterIntake(
        calculateAdditionalWaterIntakePerActivity:
            _mockCalculateAdditionalWaterIntakePerActivity,
        kgToLbsconverter: _mockKgToLbsConverter,
        ozToMIliliterConverter: _mockOzToMIliliterConverter,
        waterIntakeRepository: _mockWaterIntakeRepository,
      );
    },
  );

  test(
    'should return 2000 when useCaseParamsInKg is provided',
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
        formattedCurrentIntake: '2000/2000',
        currentIntake: 2000,
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
    'should return 2000 when useCaseParamsInLbs is provided',
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
        formattedCurrentIntake: '2000/2000',
        currentIntake: 2000,
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
}
