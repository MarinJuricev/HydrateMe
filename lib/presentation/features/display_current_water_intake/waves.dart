import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import '../../../domain/model/hydrate_status.dart';
import 'bloc/water_intake_bloc.dart';

class Waves extends StatefulWidget {
  final HydrateStatus currentHydrateStatus;

  static const WAVE_HEIGHT_OFFSET = 2;

  Waves({
    Key key,
    @required this.currentHydrateStatus,
  }) : super(key: key);

  @override
  _WavesState createState() => _WavesState();
}

class _WavesState extends State<Waves> {
  Offset _offset;
  double _wavesHeight;

  @override
  Widget build(BuildContext context) {
    _wavesHeight =
        MediaQuery.of(context).size.height / Waves.WAVE_HEIGHT_OFFSET;
    _offset = Offset(
      0,
      widget.currentHydrateStatus.hydrationPercentage * _wavesHeight,
    );

    return Container(
      height: MediaQuery.of(context).size.height / Waves.WAVE_HEIGHT_OFFSET,
      width: double.infinity,
      child: Stack(
        children: [
          Card(
            elevation: 12.0,
            margin: const EdgeInsets.only(right: 16.0, left: 16.0),
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(48)),
            ),
            child: GestureDetector(
              onPanUpdate: (details) {
                final gestureYOffset = _offset.dy - details.delta.dy;
                if (gestureYOffset >= 0) {
                  BlocProvider.of<WaterIntakeBloc>(context).add(
                    WaterIntakeEvent.updated(
                        updatedValue: gestureYOffset,
                        waterMaximumHeight: _wavesHeight),
                  );
                }
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
                        [
                          Color.fromRGBO(0, 100, 175, 0.4),
                          Color.fromRGBO(0, 100, 235, 0.8)
                        ],
                        [
                          Color.fromRGBO(0, 0, 235, 0.8),
                          Color.fromRGBO(0, 0, 200, 0.1)
                        ],
                      ],
                      durations: [10800, 19440],
                      heightPercentages: [0.0, 0.0],
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
            ),
          ),
          Center(
            child: Text(
              widget.currentHydrateStatus.formattedCurrentIntake,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
