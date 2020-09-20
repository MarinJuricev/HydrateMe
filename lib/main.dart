import 'package:HydrateMe/presentation/features/display_current_water_intake/display_current_water_intake_page.dart';
import 'package:flutter/material.dart';

import 'presentation/features/calculate_water_intake/pages/calculate_water_intake_page.dart';
import 'service_locator.dart' as di;

void main() async {
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
