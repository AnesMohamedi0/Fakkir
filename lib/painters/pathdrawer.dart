import 'dart:ui';

import 'package:flutter/material.dart';

class TreasureMapPathPainter extends CustomPainter {
  final double startX;
  final double startY;
  final double endX;
  final double endY;
  final double controlX;
  final double controlY;
  final Color color;
  final double strokeWidth;

  TreasureMapPathPainter({
    required this.startX,
    required this.startY,
    required this.endX,
    required this.endY,
    required this.controlX,
    required this.controlY,
    this.color = const Color.fromARGB(205, 66, 8, 0),
    this.strokeWidth = 4.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = color
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth
          ..strokeCap = StrokeCap.round
          ..strokeJoin = StrokeJoin.round
          ..isAntiAlias = true;

    final path =
        Path()
          ..moveTo(startX + 25, startY + 25)
          ..quadraticBezierTo(controlX, controlY, endX + 25, endY + 25);

    // Optionally, add a dashed effect for a treasure map style
    _drawDashedPath(canvas, path, paint, dashLength: 9, gapLength: 7);
  }

  void _drawDashedPath(
    Canvas canvas,
    Path path,
    Paint paint, {
    double dashLength = 10,
    double gapLength = 8,
  }) {
    final PathMetrics metrics = path.computeMetrics();
    for (final PathMetric metric in metrics) {
      double distance = 0.0;
      while (distance < metric.length) {
        final double nextDash = distance + dashLength;
        final bool isDashEnd = nextDash < metric.length;
        canvas.drawPath(
          metric.extractPath(distance, isDashEnd ? nextDash : metric.length),
          paint,
        );
        distance = nextDash + gapLength;
      }
    }
  }

  @override
  bool shouldRepaint(covariant TreasureMapPathPainter oldDelegate) {
    return startX != oldDelegate.startX ||
        startY != oldDelegate.startY ||
        endX != oldDelegate.endX ||
        endY != oldDelegate.endY ||
        controlX != oldDelegate.controlX ||
        controlY != oldDelegate.controlY ||
        color != oldDelegate.color ||
        strokeWidth != oldDelegate.strokeWidth;
  }
}
