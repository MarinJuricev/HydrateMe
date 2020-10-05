import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/repository/water_intake_repository.dart';
import 'package:HydrateMe/domain/util/input_converter.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class ManualAddWaterIntake extends BaseUseCase<HydrateStatus, String> {
  final InputConverter inputConverter;
  final WaterIntakeRepository repository;

  ManualAddWaterIntake({
    @required this.inputConverter,
    @required this.repository,
  });

  @override
  Future<Either<Failure, HydrateStatus>> call(String waterToAdd) async {
    final repositoryEither = await repository.getCurrentWaterIntake();
    final convertedEither = inputConverter.stringToUnsignedInteger(waterToAdd);

    final currentHydrateStatus = repositoryEither.getOrElse(() => null);
    final convertedWaterToAdd = convertedEither.getOrElse(() => null);

    if (currentHydrateStatus == null || convertedWaterToAdd == null)
      return Future.value(Left(GeneralFailure(GENERAL_ERROR_MESSAGE)));

    return Future.value(
      Right(
        updateHydrateStatus(
          currentHydrateStatus,
          convertedWaterToAdd,
        ),
      ),
    );
  }

  HydrateStatus updateHydrateStatus(
    HydrateStatus currentHydrateStatus,
    int convertedWaterToAdd,
  ) {
    final updatedCurrentIntake =
        addWaterIntake(currentHydrateStatus, convertedWaterToAdd);

    final updatedHydrationPercentage =
        updatedCurrentIntake / currentHydrateStatus.dailyIntakeGoal;
    final updatedFormattedCurrentIntake =
        '$updatedCurrentIntake/${currentHydrateStatus.dailyIntakeGoal}';

    return currentHydrateStatus.copyWith.call(
      hydrationPercentage: updatedHydrationPercentage,
      formattedCurrentIntake: updatedFormattedCurrentIntake,
      currentIntake: updatedCurrentIntake,
      dailyIntakeGoal: currentHydrateStatus.dailyIntakeGoal,
    );
  }

  int addWaterIntake(
      HydrateStatus currentHydrateStatus, int convertedWaterToAdd) {
    final addedWater = currentHydrateStatus.currentIntake + convertedWaterToAdd;
    if (addedWater >= currentHydrateStatus.dailyIntakeGoal) {
      return currentHydrateStatus.dailyIntakeGoal;
    } else {
      return addedWater;
    }
  }
}
