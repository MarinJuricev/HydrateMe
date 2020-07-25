import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'dart:math' as math;

class Waves extends StatefulWidget {
  Waves({Key key}) : super(key: key);

  @override
  _WavesState createState() => _WavesState();
}

class _WavesState extends State<Waves> with TickerProviderStateMixin {
  AnimationController _controller;

  var containerHeight = 200.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: AnimatedBuilder(
        animation: _controller,
        child: WaveWidget(
          duration: 1,
          config: CustomConfig(
            gradients: [
              [Colors.blue, Colors.lightBlue],
              [Color(0xFF396afc), Color(0xFF2948ff)],
            ],
            durations: [10800, 19440],
            heightPercentages: [0.40, 0.45],
            blur: MaskFilter.blur(BlurStyle.solid, 5),
            gradientBegin: Alignment.centerLeft,
            gradientEnd: Alignment.centerRight,
          ),
          waveAmplitude: 1.0,
          backgroundColor: Colors.transparent,
          size: Size(double.infinity, double.infinity),
        ),
        builder: (BuildContext context, Widget child) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 750),
            child: child,
            height: 500,
          );
        },
      ),
    );
  }
}
