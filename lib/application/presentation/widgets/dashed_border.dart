import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/widgets/dotted_border.dart';

class DashedBorder extends StatelessWidget {
  final Widget child;
  final Color? color;
  final double strokeWidth;
  final double dashLength;
  final double dashSpacing;

  const DashedBorder({
    super.key,
    required this.child,
    this.color,
    this.strokeWidth = 2.0,
    this.dashLength = 5.0,
    this.dashSpacing = 3.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashedBorderPainter(
        color: color ?? kBlack,
        strokeWidth: strokeWidth,
        dashLength: dashLength,
        dashSpacing: dashSpacing,
      ),
      child: child,
    );
  }
}
