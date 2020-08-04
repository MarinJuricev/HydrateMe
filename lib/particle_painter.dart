import 'package:HydrateMe/particle_model.dart';
import 'package:HydrateMe/particle_prop.dart';
import 'package:flutter/material.dart';

class ParticlePainter extends CustomPainter {
  List<ParticleModel> particles;

  ParticlePainter(this.particles);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white.withAlpha(50);

    particles.forEach((particle) {
      var progress = particle.progress();
      final animation = particle.tween.transform(progress);
      final widthAnimationValue = animation.get(ParticleProp.width);
      final heightAnimationValue = animation.get(ParticleProp.height);

      final position =
          Offset(widthAnimationValue * size.width, heightAnimationValue * size.height);

      canvas.drawCircle(position, size.width * 0.2 * particle.size, paint);
    });
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}