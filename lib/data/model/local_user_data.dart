import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'local_activity_level.dart';
import 'local_gender.dart';
import 'local_weight_type.dart';

part 'local_user_data.g.dart';

@HiveType(typeId: 0)
// Hive does no have out of the box support for TimeOfDay, only for DateTime
class LocalUserData extends HiveObject with EquatableMixin {
  @HiveField(0)
  final DateTime wakeUpTime;
  @HiveField(1)
  final DateTime sleepTime;
  @HiveField(2)
  final int currentWeight;
  @HiveField(3)
  final LocalGender gender;
  @HiveField(4)
  final LocalWeightType weightType;
  @HiveField(5)
  final LocalActivityLevel activityLevel;

  LocalUserData({
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
