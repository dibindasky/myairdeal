// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'dart:math';

import 'package:myairdeal/application/presentation/utils/colors.dart';

class PlaneLoader extends StatefulWidget {
  const PlaneLoader({super.key});

  @override
  _PlaneLoaderState createState() => _PlaneLoaderState();
}

class _PlaneLoaderState extends State<PlaneLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 120,
        height: 120,
        child: Stack(
          children: List.generate(20, (index) {
            final angle = (index * (2 * pi)) / 20;
            return AnimatedBuilder(
              animation: _controller,
              builder: (_, __) {
                final double planePosition = _controller.value *
                    2 *
                    pi; // Plane's position in the circle
                final bool isPlanePosition =
                    (angle - planePosition).abs() < 0.1;
                return Transform.translate(
                  offset: Offset(
                    50 * cos(angle),
                    50 * sin(angle),
                  ),
                  child: Transform.scale(
                    scale: isPlanePosition ? 1.5 : 0.5,
                    child: isPlanePosition
                        ? Icon(
                            Icons.airplanemode_active,
                            color: kGoldPrimary,
                            size: 30,
                          )
                        : Dot(
                            delay: index,
                            controller: _controller,
                          ),
                  ),
                );
              },
            );
          }),
        ),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final int delay;
  final AnimationController controller;

  const Dot({super.key, required this.delay, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: Tween<double>(begin: 0.5, end: 1.2).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(
          delay / 20,
          1.0,
          curve: Curves.easeInOut,
        ),
      )),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: kGoldPrimary,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
