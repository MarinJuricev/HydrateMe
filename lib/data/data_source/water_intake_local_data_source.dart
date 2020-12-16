import 'package:flutter/foundation.dart';

import '../../core/error/exceptions.dart';
import '../../core/mapper/base_mapper.dart';
import '../../domain/model/hydrate_status.dart';
import '../model/local_hydrate_status.dart';
import 'local_persistence_provider.dart';

abstract class WaterIntakeLocalDataSource {
  Future<void> saveWaterIntake(HydrateStatus hydrateStatus);
  Future<HydrateStatus> getWaterIntake();
}

class WaterIntakeLocalDataSourceImpl extends WaterIntakeLocalDataSource {
  final LocalPersistenceProvider localPersistenceProvider;
  final Mapper<LocalHydrateStatus, HydrateStatus>
      hydrateStatusToLocalHydrateStatusMapper;
  final Mapper<HydrateStatus, LocalHydrateStatus>
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
