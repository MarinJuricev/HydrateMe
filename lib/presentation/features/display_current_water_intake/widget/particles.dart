import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

import '../model/particle_model.dart';
import 'particle_painter.dart';

class Particles extends StatefulWidget {
  final int numberOfParticles;

  const Particles(this.numberOfParticles);

  @override
  _ParticlesState createState() => _ParticlesState();
}

class _ParticlesState extends State<Particles> {
  final Random random = Random();

  final List<ParticleModel> particles = [];

  @override
  void initState() {
    List.generate(widget.numberOfParticles, (index) {
      particles.add(ParticleModel(random));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LoopAnimation<int>(
      tween: ConstantTween(1),
      builder: (context, child, _) {
        final duration = DateTime.now().duration();
        _simulateParticles(duration);

        return CustomPaint(
          painter: ParticlePainter(particles),
        );
      },
    );
  }

  void _simulateParticles(Duration time) {
    particles.forEach((particle) => particle.maintainRestart(time));
  }
}
