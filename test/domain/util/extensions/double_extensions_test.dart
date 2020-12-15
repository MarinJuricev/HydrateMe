import 'package:flutter_test/flutter_test.dart';
import 'package:HydrateMe/domain/util/extensions/double_extensions.dart';

void main() {
  test('formatToTwoDecimal should return 3.5 when 3.499999 is provided', () {
    final actualResult = 3.499999.formatToTwoDecimal();
    const expectedResult = 3.5;

    expect(expectedResult, actualResult);
  });

  test('formatToTwoDecimal should return 4.0 when 3.9999 is provided', () {
    final actualResult = 3.9999.formatToTwoDecimal();
    const expectedResult = 4;

    expect(expectedResult, actualResult);
  });

  test('formatToTwoDecimal should return 3.55 when 3.55 is provided', () {
    final actualResult = 3.55.formatToTwoDecimal();
    const expectedResult = 3.55;

    expect(expectedResult, actualResult);
  });
}
