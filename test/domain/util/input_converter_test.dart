import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/domain/util/input_converter.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  InputConverter inputConverter;

  setUp(
    () {
      inputConverter = InputConverter();
    },
  );

  tearDown(() {
    inputConverter = null;
  });

  group(
    'stringToUnsignedInt',
    () {
      test(
        'should return an integer when the string represents an unsigned integer',
        () async {
          final str = '123';

          final result = inputConverter.stringToUnsignedInteger(str);

          expect(result, Right(123));
        },
      );

      test(
        'should return a Failure when the string is not a integer',
        () async {
          final str = 'abc';

          final result = inputConverter.stringToUnsignedInteger(str);

          expect(result, Left(ValidationFailure(INVALID_NUMBER_PROVIDED)));
        },
      );

      test(
        'should return a Failure when the string is a negative integer',
        () async {
          final str = '-123';

          final result = inputConverter.stringToUnsignedInteger(str);

          expect(result, Left(ValidationFailure(POSITIVE_PROVIDED_NUMBER)));
        },
      );

      test('should return a Failure when the provided string is null', () {
        final str = null;

        final result = inputConverter.stringToUnsignedInteger(str);

        expect(result, Left(ValidationFailure(REQUIRED_FIELDS_NOT_EMTPY)));
      });

      test('should return a Failure when the provided string is empty', () {
        final str = '';

        final result = inputConverter.stringToUnsignedInteger(str);

        expect(result, Left(ValidationFailure(REQUIRED_FIELDS_NOT_EMTPY)));
      });
    },
  );
}
