import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../../core/failure/base_failure.dart';
import '../../core/usecase/base_usecase.dart';
import '../model/hydrate_status.dart';

class ResetHydrateStatus
    extends BaseUseCase<HydrateStatus, ResetHydrateStatusParams> {
  @override
  Future<Either<Failure, HydrateStatus>> call(
      ResetHydrateStatusParams params) async {
    final convertedDailyIntakeGoal =
        params.hydrateStatusToReset.dailyIntakeGoal.toString();

    return Future.value(
      Right(
        params.hydrateStatusToReset.copyWith(
          hydrationPercentage: HydrateStatus.INITIAL_HYDRATION_PERCENTRAGE,
          formattedCurrentIntake:
              '$convertedDailyIntakeGoal/$convertedDailyIntakeGoal',
          dailyIntakeGoal: params.hydrateStatusToReset.dailyIntakeGoal,
          currentIntake: params.hydrateStatusToReset.dailyIntakeGoal,
          date: params.updatedDate,
        ),
      ),
    );
  }
}

class ResetHydrateStatusParams extends Equatable {
  final HydrateStatus hydrateStatusToReset;
  final DateTime updatedDate;

  ResetHydrateStatusParams({
    @required this.hydrateStatusToReset,
    @required this.updatedDate,
  });

  @override
  List<Object> get props => [hydrateStatusToReset, updatedDate];
}
