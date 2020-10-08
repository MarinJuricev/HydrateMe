import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../core/common/constants/constants.dart';
import '../../core/failure/base_failure.dart';
import '../../core/usecase/base_usecase.dart';
import '../model/hydrate_status.dart';
import '../repository/water_intake_repository.dart';
import '../util/input_converter.dart';
import '../util/extensions/double_extensions.dart';

class ManualDecreaseWaterIntake extends BaseUseCase<HydrateStatus, String> {
  final InputConverter inputConverter;
  final WaterIntakeRepository repository;

  ManualDecreaseWaterIntake({
    @required this.inputConverter,
    @required this.repository,
  });

  @override
  Future<Either<Failure, HydrateStatus>> call(String waterToDecrease) async {
    final repositoryEither = await repository.getCurrentWaterIntake();
    final convertedEither =
        inputConverter.stringToUnsignedInteger(waterToDecrease);

    final currentHydrateStatus = repositoryEither.getOrElse(() => null);
    final convertedWaterToAdd = convertedEither.getOrElse(() => null);

    if (currentHydrateStatus == null || convertedWaterToAdd == null)
      return Future.value(Left(GeneralFailure(GENERAL_ERROR_MESSAGE)));

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
        decreaseWaterIntake(currentHydrateStatus, convertedWaterToAdd);

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

  int decreaseWaterIntake(
      HydrateStatus currentHydrateStatus, int convertedWaterToAdd) {
    final decreasedWater =
        currentHydrateStatus.currentIntake - convertedWaterToAdd;
    if (decreasedWater <= 0) {
      return 0;
    } else {
      return decreasedWater;
    }
  }
}
