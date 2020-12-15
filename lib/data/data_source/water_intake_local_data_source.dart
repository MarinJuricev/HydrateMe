import 'package:HydrateMe/core/error/exceptions.dart';
import 'package:HydrateMe/data/model/local_hydrate_status.dart';
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

  static const hydrateStatusBox = 'HYDRATE_STATUS_BOX';

  WaterIntakeLocalDataSourceImpl({
    @required this.localPersistenceProvider,
    @required this.hydrateStatusToLocalHydrateStatusMapper,
    @required this.localHydrateStatusToHydrateStatusMapper,
  });

  @override
  Future<void> saveWaterIntake(HydrateStatus hydrateStatus) async {
    return localPersistenceProvider.saveKeyValuePair(
      boxToSaveInto: hydrateStatusBox,
      valueToSave:
          await hydrateStatusToLocalHydrateStatusMapper.map(hydrateStatus),
    );
  }

  @override
  Future<HydrateStatus> getWaterIntake() async {
    final LocalHydrateStatus localResult =
        await localPersistenceProvider.getFromKeyValuePair(
      boxToGetDataFrom: hydrateStatusBox,
    ) as LocalHydrateStatus;

    if (localResult != null) {
      return localHydrateStatusToHydrateStatusMapper.map(localResult);
    } else {
      throw CacheException();
    }
  }
}
