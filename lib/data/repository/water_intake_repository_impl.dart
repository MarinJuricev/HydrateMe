import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:HydrateMe/domain/repository/water_intake_repository.dart';

class WaterIntakeRepositoryImpl extends WaterIntakeRepository{

//TODO for now just serve as a in-memory solution
HydrateStatus currentHydrationStatus;

@override
  Future<HydrateStatus> getCurrentWaterIntake() async{
    return Future.value(currentHydrationStatus);
  }

  @override
  Future<void> saveCurrentWaterIntake(HydrateStatus currentStatus) async{
    currentHydrationStatus = currentStatus;

    return Future.value(null);
  }
}

  
