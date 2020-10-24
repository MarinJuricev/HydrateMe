import 'package:HydrateMe/core/mapper/base_mapper.dart';
import 'package:HydrateMe/data/data_source/user_data_local_data_source.dart';
import 'package:HydrateMe/data/mapper/activity_level_to_local_activity_level_mapper.dart';
import 'package:HydrateMe/data/mapper/gender_to_local_gender_mapper.dart';
import 'package:HydrateMe/data/mapper/user_data_to_local_user_data_mapper.dart';
import 'package:HydrateMe/data/mapper/weight_type_to_local_weight_type_mapper.dart';
import 'package:HydrateMe/data/model/local_activity_level.dart';
import 'package:HydrateMe/data/model/local_user_data.dart';
import 'package:HydrateMe/data/service/notification_service.dart';
import 'package:HydrateMe/domain/model/user_data.dart';
import 'package:HydrateMe/domain/repository/user_data_repository.dart';
import 'package:HydrateMe/domain/usecases/save_user_data.dart';
import 'package:get_it/get_it.dart';

import 'data/data_source/local_persistence_provider.dart';
import 'data/data_source/time_provider.dart';
import 'data/model/local_gender.dart';
import 'data/model/local_weight_type.dart';
import 'data/repository/notification_repository_impl.dart';
import 'data/repository/user_data_repository_impl.dart';
import 'data/repository/water_intake_repository_impl.dart';
import 'domain/model/activity_level.dart';
import 'domain/model/gender.dart';
import 'domain/model/weight_type.dart';
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
        saveUserData: getIt<SaveUserData>(),
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
  getIt.registerFactory(
      () => SaveUserData(userDataRepository: getIt<UserDataRepository>()));

  //Datasources
  getIt.registerLazySingleton<LocalPersistenceProvider>(
    () => LocalPersistenceProviderImpl(),
  );
  getIt.registerLazySingleton<UserDataLocalDataSource>(
    () => UserDataLocalDataSourceImpl(
      localPersistenceProvider: getIt<LocalPersistenceProvider>(),
      userDataToLocalUserDataMapper: getIt<Mapper<LocalUserData, UserData>>(),
    ),
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
  getIt.registerLazySingleton<UserDataRepository>(
    () => UserDataRepositoryImpl(
      userDataLocalDataSource: getIt<UserDataLocalDataSource>(),
    ),
  );

  //Service
  getIt.registerLazySingleton<NotificationService>(
    () => NotificationServiceImpl(),
  );
  getIt.registerLazySingleton<TimeProvider>(
    () => TimeProviderImpl(),
  );

  // Data Mappers
  getIt.registerFactory<Mapper<LocalActivityLevel, ActivityLevel>>(
    () => ActivityLevelToLocalActivityLevelMapper(),
  );
  getIt.registerFactory<Mapper<LocalGender, Gender>>(
    () => GenderToLocalGenderMapper(),
  );
  getIt.registerFactory<Mapper<LocalWeightType, WeightType>>(
    () => WeightTypeToLocalWeightTypeMapper(),
  );
  getIt.registerFactory<Mapper<LocalUserData, UserData>>(
    () => UserDataToLocalUserDataMapper(
      timeProvider: getIt<TimeProvider>(),
      activityLevelMapper: getIt(),
      genderMaper: getIt(),
      weightTypeMapper: getIt(),
    ),
  );

  //Util
  getIt.registerFactory(() => InputConverter());
}
