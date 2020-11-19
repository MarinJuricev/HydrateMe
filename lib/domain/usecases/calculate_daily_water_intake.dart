import 'package:HydrateMe/data/data_source/time_provider.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/repository/notification_repository.dart';
import 'package:HydrateMe/domain/repository/water_intake_repository.dart';
import 'package:HydrateMe/domain/usecases/calculate_additional_water_intake_per_activity.dart';
import 'package:HydrateMe/domain/usecases/oz_to_milliliter_converter.dart';
import 'package:HydrateMe/domain/usecases/save_user_data.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../core/failure/base_failure.dart';
import '../../core/usecase/base_usecase.dart';
import '../model/gender.dart';
import '../model/weight_type.dart';
import '../model/hydrate_status.dart';
import 'kg_to_lbs_converter.dart';

const INVALID_CONVERTED_WEIGHT = -1;

class CalculateDailyWaterIntake
    extends BaseUseCase<HydrateStatus, CalculateDailyWaterIntakeParams> {
  final KgToLbsConverter kgToLbsconverter;
  final CalculateAdditionalWaterIntakePerActivity
      calculateAdditionalWaterIntakePerActivity;
  final OzToMIliliterConverter ozToMIliliterConverter;
  final WaterIntakeRepository waterIntakeRepository;
  final NotificationRepository notificationRepository;
  final SaveUserData saveUserData;
  final TimeProvider timeProvider;

  CalculateDailyWaterIntake({
    @required this.kgToLbsconverter,
    @required this.calculateAdditionalWaterIntakePerActivity,
    @required this.ozToMIliliterConverter,
    @required this.waterIntakeRepository,
    @required this.notificationRepository,
    @required this.saveUserData,
    @required this.timeProvider,
  });

  @override
  Future<Either<Failure, HydrateStatus>> call(
      CalculateDailyWaterIntakeParams params) async {
    final int weightInLbs = await getWeightInLbs(
      params.currentWeight,
      params.currentSelectedWeightType,
    );
    final int additionalOuncesForAcitivty = await getAdditionalWaterIntake(
      params.currentActivityInMinutes,
    );

    // Intake in LBS
    // 2/3 Weight = X in ounces water per day ( we'll return in ml for HydrationStatus)
    // 160 × 2/3 = 107 ounces (3.15 liters) of water per day.
    final dailyWaterIntakeInOunces =
        (weightInLbs * 2 / 3) + additionalOuncesForAcitivty;
    final dailyWaterIntakeInMiliLiters =
        await getWaterIntakeInMiliLiters(dailyWaterIntakeInOunces);

    final String currentIntakeType =
        getCurrentWeightType(params.currentSelectedWeightType);

    final hydrateStatus = HydrateStatus(
      hydrationPercentage: 1.0,
      dailyIntakeGoal: dailyWaterIntakeInMiliLiters,
      currentIntake: 0,
      formattedCurrentIntake:
          '0/$dailyWaterIntakeInMiliLiters $currentIntakeType',
      date: timeProvider.getCurrentDate(),
    );

    await waterIntakeRepository.saveCurrentWaterIntake(hydrateStatus);
    await notificationRepository.scheduleDailyNotifications(
      params.wakeUpTime,
      params.sleepTime,
    );
    await saveUserData(
      SaveUserDataParams(
        wakeUpTime: params.wakeUpTime,
        sleepTime: params.sleepTime,
        currentWeight: params.currentWeight,
        gender: params.currentSelectedGender,
        weightType: params.currentSelectedWeightType,
        activityLevel: params.currentActivityInMinutes,
      ),
    );

    return Future.value(Right(hydrateStatus));
  }

  Future<int> getWeightInLbs(
    int currentWeight,
    WeightType currentSelectedWeightType,
  ) async {
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

  Future<int> getAdditionalWaterIntake(
    ActivityLevel currentActivityInMinutes,
  ) async {
    final additionalWaterIntakeResult =
        await calculateAdditionalWaterIntakePerActivity(
            currentActivityInMinutes);
    return additionalWaterIntakeResult.fold(
      (error) => 0,
      (additionalWater) => additionalWater,
    );
  }

  Future<int> getWaterIntakeInMiliLiters(
    double dailyWaterIntakeInOunces,
  ) async {
    final waterInMiliLitersResult =
        await ozToMIliliterConverter(dailyWaterIntakeInOunces);
    return waterInMiliLitersResult.fold(
      (error) => 0,
      (waterInMililiters) => waterInMililiters,
    );
  }

  String getCurrentWeightType(WeightType currentSelectedWeightType) {
    if (currentSelectedWeightType == WeightType.kg) {
      return 'ml';
    } else {
      return 'oz';
    }
  }
}

class CalculateDailyWaterIntakeParams extends Equatable {
  final Gender currentSelectedGender;
  final WeightType currentSelectedWeightType;
  final ActivityLevel currentActivityInMinutes;
  final int currentWeight;
  final TimeOfDay wakeUpTime;
  final TimeOfDay sleepTime;

  CalculateDailyWaterIntakeParams({
    @required this.currentSelectedGender,
    @required this.currentSelectedWeightType,
    @required this.currentWeight,
    @required this.currentActivityInMinutes,
    @required this.wakeUpTime,
    @required this.sleepTime,
  });

  @override
  List<Object> get props => [
        currentSelectedGender,
        currentSelectedWeightType,
        currentActivityInMinutes,
        currentWeight,
        wakeUpTime,
        sleepTime,
      ];
}
