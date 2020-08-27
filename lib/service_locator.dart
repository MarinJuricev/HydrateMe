import 'package:get_it/get_it.dart';

import 'domain/usecases/calculate_waves_percentage.dart';
import 'presentation/features/water_intake/bloc/water_intake_bloc.dart';


final getIt = GetIt.instance;

Future<void> init() async {
  //Bloc
  getIt.registerFactory(() => WaterIntakeBloc(getIt<CalculateWavesPercentage>()));

  //Usecase
  getIt.registerFactory(() => CalculateWavesPercentage());
}
