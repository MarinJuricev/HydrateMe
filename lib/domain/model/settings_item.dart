import 'activity_level.dart';
import 'weight_type.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'gender.dart';

part 'settings_item.freezed.dart';

@freezed
abstract class SettingsItem with _$SettingsItem {
  const factory SettingsItem.updateWakeUpTime({
    @required TimeOfDay newWakeUpTime,
  }) = _UpdateWakeUpItem;
  const factory SettingsItem.updateSleepTime({
    @required TimeOfDay newSleepTime,
  }) = _UpdateSleepItem;
  const factory SettingsItem.updateCurrentWeight({
    @required int updatedWeight,
  }) = _UpdateCurrentWeightItem;
  const factory SettingsItem.updateGender({
    @required Gender updatedGender,
  }) = _UpdateGenderItem;
  const factory SettingsItem.updateWeightType({
    @required WeightType updatedWeightType,
  }) = _UpdateWeightType;
  const factory SettingsItem.updateActivityLevel({
    @required ActivityLevel updatedActivityLevel,
  }) = _UpdatedActivityLevel;
}
