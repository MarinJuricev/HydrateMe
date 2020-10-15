import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:HydrateMe/domain/model/weight_type.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'gender.dart';

part 'user_data.freezed.dart';

@freezed
abstract class UserData with _$UserData {
  factory UserData({
    @required TimeOfDay wakeUpTime,
    @required TimeOfDay sleepTime,
    @required int currentWeight,
    @required Gender gender,
    @required WeightType weightType,
    @required ActivityLevel activityLevel,
  }) = _UserData;
}
