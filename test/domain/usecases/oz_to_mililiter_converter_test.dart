import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/domain/usecases/oz_to_milliliter_converter.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  OzToMIliliterConverter _ozToMIliliterConverter;

  setUp(
    () {
      _ozToMIliliterConverter = OzToMIliliterConverter();
    },
  );

  test(
    'should return Left(NegativeNumberFailure()) when a negative number is provided',
    () async {
      final actualResult = await _ozToMIliliterConverter(-1);
      const expectedResult =
          Left(NegativeNumberFailure(cantProvideNegativeNumber));

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return [Right(2957)], when 100 oz is provided',
    () async {
      final actualResult = await _ozToMIliliterConverter(100);
      const expectedResult = Right(2957);

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return [Right(2957)], when 100 oz is provided',
    () async {
      final actualResult = await _ozToMIliliterConverter(100);
      const expectedResult = Right(2957);

      expect(actualResult, expectedResult);
    },
  );
}
