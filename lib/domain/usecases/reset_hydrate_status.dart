import 'package:HydrateMe/core/failure/base_failure.dart';
import 'package:HydrateMe/core/usecase/base_usecase.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:dartz/dartz.dart';

class ResetHydrateStatus extends BaseUseCase<HydrateStatus, HydrateStatus> {
  @override
  Future<Either<Failure, HydrateStatus>> call(HydrateStatus params) async {
    // Provide it through the params... don't create it again
    // TODO UNIT TEST
    final testDate = DateTime.now();

    return Future.value(
      Right(
        params.copyWith(
          hydrationPercentage: 1.0,
          formattedCurrentIntake:
              '${params.dailyIntakeGoal.toString()}/${params.dailyIntakeGoal.toString()}',
          dailyIntakeGoal: params.dailyIntakeGoal,
          currentIntake: params.dailyIntakeGoal,
          date: testDate,
        ),
      ),
    );
  }
}
