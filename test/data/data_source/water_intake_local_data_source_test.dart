import 'package:HydrateMe/core/error/exceptions.dart';
import 'package:HydrateMe/data/data_source/local_persistence_provider.dart';
import 'package:HydrateMe/data/data_source/water_intake_local_data_source.dart';
import 'package:HydrateMe/data/mapper/hydrate_status_to_local_hydrate_status_mapper.dart';
import 'package:HydrateMe/data/mapper/local_hydrate_status_to_hydrate_status.dart';
import 'package:HydrateMe/data/model/local_hydrate_status.dart';
import 'package:HydrateMe/domain/model/hydrate_status.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart' as matcher;
import 'package:mockito/mockito.dart';

class MockLocalPersistenceProvider extends Mock
    implements LocalPersistenceProvider {}

class MockHydrateStatusToLocalHydrateStatusMapper extends Mock
    implements HydrateStatusToLocalHydrateStatusMapper {}

class MockLocalHydrateStatusToHydrateStatusMapper extends Mock
    implements LocalHydrateStatusToHydrateStatusMapper {}

void main() {
  MockLocalPersistenceProvider _mockLocalPersistenceProvider;
  MockHydrateStatusToLocalHydrateStatusMapper
      _mockHydrateStatusToLocalHydrateStatusMapper;
  MockLocalHydrateStatusToHydrateStatusMapper
      _mockLocalHydrateStatusToHydrateStatusMapper;

  WaterIntakeLocalDataSource sut;

  final testDate = DateTime.now();

  final testHydrateStatus = HydrateStatus(
    currentIntake: 2500,
    dailyIntakeGoal: 2500,
    date: testDate,
    formattedCurrentIntake: '2500/2500',
    hydrationPercentage: 1.0,
  );

  final testLocalHydrateStatus = LocalHydrateStatus(
    currentIntake: 2500,
    dailyIntakeGoal: 2500,
    date: testDate,
    formattedCurrentIntake: '2500/2500',
    hydrationPercentage: 1.0,
  );

  setUp(
    () {
      _mockLocalPersistenceProvider = MockLocalPersistenceProvider();
      _mockHydrateStatusToLocalHydrateStatusMapper =
          MockHydrateStatusToLocalHydrateStatusMapper();
      _mockLocalHydrateStatusToHydrateStatusMapper =
          MockLocalHydrateStatusToHydrateStatusMapper();

      sut = WaterIntakeLocalDataSourceImpl(
        localPersistenceProvider: _mockLocalPersistenceProvider,
        hydrateStatusToLocalHydrateStatusMapper:
            _mockHydrateStatusToLocalHydrateStatusMapper,
        localHydrateStatusToHydrateStatusMapper:
            _mockLocalHydrateStatusToHydrateStatusMapper,
      );
    },
  );

  test(
    'saveWaterIntake should trigger localPersistenceProvider.saveKeyValuePair with HYDRATE_STATUS_BOX and the provided hydrateStatus',
    () async {
      when(_mockLocalPersistenceProvider.saveKeyValuePair(
        boxToSaveInto: WaterIntakeLocalDataSourceImpl.HYDRATE_STATUS_BOX,
        valueToSave: testHydrateStatus,
      )).thenAnswer((_) => Future.value(null));
      when(_mockHydrateStatusToLocalHydrateStatusMapper.map(testHydrateStatus))
          .thenAnswer((_) => Future.value(testLocalHydrateStatus));
      await sut.saveWaterIntake(testHydrateStatus);

      verify(
        _mockLocalPersistenceProvider.saveKeyValuePair(
          boxToSaveInto: WaterIntakeLocalDataSourceImpl.HYDRATE_STATUS_BOX,
          valueToSave: testLocalHydrateStatus,
        ),
      );
    },
  );

  test(
    'getWaterIntake should return a hydrateStatus object if its present inside localPersistence',
    () async {
      when(
        _mockLocalPersistenceProvider.getFromKeyValuePair(
          boxToGetDataFrom: WaterIntakeLocalDataSourceImpl.HYDRATE_STATUS_BOX,
        ),
      ).thenAnswer((_) => Future.value(testLocalHydrateStatus));
      when(_mockLocalHydrateStatusToHydrateStatusMapper
              .map(testLocalHydrateStatus))
          .thenAnswer((_) => Future.value(testHydrateStatus));

      final actualResult = await sut.getWaterIntake();

      expect(actualResult, testHydrateStatus);

      verify(
        _mockLocalPersistenceProvider.getFromKeyValuePair(
          boxToGetDataFrom: WaterIntakeLocalDataSourceImpl.HYDRATE_STATUS_BOX,
        ),
      );
      verify(_mockLocalHydrateStatusToHydrateStatusMapper
          .map(testLocalHydrateStatus));
    },
  );

  test(
    'getWaterIntake should return throw [CacheException] when there is not data in the local persistence',
    () async {
      when(
        _mockLocalPersistenceProvider.getFromKeyValuePair(
          boxToGetDataFrom: WaterIntakeLocalDataSourceImpl.HYDRATE_STATUS_BOX,
        ),
      ).thenAnswer((_) => Future.value(null));

      expect(() => sut.getWaterIntake(),
          throwsA(const matcher.TypeMatcher<CacheException>()));
    },
  );
}
