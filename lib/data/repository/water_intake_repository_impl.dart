import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/repository/water_intake_repository.dart';
import 'package:dartz/dartz.dart';

class WaterIntakeRepositoryImpl extends WaterIntakeRepository {
//TODO for now just serve as a in-memory solution
  HydrateStatus currentHydrationStatus;

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
