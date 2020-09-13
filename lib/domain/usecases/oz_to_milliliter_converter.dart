import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

const double ONE_OZ_TO_MILILITER = 29.57353;

class OzToMIliliterConverter extends BaseUseCase<int, double> {
  @override
  Future<Either<Failure, int>> call(double waterInOzes) {
    if (waterInOzes < 0) {
      return Future.value(
          Left(NegativeNumberFailure(CANT_PROVIDE_NEGATIVE_NUMBER)));
    }

    final waterInMililiters = waterInOzes * ONE_OZ_TO_MILILITER;
    final waterInMililitersWithoutDecimal = waterInMililiters.toInt();

    return Future.value(Right(waterInMililitersWithoutDecimal));
  }
}
