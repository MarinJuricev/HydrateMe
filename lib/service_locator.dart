import 'package:get_it/get_it.dart';

import 'data/data_source/local_persistence_provider.dart';
import 'domain/usecases/calculate_waves_percentage.dart';
import 'presentation/features/calculate_water_intake/bloc/calculate_water_intake_bloc.dart';
import 'presentation/features/display_current_water_intake/bloc/water_intake_bloc.dart';


final getIt = GetIt.instance;

Future<void> init() async {
  //Bloc
  getIt.registerFactory(() => WaterIntakeBloc(getIt<CalculateWavesPercentage>()));
  getIt.registerFactory(() => CalculateWaterIntakeBloc());

  //Usecase
  getIt.registerFactory(() => CalculateWavesPercentage());

  //Datasources
  // External
  getIt.registerLazySingleton<LocalPersistenceProvider>(
    () => LocalPersistenceProviderImpl(),
  );
}
