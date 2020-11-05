import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/repository/water_intake_repository.dart';
import 'package:HydrateMe/domain/usecases/manual_decrease_water_intake.dart';
import 'package:HydrateMe/domain/util/input_converter.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockWaterIntakeRepository extends Mock implements WaterIntakeRepository {}

class MockInputConverter extends Mock implements InputConverter {}

void main() {
  MockWaterIntakeRepository _mockWaterIntakeRepository;
  MockInputConverter _mockInputConverter;
  ManualDecreaseWaterIntake manualDecreaseWaterIntake;

  const String TEST_WATER_TO_DECREASE = '200';
  const int TEST_FORMATTED_TEST_WATER_TO_ADD = 200;

  final testHydrateStatus = HydrateStatus(
    hydrationPercentage: 0,
    formattedCurrentIntake: '',
    dailyIntakeGoal: 1000,
    currentIntake: 0,
    date: DateTime.now(),
  );

  final testHydrateStatusWithAddedCurrentIntake = HydrateStatus(
    hydrationPercentage: 0,
    formattedCurrentIntake: '',
    dailyIntakeGoal: 1000,
    currentIntake: 900,
    date: DateTime.now(),
  );

  setUp(
    () {
      _mockWaterIntakeRepository = MockWaterIntakeRepository();
      _mockInputConverter = MockInputConverter();

      manualDecreaseWaterIntake = ManualDecreaseWaterIntake(
        inputConverter: _mockInputConverter,
        repository: _mockWaterIntakeRepository,
      );
    },
  );

  _setupRepositorySuccessCase(HydrateStatus hydrateStatusToReturn) {
    final Either<Failure, HydrateStatus> testRepositoryResponse =
        Right(hydrateStatusToReturn);

    when(_mockWaterIntakeRepository.getCurrentWaterIntake())
        .thenAnswer((_) async => testRepositoryResponse);
  }

  _setupRepositoryFailureCase() {
    final Either<Failure, HydrateStatus> testRepositoryResponse =
        Left(GeneralFailure(GENERAL_ERROR_MESSAGE));

    when(_mockWaterIntakeRepository.getCurrentWaterIntake())
        .thenAnswer((_) async => testRepositoryResponse);
  }

  _setupInputConverterFailureCase() {
    when(_mockInputConverter.stringToUnsignedInteger(TEST_WATER_TO_DECREASE))
        .thenReturn(Left(NegativeNumberFailure(CANT_PROVIDE_NEGATIVE_NUMBER)));
  }

  _setupInputConverterSuccessCase() {
    when(_mockInputConverter.stringToUnsignedInteger(TEST_WATER_TO_DECREASE))
        .thenReturn(Right(TEST_FORMATTED_TEST_WATER_TO_ADD));
  }

  test(
    'should return Future<Left<GeneralFailure>> when the input converter returns a Failure',
    () async {
      _setupRepositorySuccessCase(testHydrateStatus);
      _setupInputConverterFailureCase();

      final actualResult =
          await manualDecreaseWaterIntake(TEST_WATER_TO_DECREASE);
      final expectedResult = Left(GeneralFailure(GENERAL_ERROR_MESSAGE));

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return Future<Left<GeneralFailure>> when the repository returns a Failure',
    () async {
      _setupRepositoryFailureCase();
      _setupInputConverterSuccessCase();

      final actualResult =
          await manualDecreaseWaterIntake(TEST_WATER_TO_DECREASE);
      final expectedResult = Left(GeneralFailure(GENERAL_ERROR_MESSAGE));

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return Future<Right<HydrateStatus>> when the repository and inputConverter return Right',
    () async {
      _setupRepositorySuccessCase(testHydrateStatusWithAddedCurrentIntake);
      _setupInputConverterSuccessCase();

      final actualResult =
          await manualDecreaseWaterIntake(TEST_WATER_TO_DECREASE);

      final expectedHydrateStatus = HydrateStatus(
        hydrationPercentage: 0.3,
        formattedCurrentIntake: '700/1000',
        currentIntake: 700,
        dailyIntakeGoal: 1000,
        date: testHydrateStatusWithAddedCurrentIntake.date,
      );
      final expectedResult = Right(expectedHydrateStatus);

      expect(actualResult, expectedResult);
      verify(
        _mockWaterIntakeRepository
            .saveCurrentWaterIntake(expectedHydrateStatus),
      );
    },
  );

  test(
    'should return Future<Right<HydrateStatus>> and set the currentIntake to 0 when the added value is greater than dailyIntakeGoal',
    () async {
      _setupRepositorySuccessCase(testHydrateStatus);
      _setupInputConverterSuccessCase();

      final actualResult =
          await manualDecreaseWaterIntake(TEST_WATER_TO_DECREASE);

      final expectedHydrateStatus = HydrateStatus(
        hydrationPercentage: 1.0,
        formattedCurrentIntake: '0/1000',
        currentIntake: 0,
        dailyIntakeGoal: 1000,
        date: testHydrateStatus.date,
      );
      final expectedResult = Right(expectedHydrateStatus);

      expect(actualResult, expectedResult);
      verify(
        _mockWaterIntakeRepository
            .saveCurrentWaterIntake(expectedHydrateStatus),
      );
    },
  );
}
