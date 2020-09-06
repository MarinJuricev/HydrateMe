import 'package:HydrateMe/presentation/common/model/gender.dart';
import 'package:HydrateMe/presentation/common/model/weight_type.dart';
import 'package:dartz/dartz.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:flutter/foundation.dart';

import '../../core/usecase/base_usecase.dart';
import '../model/hydrate_status.dart';

class CalculateDailyWaterIntake
    extends BaseUseCase<HydrateStatus, CalculateDailyWaterIntakeParams> {
  @override
  Future<Either<Failure, HydrateStatus>> call(
      CalculateDailyWaterIntakeParams params) async {
    // Intake in LBS
    // 160 × 2/3 = 107 ounces (3.15 liters) of water per day. 
    throw UnimplementedError();
  }
}

class CalculateDailyWaterIntakeParams {
  Gender currentSelectedGender;
  WeightType currentSelectedWeightType;
  int currentWeight;
  int currentActivityInMinutes;

  CalculateDailyWaterIntakeParams({
    @required this.currentSelectedGender,
    @required this.currentSelectedWeightType,
    @required this.currentWeight,
    @required this.currentActivityInMinutes,
  });
}
