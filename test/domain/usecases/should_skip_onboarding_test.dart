import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:HydrateMe/data/data_source/time_provider.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/repository/water_intake_repository.dart';
import 'package:HydrateMe/domain/usecases/reset_hydrate_status.dart';
import 'package:HydrateMe/domain/usecases/should_skip_onboarding.dart';
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
  ShouldSkipOnboarding sut;

  Either<Failure, HydrateStatus> repositoryErrorResponse =
      Left(GeneralFailure(GENERAL_ERROR_MESSAGE));

  setUp(
    () {
      mockWaterIntakeRepository = MockWaterIntakeRepository();
      mockTimeProvider = MockTimeProvider();
      mockResetHydrateStatus = MockResetHydrateStatus();

      sut = ShouldSkipOnboarding(
        waterIntakeRepository: mockWaterIntakeRepository,
        timeProvider: mockTimeProvider,
        resetHydrateStatus: mockResetHydrateStatus,
      );
    },
  );

  void setupWaterIntakeRepositoryFailure() {
    when(mockWaterIntakeRepository.getCurrentWaterIntake())
        .thenAnswer((_) => Future.value(repositoryErrorResponse));
  }

  test(
    'should return Future<Left<Failure>> when waterIntakeRepository.getCurrentWaterIntake returns a failure',
    () async {
      setupWaterIntakeRepositoryFailure();
      final actualResult = await sut(NoParams());

      expect(actualResult, repositoryErrorResponse);
    },
  );
}
