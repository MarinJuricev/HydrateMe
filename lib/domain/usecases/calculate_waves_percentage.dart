import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class CalculateWavesPercentage
    extends BaseUseCase<double, CalculateWavesPercentageParams> {
  @override
  Future<Either<Failure, double>> call(
      CalculateWavesPercentageParams params) async {
    return Right(params.updatedValue / params.waterMaximumHeight);
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
