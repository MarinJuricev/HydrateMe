import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/domain/repository/water_intake_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../core/failure/base_failure.dart';
import '../../core/usecase/base_usecase.dart';
import '../model/hydrate_status.dart';

class CalculateWavesPercentage
    extends BaseUseCase<HydrateStatus, CalculateWavesPercentageParams> {
  final WaterIntakeRepository waterIntakeRepository;

  CalculateWavesPercentage({@required this.waterIntakeRepository});

  @override
  Future<Either<Failure, HydrateStatus>> call(
      CalculateWavesPercentageParams params) async {
    final currentHydrateStatusEither =
        await waterIntakeRepository.getCurrentWaterIntake();

    final dailyIntakeGoal = extractDailyIntake(currentHydrateStatusEither);

    if (dailyIntakeGoal == 0) {
      return Left(NonExistentDailyIntake(DAILY_WATER_INTAKE_MUST_BE_DEFINED));
    }

    final hydrationPercentage = calculateHydrationPercentage(
      params.updatedValue,
      params.waterMaximumHeight,
    );

    final currentIntake =
        calculateCurrentIntake(hydrationPercentage, dailyIntakeGoal);
    final formattedCurrentIntake =
        formatCurrentIntake(currentIntake, dailyIntakeGoal);

    final updatedHydrateStatus = HydrateStatus(
      hydrationPercentage: hydrationPercentage,
      formattedCurrentIntake: formattedCurrentIntake,
      currentIntake: currentIntake,
      dailyIntakeGoal: dailyIntakeGoal,
    );

    await waterIntakeRepository.saveCurrentWaterIntake(updatedHydrateStatus);

    return Right(updatedHydrateStatus);
  }

  double calculateHydrationPercentage(
    double updatedValue,
    double waterMaximumHeight,
  ) {
    var hydrationpercentage = updatedValue / waterMaximumHeight;

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

  int extractDailyIntake(
      Either<Failure, HydrateStatus> currentHydrateStatusEither) {
    return currentHydrateStatusEither.fold(
      (error) => 0,
      (currentHydrateStatus) => currentHydrateStatus.dailyIntakeGoal,
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
