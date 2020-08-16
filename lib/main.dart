import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/features/water_intake/bloc/water_intake_bloc.dart';
import 'presentation/features/water_intake/water_intake_page.dart';
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
      home: BlocProvider(
        create: (BuildContext context) => di.getIt<WaterIntakeBloc>(),
        child: WaterIntakePage(),
      ),
    );
  }
}
