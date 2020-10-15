import 'package:flutter/material.dart';

import 'core/notifications/notification_setup.dart';
import 'presentation/features/calculate_water_intake/pages/calculate_water_intake_page.dart';
import 'presentation/features/display_current_water_intake/widget/pages/display_current_water_intake_page.dart';
import 'service_locator.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupNotifications();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HydrateMe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: CalculateWaterIntakePage.CALCULATE_WATER_INTAKE_PAGE,
      routes: {
        CalculateWaterIntakePage.CALCULATE_WATER_INTAKE_PAGE: (context) =>
            CalculateWaterIntakePage(),
        DisplayCurrentWaterIntakePage.DISPLAY_CURRENT_WATER_INTAKE_PAGE:
            (context) => DisplayCurrentWaterIntakePage()
      },
    );
  }
}
