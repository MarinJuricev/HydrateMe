import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/model/gender.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'local_user_data.g.dart';

@HiveType(typeId: 0)
class LocalUserData extends HiveObject with EquatableMixin {
  @HiveField(0)
  final TimeOfDay wakeUpTime;
  @HiveField(1)
  final TimeOfDay sleepTime;
  @HiveField(2)
  final int currentWeight;
  @HiveField(3)
  final Gender gender;
  @HiveField(4)
  final WeightType weightType;
  @HiveField(5)
  final ActivityLevel activityLevel;

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
