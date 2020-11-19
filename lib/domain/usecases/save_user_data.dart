import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../core/failure/base_failure.dart';
import '../../core/usecase/base_usecase.dart';
import '../model/activity_level.dart';
import '../model/gender.dart';
import '../model/user_data.dart';
import '../model/weight_type.dart';
import '../repository/user_data_repository.dart';

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

class SaveUserDataParams extends Equatable {
  final TimeOfDay wakeUpTime;
  final TimeOfDay sleepTime;
  final int currentWeight;
  final Gender gender;
  final WeightType weightType;
  final ActivityLevel activityLevel;

  SaveUserDataParams({
    @required this.wakeUpTime,
    @required this.sleepTime,
    @required this.currentWeight,
    @required this.gender,
    @required this.weightType,
    @required this.activityLevel,
  });

  @override
  List<Object> get props => [
        wakeUpTime,
        sleepTime,
        currentWeight,
        gender,
        weightType,
        activityLevel,
      ];
}
