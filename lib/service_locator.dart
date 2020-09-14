import 'package:HydrateMe/domain/usecases/calculate_additional_water_intake_per_activity.dart';
import 'package:HydrateMe/domain/usecases/calculate_daily_water_intake.dart';
import 'package:HydrateMe/domain/usecases/kg_to_lbs_converter.dart';
import 'package:HydrateMe/domain/usecases/oz_to_milliliter_converter.dart';
import 'package:get_it/get_it.dart';

import 'data/data_source/local_persistence_provider.dart';
import 'domain/usecases/calculate_waves_percentage.dart';
import 'presentation/features/calculate_water_intake/bloc/calculate_water_intake_bloc.dart';
import 'presentation/features/display_current_water_intake/bloc/water_intake_bloc.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  //Bloc
  getIt.registerFactory(
      () => WaterIntakeBloc(getIt<CalculateWavesPercentage>()));
  getIt.registerFactory(() => CalculateWaterIntakeBloc(getIt<CalculateDailyWaterIntake>()));

  //Usecase
  getIt.registerFactory(() => CalculateWavesPercentage());
  getIt.registerFactory(() => CalculateAdditionalWaterIntakePerActivity());
  getIt.registerFactory(() => KgToLbsConverter());
  getIt.registerFactory(() => OzToMIliliterConverter());
  getIt.registerFactory(
    () => CalculateDailyWaterIntake(
      getIt<KgToLbsConverter>(),
      getIt<CalculateAdditionalWaterIntakePerActivity>(),
      getIt<OzToMIliliterConverter>(),
    ),
  );

  //Datasources
  // External
  getIt.registerLazySingleton<LocalPersistenceProvider>(
    () => LocalPersistenceProviderImpl(),
  );
}
