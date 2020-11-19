import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_user_data.freezed.dart';

@freezed
abstract class UiUserData with _$UiUserData {
  factory UiUserData({
    @required TimeOfDay wakeUpTime,
    @required TimeOfDay sleepTime,
    @required int currentWeight,
    @required String gender,
    @required String weightType,
    @required String activityLevel,
  }) = _UiUserData;
}
