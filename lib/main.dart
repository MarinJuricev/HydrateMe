import 'package:HydrateMe/hydrate_button.dart';
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
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Positioned.fill(child: Particles(30)),
              // HydrationProgress(),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    child: Waves(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      HydrateButton(title: 'Deny'),
                      HydrateButton(title: 'Confirm'),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
