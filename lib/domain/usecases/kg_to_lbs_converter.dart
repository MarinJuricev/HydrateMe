import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class KgToLbsConverter extends BaseUseCase<int, int> {
  @override
  Future<Either<Failure, int>> call(int weightInKg) {

    if(weightInKg < 0){
      return Future.value(Left(NegativeNumberFailure(CANT_PROVIDE_NEGATIVE_NUMBER)));
    }

    final convertedWeight = weightInKg * 2.205;
    final convertedWeightWithoutDecimal = convertedWeight.toInt();

    return Future.value(Right(convertedWeightWithoutDecimal));
  }
}
