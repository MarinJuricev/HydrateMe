import 'package:flutter/material.dart';

import '../model/particle_model.dart';
import '../model/particle_prop.dart';

class ParticlePainter extends CustomPainter {
  List<ParticleModel> particles;

  ParticlePainter(this.particles);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white.withAlpha(50);

    particles.forEach((particle) {
      final double progress = particle.progress();
      final animation = particle.tween.transform(progress);
      final double widthAnimationValue =
          animation.get(ParticleProp.width) as double;
      final double heightAnimationValue =
          animation.get(ParticleProp.height) as double;

      final position = Offset(
          widthAnimationValue * size.width, heightAnimationValue * size.height);

      canvas.drawCircle(position, size.width * 0.2 * particle.size, paint);
    });
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
