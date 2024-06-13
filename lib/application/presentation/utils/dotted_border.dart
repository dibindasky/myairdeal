import 'dart:ui';

import 'package:flutter/material.dart';

class DashedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dashLength;
  final double dashSpacing;

  DashedBorderPainter({
    required this.color,
    required this.strokeWidth,
    required this.dashLength,
    required this.dashSpacing,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final Path path = Path();
    path.addRect(Rect.fromLTWH(0, 0, size.width, size.height));

    final double dashWidth = dashLength;
    final double dashSpace = dashSpacing;
    double distance = 0.0;

    for (PathMetric pathMetric in path.computeMetrics()) {
      while (distance < pathMetric.length) {
        final double currentDashLength = distance + dashWidth;
        if (currentDashLength < pathMetric.length) {
          final Tangent? startTangent =
              pathMetric.getTangentForOffset(distance);
          final Tangent? endTangent =
              pathMetric.getTangentForOffset(currentDashLength);
          if (startTangent != null && endTangent != null) {
            canvas.drawLine(startTangent.position, endTangent.position, paint);
          }
        }
        distance += dashWidth + dashSpace;
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
