import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/model/local_hydrate_status.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';

class HydrateStatusToLocalHydrateStatusMapper
    extends Mapper<LocalHydrateStatus, HydrateStatus> {
  @override
  Future<LocalHydrateStatus> map(HydrateStatus origin) {
    return Future.value(
      LocalHydrateStatus(
        hydrationPercentage: origin.hydrationPercentage,
        formattedCurrentIntake: origin.formattedCurrentIntake,
        dailyIntakeGoal: origin.dailyIntakeGoal,
        currentIntake: origin.currentIntake,
        date: origin.date,
      ),
    );
  }
}
