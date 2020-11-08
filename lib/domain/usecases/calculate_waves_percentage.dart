import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../core/common/constants/constants.dart';
import '../util/extensions/double_extensions.dart';
import '../../core/failure/base_failure.dart';
import '../../core/usecase/base_usecase.dart';
import '../model/hydrate_status.dart';
import '../repository/water_intake_repository.dart';

class CalculateWavesPercentage
    extends BaseUseCase<HydrateStatus, CalculateWavesPercentageParams> {
  final WaterIntakeRepository waterIntakeRepository;

  CalculateWavesPercentage({@required this.waterIntakeRepository});

  @override
  Future<Either<Failure, HydrateStatus>> call(
      CalculateWavesPercentageParams params) async {
    final currentHydrateStatusEither =
        await waterIntakeRepository.getCurrentWaterIntake();

    final hydrateStatus = extractHydrateStatus(currentHydrateStatusEither);

    if (hydrateStatus == null) {
      return Left(NonExistentHydrateStatus(ERROR_RETREIVING_LOCAL_DATA));
    }

    final hydrationPercentage = calculateHydrationPercentage(
      params.updatedValue,
      params.waterMaximumHeight,
    );

    final currentIntake = calculateCurrentIntake(
        hydrationPercentage, hydrateStatus.dailyIntakeGoal);
    final formattedCurrentIntake =
        formatCurrentIntake(currentIntake, hydrateStatus.dailyIntakeGoal);

    final updatedHydrateStatus = HydrateStatus(
        hydrationPercentage: hydrationPercentage,
        formattedCurrentIntake: formattedCurrentIntake,
        currentIntake: currentIntake,
        dailyIntakeGoal: hydrateStatus.dailyIntakeGoal,
        date: hydrateStatus.date);

    await waterIntakeRepository.saveCurrentWaterIntake(updatedHydrateStatus);

    return Right(updatedHydrateStatus);
  }

  double calculateHydrationPercentage(
    double updatedValue,
    double waterMaximumHeight,
  ) {
    var hydrationpercentage =
        (updatedValue / waterMaximumHeight).formatToTwoDecimal();

    if (hydrationpercentage > 1.0) {
      hydrationpercentage = 1.0;
    } else if (hydrationpercentage < 0.0) {
      hydrationpercentage = 0.0;
    }

    return hydrationpercentage;
  }

  String roundUpPercentage(hydrationPercentage) {
    return hydrationPercentage.toStringAsFixed(2);
  }

  String toPercentage(String roundedUpPercentage) {
    return '${(double.parse(roundedUpPercentage) * 100).toString()}%';
  }

  int calculateCurrentIntake(double hydrationPercentage, int dailyIntakeGoal) {
    return dailyIntakeGoal - (hydrationPercentage * dailyIntakeGoal).toInt();
  }

  String formatCurrentIntake(int currentIntake, int dailyIntakeGoal) {
    return '$currentIntake/$dailyIntakeGoal';
  }

  HydrateStatus extractHydrateStatus(
      Either<Failure, HydrateStatus> currentHydrateStatusEither) {
    return currentHydrateStatusEither.fold(
      (error) => null,
      (currentHydrateStatus) => currentHydrateStatus,
    );
  }
}

class CalculateWavesPercentageParams {
  double updatedValue;
  double waterMaximumHeight;

  CalculateWavesPercentageParams({
    @required this.updatedValue,
    @required this.waterMaximumHeight,
  });
}
