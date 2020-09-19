import 'package:HydrateMe/domain/usecases/calculate_additional_water_intake_per_activity.dart';
import 'package:HydrateMe/domain/usecases/oz_to_milliliter_converter.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../core/failure/base_failure.dart';
import '../../core/usecase/base_usecase.dart';
import '../../presentation/common/model/gender.dart';
import '../../presentation/common/model/weight_type.dart';
import '../model/hydrate_status.dart';
import 'kg_to_lbs_converter.dart';

const INVALID_CONVERTED_WEIGHT = -1;

class CalculateDailyWaterIntake
    extends BaseUseCase<HydrateStatus, CalculateDailyWaterIntakeParams> {
  final KgToLbsConverter kgToLbsconverter;
  final CalculateAdditionalWaterIntakePerActivity
      calculateAdditionalWaterIntakePerActivity;
  final OzToMIliliterConverter ozToMIliliterConverter;

  CalculateDailyWaterIntake({
    @required this.kgToLbsconverter,
    @required this.calculateAdditionalWaterIntakePerActivity,
    @required this.ozToMIliliterConverter,
  });

  @override
  Future<Either<Failure, HydrateStatus>> call(
      CalculateDailyWaterIntakeParams params) async {
    final int weightInLbs = await getWeightInLbs(
        params.currentWeight, params.currentSelectedWeightType);
    final int additionalOuncesForAcitivty =
        await getAdditionalWaterIntake(params.currentActivityInMinutes);

    // Intake in LBS
    // 2/3 Weight = X in ounces water per day ( we'll return in ml for HydrationStatus)
    // 160 × 2/3 = 107 ounces (3.15 liters) of water per day.
    final dailyWaterIntakeInOunces =
        (weightInLbs * 2 / 3) + additionalOuncesForAcitivty;
    final dailyWaterIntakeInMiliLiters =
        await getWaterIntakeInMiliLiters(dailyWaterIntakeInOunces);

    return Future.value(
      Right(
        HydrateStatus(
          hydrationPercentage: 0,
          percentage: "0%",
          dailyIntakeGoal: dailyWaterIntakeInMiliLiters,
          currentIntake: 0,
        ),
      ),
    );
  }

  Future<int> getWeightInLbs(
      int currentWeight, WeightType currentSelectedWeightType) async {
    if (currentSelectedWeightType == WeightType.kg) {
      final converterResult = await kgToLbsconverter(currentWeight);
      return converterResult.fold(
        (error) => INVALID_CONVERTED_WEIGHT,
        (convertedWeight) => convertedWeight,
      );
    } else {
      return currentWeight;
    }
  }

  Future<int> getAdditionalWaterIntake(int currentActivityInMinutes) async {
    final additionalWaterIntakeResult =
        await calculateAdditionalWaterIntakePerActivity(
            currentActivityInMinutes);
    return additionalWaterIntakeResult.fold(
      (error) => 0,
      (additionalWater) => additionalWater,
    );
  }

  Future<int> getWaterIntakeInMiliLiters(
      double dailyWaterIntakeInOunces) async {
    final waterInMiliLitersResult =
        await ozToMIliliterConverter(dailyWaterIntakeInOunces);
    return waterInMiliLitersResult.fold(
      (error) => 0,
      (waterInMililiters) => waterInMililiters,
    );
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
