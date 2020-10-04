import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/domain/usecases/kg_to_lbs_converter.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  KgToLbsConverter kgToLbsConverter;

  setUp(
    () {
      kgToLbsConverter = KgToLbsConverter();
    },
  );

  test(
    'should return [Right(220)], when 100 kgs is provided',
    () async {
      final actualResult = await kgToLbsConverter(100);
      final expectedResult = Right(220);

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return [Right(218)], when 99 kgs is provided',
    () async {
      final actualResult = await kgToLbsConverter(99);
      final expectedResult = Right(218);

      expect(actualResult, expectedResult);
    },
  );

  test(
    'should return [Left(NegativeNumberFailure())], when a negative number is provided',
    () async {
      final actualResult = await kgToLbsConverter(-1);
      final expectedResult = Left(NegativeNumberFailure(CANT_PROVIDE_NEGATIVE_NUMBER));

      expect(actualResult, expectedResult);
    },
  );
}
