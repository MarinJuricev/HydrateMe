import 'package:flutter/foundation.dart';

class HydrateStatus {
  // Used to render the waves widget, it should range from [0.0 - 1.0]
  double hydrationPercentage;
  // Used to display the % value of hydrationPercentage, EX: 0.7 should be mapped as 70%
  String percentage;

  HydrateStatus({
    @required this.hydrationPercentage,
    @required this.percentage,
  });

}
