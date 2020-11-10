import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/error/exceptions.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/data/data_source/water_intake_local_data_source.dart';
import 'package:HydrateMe/data/repository/water_intake_repository_impl.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/repository/water_intake_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockWaterIntakeDataSource extends Mock
    implements WaterIntakeLocalDataSource {}

void main() {
  MockWaterIntakeDataSource _mockWaterIntakeDataSource;
  WaterIntakeRepository sut;
  final testDate = DateTime.now();

  final testHydrateStatus = HydrateStatus(
    currentIntake: 2500,
    dailyIntakeGoal: 2500,
    date: testDate,
    formattedCurrentIntake: '2500/2500',
    hydrationPercentage: 1.0,
  );

  setUp(
    () {
      _mockWaterIntakeDataSource = MockWaterIntakeDataSource();
      sut = WaterIntakeRepositoryImpl(
        waterIntakeLocalDataSource: _mockWaterIntakeDataSource,
      );
    },
  );

  test(
    'getCurrentWaterIntake should return Right hydrateStatus from waterIntakeDataLocalDataSource when the local result is not null',
    () async {
      when(_mockWaterIntakeDataSource.getWaterIntake())
          .thenAnswer((_) => Future.value(testHydrateStatus));

      final actualResult = await sut.getCurrentWaterIntake();
      final expectedResult = Right(testHydrateStatus);

      expect(actualResult, expectedResult);
      verify(_mockWaterIntakeDataSource.getWaterIntake());
    },
  );

  test(
    'getUserData should return Left CacheFailure when waterIntakeDataLocalDataSource throws a CacheException',
    () async {
      when(_mockWaterIntakeDataSource.getWaterIntake())
          .thenThrow(CacheException());

      final actualResult = await sut.getCurrentWaterIntake();
      final expectedResult = Left(CacheFailure(ERROR_RETREIVING_LOCAL_DATA));

      expect(actualResult, expectedResult);
      verify(_mockWaterIntakeDataSource.getWaterIntake());
    },
  );

  test(
    'saveCurrentWaterIntake should return Right Future<void> when waterIntakeDataLocalDataSource successfully saves data into the data source',
    () async {
      when(_mockWaterIntakeDataSource.saveWaterIntake(testHydrateStatus))
          .thenAnswer((_) => Future.value(null));

      final actualResult = await sut.saveCurrentWaterIntake(testHydrateStatus);
      final expectedResult = Right(null);

      expect(actualResult, expectedResult);
      verify(_mockWaterIntakeDataSource.saveWaterIntake(testHydrateStatus));
    },
  );

  test(
    'saveCurrentWaterIntake should return Left CacheFailure when userDataLocalDataSource throws a CacheException',
    () async {
      when(_mockWaterIntakeDataSource.saveWaterIntake(testHydrateStatus))
          .thenThrow(CacheException());

      final actualResult = await sut.saveCurrentWaterIntake(testHydrateStatus);
      final expectedResult = Left(CacheFailure(ERROR_RETREIVING_LOCAL_DATA));

      expect(actualResult, expectedResult);
      verify(_mockWaterIntakeDataSource.saveWaterIntake(testHydrateStatus));
    },
  );
}
