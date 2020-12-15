import 'package:dartz/dartz.dart';

import '../../core/common/constants/constants.dart';
import '../../core/failure/base_failure.dart';

class InputConverter {
  Either<Failure, int> stringToUnsignedInteger(String str) {
    try {
      if (str == null || str.isEmpty) {
        return const Left(ValidationFailure(requiredFieldsNotEmpty));
      }
      final integer = int.parse(str);
      if (integer < 0) {
        return const Left(ValidationFailure(positiveProvidedNumber));
      }
      return Right(integer);
    } on FormatException {
      return const Left(ValidationFailure(invalidNumberProvided));
    }
  }
}
