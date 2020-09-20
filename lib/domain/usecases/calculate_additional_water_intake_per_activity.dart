import 'package:HydrateMe/domain/model/activity_level.dart';
import 'package:dartz/dartz.dart';

import '../../core/failure/base_failure.dart';
import '../../core/usecase/base_usecase.dart';

const PER_30_MINUTES_PER_ACTIVITY = 30;
const ADDITIONAL_12_OUNCES = 12;

class CalculateAdditionalWaterIntakePerActivity
    extends BaseUseCase<int, ActivityLevel> {
  @override
  Future<Either<Failure, int>> call(ActivityLevel activityInMinutes) async {
    final mapActivityToMinutes = activityInMinutes.mapToMinutes();

    // Intake with water activity
    // {activity} / 30 × 12 = 30 ounces of additional water per day.
    final additionalWaterInOunces = (mapActivityToMinutes /
            PER_30_MINUTES_PER_ACTIVITY *
            ADDITIONAL_12_OUNCES)
        .toInt();

    return Future.value(Right(additionalWaterInOunces));
  }
}
