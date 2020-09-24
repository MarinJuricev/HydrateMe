import 'package:HydrateMe/domain/model/hydrate_status.dart';

abstract class WaterIntakeRepository{

  Future<void> saveCurrentWaterIntake(HydrateStatus currentStatus);
  Future<HydrateStatus> getCurrentWaterIntake();
}