import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class Waves extends StatefulWidget {
  Waves({Key key}) : super(key: key);

  @override
  _WavesState createState() => _WavesState();
}

class _WavesState extends State<Waves> with TickerProviderStateMixin {
  static double _minHeight = 80;

  Offset _offset = Offset(0, _minHeight);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        _offset = Offset(0, _offset.dy - details.delta.dy);
        print('Offset is: $_offset');
        setState(() {});
      },
      child: Align(
        alignment: Alignment.bottomCenter,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 100),
          curve: Curves.decelerate,
          child: WaveWidget(
            duration: 1,
            config: CustomConfig(
              gradients: [
                [Colors.blue, Colors.lightBlue],
                [Color(0xFF396afc), Color(0xFF2948ff)],
              ],
              durations: [10800, 19440],
              heightPercentages: [0.05, 0.075],
              blur: MaskFilter.blur(BlurStyle.solid, 5),
              gradientBegin: Alignment.centerLeft,
              gradientEnd: Alignment.centerRight,
            ),
            waveAmplitude: 1.0,
            backgroundColor: Colors.transparent,
            size: Size(double.infinity, double.infinity),
          ),
          height: _offset.dy,
        ),
      ),
    );
  }
}
