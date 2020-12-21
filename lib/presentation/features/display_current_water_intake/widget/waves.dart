import 'package:HydrateMe/presentation/common/widgets/hydrate_waves.dart';
import 'package:HydrateMe/presentation/common/widgets/hydrate_waves_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/model/hydrate_status.dart';
import '../bloc/current_water_intake_bloc.dart';

class Waves extends StatefulWidget {
  final HydrateStatus currentHydrateStatus;

  static const waveHeightOffset = 2;

  const Waves({
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
    _wavesHeight = MediaQuery.of(context).size.height / Waves.waveHeightOffset;
    _offset = Offset(
      0,
      widget.currentHydrateStatus.hydrationPercentage * _wavesHeight,
    );

    return GestureDetector(
      onPanUpdate: (details) {
        final gestureYOffset = _offset.dy - details.delta.dy;
        if (gestureYOffset >= 0) {
          BlocProvider.of<CurrentWaterIntakeBloc>(context).add(
            CurrentWaterIntakeEvent.updated(
                updatedValue: gestureYOffset, waterMaximumHeight: _wavesHeight),
          );
        }
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height / Waves.waveHeightOffset,
        width: double.infinity,
        child: Stack(
          children: [
            Card(
              elevation: 12.0,
              margin: const EdgeInsets.only(right: 16.0, left: 16.0),
              clipBehavior: Clip.antiAlias,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(48)),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.decelerate,
                  height: _offset.dy,
                  child: WaveWidget(
                    duration: 1,
                    config: CustomConfig(
                      gradients: const [
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
                      blur: const MaskFilter.blur(BlurStyle.solid, 5),
                      gradientBegin: Alignment.centerLeft,
                      gradientEnd: Alignment.centerRight,
                    ),
                    waveAmplitude: 1.0,
                    backgroundColor: Colors.transparent,
                    size: const Size(double.infinity, double.infinity),
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                widget.currentHydrateStatus.formattedCurrentIntake,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
