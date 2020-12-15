import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:dartz/dartz.dart';

import '../../core/failure/base_failure.dart';
import '../../core/usecase/base_usecase.dart';

const per30MinutesPerActivity = 30;
const additional12Ounces = 12;

class CalculateAdditionalWaterIntakePerActivity
    extends BaseUseCase<int, ActivityLevel> {
  @override
  Future<Either<Failure, int>> call(ActivityLevel activityInMinutes) async {
    final mapActivityToMinutes = activityInMinutes.mapToMinutes();

    // Intake with water activity
    // {activity} / 30 × 12 = 30 ounces of additional water per day.
    final additionalWaterInOunces =
        (mapActivityToMinutes / per30MinutesPerActivity * additional12Ounces)
            .toInt();

    return Future.value(Right(additionalWaterInOunces));
  }
}
