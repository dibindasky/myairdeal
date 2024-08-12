import 'package:flutter/material.dart';
import 'dart:math';
import 'package:myairdeal/application/presentation/utils/colors.dart';

class ComplexLoader extends StatefulWidget {
  final double size;
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;

  const ComplexLoader({
    Key? key,
    this.size = 100,
    this.color1 = kBlueDark,
    this.color2 = kBlueLight,
    this.color3 = kBlueDark,
    this.color4 = kBlueLight,
  }) : super(key: key);

  @override
  _ComplexLoaderState createState() => _ComplexLoaderState();
}

class _ComplexLoaderState extends State<ComplexLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          size: Size(widget.size, widget.size),
          painter: LoaderPainter(
            progress: _controller.value,
            color1: widget.color1,
            color2: widget.color2,
            color3: widget.color3,
            color4: widget.color4,
          ),
        );
      },
    );
  }
}

class LoaderPainter extends CustomPainter {
  final double progress;
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;

  LoaderPainter({
    required this.progress,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 3, size.height / 3);
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8;

    void drawArc(
        double radius, Color color, double startAngle, double sweepAngle) {
      paint.color = color;
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweepAngle,
        false,
        paint,
      );
    }

    // Outer ring
    drawArc(105, color1, progress * 2 * pi, pi / 2);

    // Inner ring
    drawArc(35, color2, -progress * 2 * pi, pi / 2);

    // Left middle ring
    drawArc(70, color3, progress * 2 * pi - pi / 2, pi / 2);

    // Right middle ring
    drawArc(70, color4, -progress * 2 * pi + pi, pi / 2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
