import 'dart:math';

extension DoubleFormat on double {
  double formatToTwoDecimal() {
    final num mod = pow(10.0, 2);
    return (this * mod).round().toDouble() / mod;
  }
}
