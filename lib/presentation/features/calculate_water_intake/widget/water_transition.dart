import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import '../../bottom_nav/bottom_navigation_page.dart';

class WaterTransition extends StatefulWidget {
  const WaterTransition({Key key}) : super(key: key);

  @override
  _WaterTransitionState createState() => _WaterTransitionState();
}

class _WaterTransitionState extends State<WaterTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  final _animationDuration = const Duration(milliseconds: 2500);

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: _animationDuration,
    )..addListener(() => setState(() {}));

    _controller.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          Future.delayed(
            const Duration(milliseconds: 1000),
          ).then(
            (value) => {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const BottomNavigationPage(),
                ),
              )
            },
          );
        }
      },
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _animation =
        Tween<double>(begin: 0, end: MediaQuery.of(context).size.height)
            .animate(_controller);

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: AnimatedContainer(
            duration: _animationDuration,
            curve: Curves.fastLinearToSlowEaseIn,
            height: _animation.value,
            child: WaveWidget(
              duration: 1,
              config: CustomConfig(
                gradients: const [
                  [
                    Color.fromRGBO(0, 100, 175, 0.4),
                    Color.fromRGBO(0, 100, 235, 0.8),
                  ],
                  [
                    Color.fromRGBO(0, 0, 235, 0.8),
                    Color.fromRGBO(0, 0, 200, 0.1),
                  ],
                ],
                durations: [10800, 19440],
                heightPercentages: [0.000, 0.030],
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
        const Center(
          //TODO Animate the ...
          child: Text(
            'Calculating your personal plan...',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
