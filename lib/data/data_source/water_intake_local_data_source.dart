import 'package:flutter/foundation.dart';

import '../../domain/model/hydrate_status.dart';
import '../mapper/hydrate_status_to_local_hydrate_status_mapper.dart';
import '../mapper/local_hydrate_status_to_hydrate_status.dart';
import 'local_persistence_provider.dart';

abstract class WaterIntakeLocalDataSource {
  Future<void> saveWaterIntake(HydrateStatus hydrateStatus);
  Future<HydrateStatus> getWaterIntake();
}

class WaterIntakeLocalDataSourceImpl extends WaterIntakeLocalDataSource {
  final LocalPersistenceProvider localPersistenceProvider;
  final HydrateStatusToLocalHydrateStatusMapper
      hydrateStatusToLocalHydrateStatusMapper;
  final LocalHydrateStatusToHydrateStatusMapper
      localHydrateStatusToHydrateStatusMapper;

  static const HYDRATE_STATUS_BOX = 'HYDRATE_STATUS_BOX';

  WaterIntakeLocalDataSourceImpl({
    @required this.localPersistenceProvider,
    @required this.hydrateStatusToLocalHydrateStatusMapper,
    @required this.localHydrateStatusToHydrateStatusMapper,
  });

  @override
  Future<void> saveWaterIntake(HydrateStatus hydrateStatus) async {
    return await localPersistenceProvider.saveKeyValuePair(
      boxToSaveInto: HYDRATE_STATUS_BOX,
      valueToSave:
          await hydrateStatusToLocalHydrateStatusMapper.map(hydrateStatus),
    );
  }

  @override
  Future<HydrateStatus> getWaterIntake() async {
    final localResult = await localPersistenceProvider.getFromKeyValuePair(
        boxToGetDataFrom: HYDRATE_STATUS_BOX);

    return await localHydrateStatusToHydrateStatusMapper.map(localResult);
  }
}
