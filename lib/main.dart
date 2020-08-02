import 'package:HydrateMe/particles.dart';
import 'package:flutter/material.dart';

import 'waves.dart';

void main() {
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
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Stack(
          children: <Widget>[
            Positioned.fill(child: Particles(30)),
             Center(child: Waves()),
          ],
        ),
      ),
    );
  }
}
