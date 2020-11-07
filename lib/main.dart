import 'package:HydrateMe/data/model/local_activity_level.dart';
import 'package:HydrateMe/data/model/local_gender.dart';
import 'package:HydrateMe/data/model/local_user_data.dart';
import 'package:HydrateMe/data/model/local_weight_type.dart';
import 'package:HydrateMe/presentation/features/bottom_nav/bottom_navigation_page.dart';
import 'package:HydrateMe/presentation/features/display_current_water_intake/bloc/current_water_intake_bloc.dart';
import 'package:HydrateMe/presentation/features/settings/bloc/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/notifications/notification_setup.dart';
import 'presentation/features/calculate_water_intake/pages/calculate_water_intake_page.dart';
import 'service_locator.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //TODO WRAP THIS SOMEWHERE LIKE LocalPersistence.init()
  await Hive.initFlutter();
  Hive.registerAdapter<LocalUserData>(LocalUserDataAdapter());
  Hive.registerAdapter<LocalGender>(LocalGenderAdapter());
  Hive.registerAdapter<LocalWeightType>(LocalWeightTypeAdapter());
  Hive.registerAdapter<LocalActivityLevel>(LocalActivityLevelAdapter());

  await setupNotifications();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CurrentWaterIntakeBloc>(
          create: (BuildContext context) => di.getIt<CurrentWaterIntakeBloc>(),
        ),
        BlocProvider<SettingsBloc>(
          create: (BuildContext context) => di.getIt<SettingsBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'HydrateMe',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: CalculateWaterIntakePage.CALCULATE_WATER_INTAKE_PAGE,
        routes: {
          CalculateWaterIntakePage.CALCULATE_WATER_INTAKE_PAGE: (context) =>
              CalculateWaterIntakePage(),
          BottomNavigationPage.BOTTOM_NAVIGATION_PAGE: (context) =>
              BottomNavigationPage()
        },
      ),
    );
  }
}
