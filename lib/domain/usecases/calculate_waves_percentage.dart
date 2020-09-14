import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../core/failure/base_failure.dart';
import '../../core/usecase/base_usecase.dart';
import '../model/hydrate_status.dart';

class CalculateWavesPercentage
    extends BaseUseCase<HydrateStatus, CalculateWavesPercentageParams> {
  @override
  Future<Either<Failure, HydrateStatus>> call(
      CalculateWavesPercentageParams params) async {
    final hydrationPercentage = calculateHydrationPercentage(
        params.updatedValue, params.waterMaximumHeight);
    final percentage = formatPercentage(hydrationPercentage);

    return Right(
      HydrateStatus(
        hydrationPercentage: hydrationPercentage,
        percentage: percentage,
        currentIntake: 0,
        dailyIntakeGoal: 0
      ),
    );
  }

  double calculateHydrationPercentage(
      double updatedValue, double waterMaximumHeight) {
    var hydrationpercentage = updatedValue / waterMaximumHeight;

    if (hydrationpercentage > 1.0) {
      hydrationpercentage = 1.0;
    } else if (hydrationpercentage < 0.0) {
      hydrationpercentage = 0.0;
    }

    return hydrationpercentage;
  }

  String formatPercentage(double hydrationPercentage) {
    String roundedUpPercentage = roundUpPercentage(hydrationPercentage);

    return toPercentage(roundedUpPercentage);
  }

  String roundUpPercentage(hydrationPercentage) {
    return hydrationPercentage.toStringAsFixed(2);
  }

  String toPercentage(String roundedUpPercentage) {
    return '${(double.parse(roundedUpPercentage) * 100).toString()}%';
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
