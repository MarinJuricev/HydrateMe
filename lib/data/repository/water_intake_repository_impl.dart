import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/data/data_source/water_intake_local_data_source.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/repository/water_intake_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class WaterIntakeRepositoryImpl extends WaterIntakeRepository {
  final WaterIntakeLocalDataSource waterIntakeLocalDataSource;

// TODO for now just serve as a in-memory solution
// TODO for now hard code a fake initial value to suppor the skip calculation feature until we save the HydrateStatus into localPersistence
  HydrateStatus currentHydrationStatus = HydrateStatus(
    currentIntake: 2000,
    dailyIntakeGoal: 2000,
    date: DateTime.now(),
    formattedCurrentIntake: '2000',
    hydrationPercentage: 1.0,
  );

  WaterIntakeRepositoryImpl(
    @required this.waterIntakeLocalDataSource,
  );

  @override
  Future<Either<Failure, HydrateStatus>> getCurrentWaterIntake() async {
    return Future.value(Right(currentHydrationStatus));
  }

  @override
  Future<Either<Failure, void>> saveCurrentWaterIntake(
      HydrateStatus currentStatus) async {
    currentHydrationStatus = currentStatus;

    return Future.value(Right(null));
  }
}
