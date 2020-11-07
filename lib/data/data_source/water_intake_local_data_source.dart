import 'package:HydrateMe/data/data_source/local_persistence_provider.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:flutter/foundation.dart';

abstract class WaterIntakeLocalDataSource {
  Future<void> saveWaterIntake(HydrateStatus hydrateStatus);
  Future<HydrateStatus> getWaterIntake();
}

class WaterIntakeLocalDataSourceImpl extends WaterIntakeLocalDataSource {
  final LocalPersistenceProvider localPersistenceProvider;

  static const HYDRATE_STATUS_BOX = 'HYDRATE_STATUS_BOX';

  WaterIntakeLocalDataSourceImpl({
    @required this.localPersistenceProvider,
  });

  @override
  Future<void> saveWaterIntake(HydrateStatus hydrateStatus) async {
    return await localPersistenceProvider.saveIntoPersistence(
      boxToSaveInto: HYDRATE_STATUS_BOX,
      valueToSave: await userDataToLocalUserDataMapper.map(userData),
    );
  }

  @override
  Future<HydrateStatus> getWaterIntake() async {
    final localResult = await localPersistenceProvider.(
        boxToGetDataFrom: HYDRATE_STATUS_BOX);

    return await localUserDataToUserDataMapper.map(localResult);
  }
}
