import 'package:get_it/get_it.dart';

import 'presentation/features/water_intake/bloc/water_intake_bloc.dart';


final getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerFactory(() => WaterIntakeBloc());
}
