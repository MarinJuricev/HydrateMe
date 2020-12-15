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
          const String str = '123';

          final result = inputConverter.stringToUnsignedInteger(str);

          expect(result, const Right(123));
        },
      );

      test(
        'should return a Failure when the string is not a integer',
        () async {
          const String str = 'abc';

          final result = inputConverter.stringToUnsignedInteger(str);

          expect(result, const Left(ValidationFailure(invalidNumberProvided)));
        },
      );

      test(
        'should return a Failure when the string is a negative integer',
        () async {
          const String str = '-123';

          final result = inputConverter.stringToUnsignedInteger(str);

          expect(result, const Left(ValidationFailure(positiveProvidedNumber)));
        },
      );

      test('should return a Failure when the provided string is null', () {
        const String str = null;

        final result = inputConverter.stringToUnsignedInteger(str);

        expect(result, const Left(ValidationFailure(requiredFieldsNotEmpty)));
      });

      test('should return a Failure when the provided string is empty', () {
        const String str = '';

        final result = inputConverter.stringToUnsignedInteger(str);

        expect(result, const Left(ValidationFailure(requiredFieldsNotEmpty)));
      });
    },
  );
}
