import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../core/common/constants/constants.dart';
import '../../core/error/exceptions.dart';
import '../../core/failure/base_failure.dart';
import '../../domain/model/hydrate_status.dart';
import '../../domain/repository/water_intake_repository.dart';
import '../data_source/water_intake_local_data_source.dart';

class WaterIntakeRepositoryImpl extends WaterIntakeRepository {
  final WaterIntakeLocalDataSource waterIntakeLocalDataSource;

  WaterIntakeRepositoryImpl({
    @required this.waterIntakeLocalDataSource,
  });

  @override
  Future<Either<Failure, HydrateStatus>> getCurrentWaterIntake() async {
    try {
      final localResult = await waterIntakeLocalDataSource.getWaterIntake();

      return Right(localResult);
    } on CacheException {
      return Left(CacheFailure(ERROR_RETREIVING_LOCAL_DATA));
    }
  }

  @override
  Future<Either<Failure, void>> saveCurrentWaterIntake(
      HydrateStatus currentStatus) async {
    try {
      final localResult =
          await waterIntakeLocalDataSource.saveWaterIntake(currentStatus);

      return Right(localResult);
    } on CacheException {
      return Left(CacheFailure(ERROR_RETREIVING_LOCAL_DATA));
    }
  }
}
