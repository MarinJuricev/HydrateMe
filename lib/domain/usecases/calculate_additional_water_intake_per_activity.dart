import 'package:HydrateMe/core/common/constants/constants.dart';
import 'package:dartz/dartz.dart';

import '../../core/failure/base_failure.dart';
import '../../core/usecase/base_usecase.dart';

const PER_30_MINUTES_PER_ACTIVITY = 30;
const ADDITIONAL_12_OUNCES = 12;

class CalculateAdditionalWaterIntakePerActivity extends BaseUseCase<int, int> {
  @override
  Future<Either<Failure, int>> call(int activityInMinutes) async {
    if (activityInMinutes < 0) {
      return Future.value(
          Left(NegativeNumberFailure(CANT_PROVIDE_NEGATIVE_NUMBER)));
    }

    // Intake with water activity
    // {activity} / 30 × 12 = 30 ounces of additional water per day.
    final additionalWaterInOunces =
        (activityInMinutes / PER_30_MINUTES_PER_ACTIVITY * ADDITIONAL_12_OUNCES)
            .toInt();

    return Future.value(Right(additionalWaterInOunces));
  }
}
