import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/repository/water_intake_repository.dart';
import 'package:HydrateMe/domain/usecases/manual_add_water_intake.dart';
import 'package:HydrateMe/domain/util/input_converter.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockWaterIntakeRepository extends Mock implements WaterIntakeRepository {}

class MockInputConverter extends Mock implements InputConverter {}

void main() {
  MockWaterIntakeRepository _mockWaterIntakeRepository;
  MockInputConverter _mockInputConverter;
  ManualAddWaterIntake manualAddWaterIntake;

  const String TEST_WATER_TO_ADD = '200';
  const int TEST_FORMATTED_TEST_WATER_TO_ADD = 200;

  final testDate = DateTime.now();

  final testHydrateStatus = HydrateStatus(
    hydrationPercentage: 0,
    formattedCurrentIntake: '',
    dailyIntakeGoal: 1000,
    currentIntake: 0,
    date: testDate,
  );

  final testHydrateStatusWithAddedCurrentIntake = HydrateStatus(
    hydrationPercentage: 0,
    formattedCurrentIntake: '',
    dailyIntakeGoal: 1000,
    currentIntake: 999,
    date: testDate,
  );

  setUp(
    () {
      _mockWaterIntakeRepository = MockWaterIntakeRepository();
      _mockInputConverter = MockInputConverter();

      manualAddWaterIntake = ManualAddWaterIntake(
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
    when(_mockInputConverter.stringToUnsignedInteger(TEST_WATER_TO_ADD))
        .thenReturn(Left(NegativeNumberFailure(CANT_PROVIDE_NEGATIVE_NUMBER)));
  }

  _setupInputConverterSuccessCase() {
    when(_mockInputConverter.stringToUnsignedInteger(TEST_WATER_TO_ADD))
        .thenReturn(Right(TEST_FORMATTED_TEST_WATER_TO_ADD));
  }

  test(
    'should return Future<Left<GeneralFailure>> when the input converter returns a Failure',
    () async {
      _setupRepositorySuccessCase(testHydrateStatus);
      _setupInputConverterFailureCase();

      final actualResult = await manualAddWaterIntake(TEST_WATER_TO_ADD);
      final expectedResult = Left(GeneralFailure(GENERAL_ERROR_MESSAGE));

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return Future<Left<GeneralFailure>> when the repository returns a Failure',
    () async {
      _setupRepositoryFailureCase();
      _setupInputConverterSuccessCase();

      final actualResult = await manualAddWaterIntake(TEST_WATER_TO_ADD);
      final expectedResult = Left(GeneralFailure(GENERAL_ERROR_MESSAGE));

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return Future<Right<HydrateStatus>> when the repository and inputConverter return Right',
    () async {
      _setupRepositorySuccessCase(testHydrateStatus);
      _setupInputConverterSuccessCase();

      final actualResult = await manualAddWaterIntake(TEST_WATER_TO_ADD);

      final expectedHydrateStatus = HydrateStatus(
        hydrationPercentage: 0.8,
        formattedCurrentIntake: '200/1000',
        currentIntake: 200,
        dailyIntakeGoal: 1000,
        date: testDate,
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
    'should return Future<Right<HydrateStatus>> and set the currentIntake to dailyIntakeGoal when the added value is greater than dailyIntakeGoal',
    () async {
      _setupRepositorySuccessCase(
        testHydrateStatusWithAddedCurrentIntake,
      );
      _setupInputConverterSuccessCase();

      final actualResult = await manualAddWaterIntake(TEST_WATER_TO_ADD);

      final expectedHydrateStatus = HydrateStatus(
        hydrationPercentage: 0.0,
        formattedCurrentIntake: '1000/1000',
        currentIntake: 1000,
        dailyIntakeGoal: 1000,
        date: testDate,
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
