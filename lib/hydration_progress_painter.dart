import 'package:flutter/material.dart';
import 'dart:math' as math;

class HydrationProgressPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTRB(64, size.height / 2, size.width + 64, size.height * 2);
  final startAngle = math.pi;
  final sweepAngle = math.pi;
  final useCenter = false;
  final paint = Paint()
    ..color = Colors.white
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
