import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

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
    // TODO add actual left/right check if the dataSource returns a failure return a left... WIP
    final test = await waterIntakeLocalDataSource.getWaterIntake();

    return Right(test);
  }

  @override
  Future<Either<Failure, void>> saveCurrentWaterIntake(
      HydrateStatus currentStatus) async {
// TODO add actual left/right check if the dataSource returns a failure return a left... WIP
    final test =
        await waterIntakeLocalDataSource.saveWaterIntake(currentStatus);

    return Right(test);
  }
}
