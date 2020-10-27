import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/data_source/time_provider.dart';
import 'package:HydrateMe/data/model/local_activity_level.dart';
import 'package:HydrateMe/data/model/local_gender.dart';
import 'package:HydrateMe/data/model/local_user_data.dart';
import 'package:HydrateMe/data/model/local_weight_type.dart';
import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:flutter/foundation.dart';

class UserDataToLocalUserDataMapper extends Mapper<LocalUserData, UserData> {
  final TimeProvider timeProvider;
  final Mapper<LocalActivityLevel, ActivityLevel> activityLevelMapper;
  final Mapper<LocalGender, Gender> genderMapper;
  final Mapper<LocalWeightType, WeightType> weightTypeMapper;

  UserDataToLocalUserDataMapper({
    @required this.timeProvider,
    @required this.activityLevelMapper,
    @required this.genderMapper,
    @required this.weightTypeMapper,
  });

  @override
  Future<LocalUserData> map(UserData origin) async {
    final currentTime = timeProvider.getCurrentDate();

    return Future.value(
      LocalUserData(
        activityLevel: await activityLevelMapper.map(origin.activityLevel),
        currentWeight: origin.currentWeight,
        gender: await genderMapper.map(origin.gender),
        sleepTime: DateTime(
          currentTime.year,
          currentTime.month,
          currentTime.day,
          origin.sleepTime.hour,
          origin.sleepTime.minute,
        ),
        wakeUpTime: DateTime(
          currentTime.year,
          currentTime.month,
          currentTime.day,
          origin.wakeUpTime.hour,
          origin.wakeUpTime.minute,
        ),
        weightType: await weightTypeMapper.map(origin.weightType),
      ),
    );
  }
}
