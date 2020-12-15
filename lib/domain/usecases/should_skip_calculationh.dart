import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:HydrateMe/data/data_source/time_provider.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/repository/water_intake_repository.dart';
import 'package:HydrateMe/domain/usecases/reset_hydrate_status.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class ShouldSkipCalculation extends BaseUseCase<void, NoParams> {
  final WaterIntakeRepository waterIntakeRepository;
  final TimeProvider timeProvider;
  final ResetHydrateStatus resetHydrateStatus;

  ShouldSkipCalculation({
    @required this.waterIntakeRepository,
    @required this.timeProvider,
    @required this.resetHydrateStatus,
  });

  @override
  Future<Either<Failure, void>> call(NoParams params) async {
    final currentHydrateStatusEither =
        await waterIntakeRepository.getCurrentWaterIntake();

    return currentHydrateStatusEither.fold(
      // return the failure if we don't have anything in the localStorage and let
      // the user go through the calculate process
      (failure) => currentHydrateStatusEither,
      (hydrateStatus) => restHydrateStatusDependingOnDate(hydrateStatus),
    );
  }

  Future<Either<Failure, void>> restHydrateStatusDependingOnDate(
    HydrateStatus hydrateStatus,
  ) async {
    final currentDate = timeProvider.getCurrentDate();

    if (currentDate.isAfter(hydrateStatus.date) &&
        (hydrateStatus.date.day != currentDate.day ||
            hydrateStatus.date.difference(currentDate).inHours > 24)) {
      //Reset the hydrateStatus in this case
      final resetHydrateStatusEither = await resetHydrateStatus(
        ResetHydrateStatusParams(
          hydrateStatusToReset: hydrateStatus,
          updatedDate: currentDate,
        ),
      );
      return resetHydrateStatusEither.fold(
        (error) =>
            Future.value(const Left(GeneralFailure(genericErrorMessage))),
        (resetedHydrateStatus) async {
          await waterIntakeRepository
              .saveCurrentWaterIntake(resetedHydrateStatus);
          return Future.value(const Right(null));
        },
      );
    } else {
      return Future.value(const Right(null));
    }
  }
}
