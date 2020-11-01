import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hydrate_status.freezed.dart';

@freezed
abstract class HydrateStatus with _$HydrateStatus {
  factory HydrateStatus({
    // Used to render the waves widget, it should range from [0.0 - 1.0]
    @required double hydrationPercentage,
    @required String formattedCurrentIntake,
    @required int dailyIntakeGoal,
    @required int currentIntake,
    @required DateTime date,
  }) = _HydrateStatus;
}
