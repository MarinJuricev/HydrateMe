import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../core/failure/base_failure.dart';
import '../../core/usecase/base_usecase.dart';
import '../model/hydrate_status.dart';
import '../repository/water_intake_repository.dart';

class GetCurrentHydrateStatus extends BaseUseCase<HydrateStatus, NoParams> {
  final WaterIntakeRepository waterIntakeRepository;

  GetCurrentHydrateStatus({@required this.waterIntakeRepository});

  @override
  Future<Either<Failure, HydrateStatus>> call(NoParams params) async {
    return waterIntakeRepository.getCurrentWaterIntake();
  }
}
