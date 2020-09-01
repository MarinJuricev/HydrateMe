import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hydrate_status.freezed.dart';

@freezed
abstract class HydrateStatus with _$HydrateStatus {
  factory HydrateStatus({
    // Used to render the waves widget, it should range from [0.0 - 1.0]
    @required double hydrationPercentage,
    // Used to display the % value of hydrationPercentage, EX: 0.7 should be mapped as 70%
    @required String percentage,
  }) = _HydrateStatus;
}
