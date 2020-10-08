import 'dart:math';

extension DoubleFormat on double {
  double formatToTwoDecimal() {
    double mod = pow(10.0, 2);
    return ((this * mod).round().toDouble() / mod);
  }
}
