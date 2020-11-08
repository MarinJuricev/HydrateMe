import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/model/local_hydrate_status.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';

class LocalHydrateStatusToHydrateStatusMapper
    extends Mapper<HydrateStatus, LocalHydrateStatus> {
  @override
  Future<HydrateStatus> map(LocalHydrateStatus origin) {
    return Future.value(
      HydrateStatus(
        hydrationPercentage: origin.hydrationPercentage,
        formattedCurrentIntake: origin.formattedCurrentIntake,
        dailyIntakeGoal: origin.dailyIntakeGoal,
        currentIntake: origin.currentIntake,
        date: origin.date,
      ),
    );
  }
}
