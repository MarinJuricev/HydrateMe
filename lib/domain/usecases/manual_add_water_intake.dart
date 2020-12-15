import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../core/common/constants/constants.dart';
import '../../core/failure/base_failure.dart';
import '../../core/usecase/base_usecase.dart';
import '../model/hydrate_status.dart';
import '../repository/water_intake_repository.dart';
import '../util/extensions/double_extensions.dart';
import '../util/input_converter.dart';

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

    if (currentHydrateStatus == null || convertedWaterToAdd == null) {
      return Future.value(const Left(GeneralFailure(genericErrorMessage)));
    }

    final updatedHydrateStatus = updateHydrateStatus(
      currentHydrateStatus,
      convertedWaterToAdd,
    );

    await repository.saveCurrentWaterIntake(updatedHydrateStatus);

    return Future.value(Right(updatedHydrateStatus));
  }

  HydrateStatus updateHydrateStatus(
    HydrateStatus currentHydrateStatus,
    int convertedWaterToAdd,
  ) {
    final updatedCurrentIntake =
        addWaterIntake(currentHydrateStatus, convertedWaterToAdd);

    final updatedHydrationPercentage =
        (1 - updatedCurrentIntake / currentHydrateStatus.dailyIntakeGoal)
            .formatToTwoDecimal();
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
