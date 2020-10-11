import 'package:HydrateMe/data/service/notification_service.dart';
import 'package:get_it/get_it.dart';

import 'data/data_source/local_persistence_provider.dart';
import 'data/repository/notification_repository_impl.dart';
import 'data/repository/water_intake_repository_impl.dart';
import 'domain/repository/notification_repository.dart';
import 'domain/repository/water_intake_repository.dart';
import 'domain/usecases/calculate_additional_water_intake_per_activity.dart';
import 'domain/usecases/calculate_daily_water_intake.dart';
import 'domain/usecases/calculate_waves_percentage.dart';
import 'domain/usecases/get_current_hydrate_status.dart';
import 'domain/usecases/kg_to_lbs_converter.dart';
import 'domain/usecases/manual_add_water_intake.dart';
import 'domain/usecases/manual_decrease_water_intake.dart';
import 'domain/usecases/oz_to_milliliter_converter.dart';
import 'domain/util/input_converter.dart';
import 'presentation/features/calculate_water_intake/bloc/calculate_water_intake_bloc.dart';
import 'presentation/features/display_current_water_intake/bloc/current_water_intake_bloc.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  //Bloc
  getIt.registerFactory(
    () => CurrentWaterIntakeBloc(
      calculateWavesPercentage: getIt<CalculateWavesPercentage>(),
      getCurrentHydrateStatus: getIt<GetCurrentHydrateStatus>(),
      manualAddWaterIntake: getIt<ManualAddWaterIntake>(),
      manualDecraseWaterIntake: getIt<ManualDecreaseWaterIntake>(),
    ),
  );
  getIt.registerFactory(
      () => CalculateWaterIntakeBloc(getIt<CalculateDailyWaterIntake>()));

  //Usecase
  getIt.registerFactory(
    () => CalculateWavesPercentage(
      waterIntakeRepository: getIt<WaterIntakeRepository>(),
    ),
  );
  getIt.registerFactory(() => CalculateAdditionalWaterIntakePerActivity());
  getIt.registerFactory(() => KgToLbsConverter());
  getIt.registerFactory(() => OzToMIliliterConverter());
  getIt.registerFactory(() => CalculateDailyWaterIntake(
        kgToLbsconverter: getIt<KgToLbsConverter>(),
        calculateAdditionalWaterIntakePerActivity:
            getIt<CalculateAdditionalWaterIntakePerActivity>(),
        ozToMIliliterConverter: getIt<OzToMIliliterConverter>(),
        waterIntakeRepository: getIt<WaterIntakeRepository>(),
        notificationRepository: getIt<NotificationRepository>(),
      ));
  getIt.registerFactory(() => GetCurrentHydrateStatus(
      waterIntakeRepository: getIt<WaterIntakeRepository>()));
  getIt.registerFactory(() => ManualAddWaterIntake(
        inputConverter: getIt<InputConverter>(),
        repository: getIt<WaterIntakeRepository>(),
      ));
  getIt.registerFactory(() => ManualDecreaseWaterIntake(
        inputConverter: getIt<InputConverter>(),
        repository: getIt<WaterIntakeRepository>(),
      ));

  //Datasources
  getIt.registerLazySingleton<LocalPersistenceProvider>(
    () => LocalPersistenceProviderImpl(),
  );

  //Repository
  getIt.registerLazySingleton<WaterIntakeRepository>(
    () => WaterIntakeRepositoryImpl(),
  );
  getIt.registerLazySingleton<NotificationRepository>(
    () => NotificationRepositoryImpl(
      notificationService: getIt<NotificationService>(),
    ),
  );

  //Service
  getIt.registerLazySingleton<NotificationService>(
    () => NotificationServiceImpl(),
  );

  //Util
  getIt.registerFactory(() => InputConverter());
}
