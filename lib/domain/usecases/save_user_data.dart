import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:HydrateMe/domain/repository/user_data_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class SaveUserData extends BaseUseCase<void, SaveUserDataParams> {
  final UserDataRepository userDataRepository;

  SaveUserData({
    @required this.userDataRepository,
  });

  @override
  Future<Either<Failure, void>> call(SaveUserDataParams params) async {
    final userDataToSave = UserData(
      wakeUpTime: params.wakeUpTime,
      sleepTime: params.sleepTime,
      currentWeight: params.currentWeight,
      gender: params.gender,
      weightType: params.weightType,
      activityLevel: params.activityLevel,
    );

    return await userDataRepository.saveUserData(userDataToSave);
  }
}

class SaveUserDataParams {
  TimeOfDay wakeUpTime;
  TimeOfDay sleepTime;
  int currentWeight;
  Gender gender;
  WeightType weightType;
  ActivityLevel activityLevel;

  SaveUserDataParams({
    @required TimeOfDay wakeUpTime,
    @required TimeOfDay sleepTime,
    @required int currentWeight,
    @required Gender gender,
    @required WeightType weightType,
    @required ActivityLevel activityLevel,
  });
}
