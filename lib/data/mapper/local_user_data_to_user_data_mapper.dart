import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/model/local_activity_level.dart';
import 'package:HydrateMe/data/model/local_gender.dart';
import 'package:HydrateMe/data/model/local_user_data.dart';
import 'package:HydrateMe/data/model/local_weight_type.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:flutter/material.dart';

class LocalUserDataToUserDataMapper extends Mapper<UserData, LocalUserData> {
  final Mapper<Gender, LocalGender> genderMapper;
  final Mapper<WeightType, LocalWeightType> weightTypeMapper;
  final Mapper<ActivityLevel, LocalActivityLevel> activityLevelMapper;

  LocalUserDataToUserDataMapper({
    @required this.genderMapper,
    @required this.weightTypeMapper,
    @required this.activityLevelMapper,
  });

  @override
  Future<UserData> map(LocalUserData origin) async {
    return Future.value(
      UserData(
        wakeUpTime: TimeOfDay(
          hour: origin.wakeUpTime.hour,
          minute: origin.wakeUpTime.minute,
        ),
        sleepTime: TimeOfDay(
          hour: origin.sleepTime.hour,
          minute: origin.sleepTime.minute,
        ),
        currentWeight: origin.currentWeight,
        gender: await genderMapper.map(origin.gender),
        weightType: await weightTypeMapper.map(origin.weightType),
        activityLevel: await activityLevelMapper.map(origin.activityLevel),
      ),
    );
  }
}
