import 'package:HydrateMe/hydration_progress_painter.dart';
import 'package:flutter/material.dart';

class HydrationProgress extends StatefulWidget {
  HydrationProgress({Key key}) : super(key: key);

  @override
  _HydrationProgressState createState() => _HydrationProgressState();
}

class _HydrationProgressState extends State<HydrationProgress> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: HydrationProgressPainter(),
        size: Size(250, 250),
    );
  }
}
