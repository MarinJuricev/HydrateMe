import 'dart:math';

import 'package:HydrateMe/particle_prop.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

class ParticleModel {
  Animatable tween;
  double size;
  Random random;
  Duration duration;
  Duration startTime;

  ParticleModel(this.random) {
    restart();
  }

  restart({Duration time = Duration.zero}) {
    final startPosition = Offset(-0.2 + 1.4 * random.nextDouble(), 1.2);
    final endPosition = Offset(-0.2 + 1.4 * random.nextDouble(), -0.2);

    duration = Duration(milliseconds: 3000 + random.nextInt(10000));
    startTime = time;

    tween = MultiTween<ParticleProp>()
      ..add(
          ParticleProp.width,
          Tween(begin: startPosition.dx, end: endPosition.dx),
          duration,
          Curves.easeInOutSine)
      ..add(
          ParticleProp.height,
          Tween(begin: startPosition.dy, end: endPosition.dy),
          duration,
          Curves.easeIn);

    size = 0.1 + random.nextDouble() * 0.25;
  }

  maintainRestart(Duration time) {
    if (progress() == 1.0) {
      restart(time: time);
    }
  }

  double progress() {
  return ((DateTime.now().duration() - startTime) / duration)
    .clamp(0.0, 1.0)
    .toDouble();
}
}
