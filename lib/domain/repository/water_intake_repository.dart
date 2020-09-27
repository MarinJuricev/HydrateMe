import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:dartz/dartz.dart';

abstract class WaterIntakeRepository {
  Future<Either<Failure, void>> saveCurrentWaterIntake(
      HydrateStatus currentStatus);
  Future<Either<Failure, HydrateStatus>> getCurrentWaterIntake();
}
