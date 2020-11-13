import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:HydrateMe/data/data_source/time_provider.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/repository/water_intake_repository.dart';
import 'package:HydrateMe/domain/usecases/reset_hydrate_status.dart';
import 'package:HydrateMe/domain/usecases/should_skip_calculationh.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockWaterIntakeRepository extends Mock implements WaterIntakeRepository {}

class MockTimeProvider extends Mock implements TimeProvider {}

class MockResetHydrateStatus extends Mock implements ResetHydrateStatus {}

void main() {
  MockWaterIntakeRepository mockWaterIntakeRepository;
  MockTimeProvider mockTimeProvider;
  MockResetHydrateStatus mockResetHydrateStatus;
  ShouldSkipCalculation sut;

  final testDate = DateTime.now();
  final testDateOneDayAfter = testDate.add(Duration(days: 1));
  final testDateOneDayBefore = testDate.subtract(Duration(days: 1));
  final testDateOneDayOneHourLater = testDate.subtract(Duration(hours: 1));

  final testHydrateStatus = HydrateStatus(
    currentIntake: 2500,
    dailyIntakeGoal: 2500,
    date: testDate,
    formattedCurrentIntake: '2500/2500',
    hydrationPercentage: 1.0,
  );

  final testResetedHydrateStatus = HydrateStatus(
    currentIntake: 2500,
    dailyIntakeGoal: 2500,
    date: testDateOneDayAfter,
    formattedCurrentIntake: '2500/2500',
    hydrationPercentage: 1.0,
  );

  Either<Failure, HydrateStatus> errorResponse =
      Left(GeneralFailure(GENERAL_ERROR_MESSAGE));

  Either<Failure, HydrateStatus> repositorySuccessResponse =
      Right(testHydrateStatus);

  setUp(
    () {
      mockWaterIntakeRepository = MockWaterIntakeRepository();
      mockTimeProvider = MockTimeProvider();
      mockResetHydrateStatus = MockResetHydrateStatus();

      sut = ShouldSkipCalculation(
        waterIntakeRepository: mockWaterIntakeRepository,
        timeProvider: mockTimeProvider,
        resetHydrateStatus: mockResetHydrateStatus,
      );
    },
  );

  void setupWaterIntakeRepositoryFailure() {
    when(mockWaterIntakeRepository.getCurrentWaterIntake())
        .thenAnswer((_) => Future.value(errorResponse));
  }

  void setupWaterIntakeRepositorySuccess() {
    when(mockWaterIntakeRepository.getCurrentWaterIntake())
        .thenAnswer((_) => Future.value(repositorySuccessResponse));
  }

  test(
    'should return Future<Left<Failure>> when waterIntakeRepository.getCurrentWaterIntake returns a failure',
    () async {
      setupWaterIntakeRepositoryFailure();
      final actualResult = await sut(NoParams());

      expect(actualResult, errorResponse);
    },
  );

  test(
    'should return Future<Right> when waterIntakeRepository.getCurrentWaterIntake returns a success and the currentDate is not after the date from hydrateStatus',
    () async {
      setupWaterIntakeRepositorySuccess();
      when(mockTimeProvider.getCurrentDate()).thenReturn(testDateOneDayBefore);

      final actualResult = await sut(NoParams());
      final expectedResult = Right(null);

      expect(actualResult, expectedResult);
    },
  );
  test(
    'should return Future<Right> when waterIntakeRepository.getCurrentWaterIntake returns a success and the currentDate and hydrateStatus date difference is not greater than 24h',
    () async {
      setupWaterIntakeRepositorySuccess();
      when(mockTimeProvider.getCurrentDate())
          .thenReturn(testDateOneDayOneHourLater);

      final actualResult = await sut(NoParams());
      final expectedResult = Right(null);

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return Future<Left<Failure>> when resetHydrateStatus returns a failure',
    () async {
      setupWaterIntakeRepositorySuccess();
      when(mockTimeProvider.getCurrentDate()).thenReturn(testDateOneDayAfter);
      when(mockResetHydrateStatus(
        ResetHydrateStatusParams(
            hydrateStatusToReset: testHydrateStatus,
            updatedDate: testDateOneDayAfter),
      )).thenAnswer((_) => Future.value(errorResponse));

      final actualResult = await sut(NoParams());

      expect(actualResult, errorResponse);
    },
  );

  test(
    'should return Future<Right> when resetHydrateStatus returns a success',
    () async {
      setupWaterIntakeRepositorySuccess();
      when(mockTimeProvider.getCurrentDate()).thenReturn(testDateOneDayAfter);
      when(mockResetHydrateStatus(
        ResetHydrateStatusParams(
            hydrateStatusToReset: testHydrateStatus,
            updatedDate: testDateOneDayAfter),
      )).thenAnswer((_) => Future.value(Right(testResetedHydrateStatus)));

      final actualResult = await sut(NoParams());
      final expectedResult = Right(null);

      expect(actualResult, expectedResult);

      verify(mockWaterIntakeRepository
          .saveCurrentWaterIntake(testResetedHydrateStatus));
    },
  );
}
