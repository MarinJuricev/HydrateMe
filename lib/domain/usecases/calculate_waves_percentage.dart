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
    final hydrationPercentage = params.updatedValue / params.waterMaximumHeight;
    final percentage = calculatePercentage(hydrationPercentage);

    return Right(
      HydrateStatus(
        hydrationPercentage: hydrationPercentage,
        percentage: percentage,
      ),
    );
  }

  String calculatePercentage(double hydrationPercentage) {
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
