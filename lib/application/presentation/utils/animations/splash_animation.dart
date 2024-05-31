import 'package:flutter/material.dart';

class AnimatedGrowShrinkContainer extends StatefulWidget {
  final Widget child;
  final int milliseconds;
  final double begin;
  final double end;

  const AnimatedGrowShrinkContainer(
      {Key? key,
      required this.child,
      this.milliseconds = 2000,
      this.begin = 1.0,
      this.end = 0.8})
      : super(key: key);

  @override
  State<AnimatedGrowShrinkContainer> createState() =>
      _AnimatedGrowShrinkContainerState();
}

class _AnimatedGrowShrinkContainerState
    extends State<AnimatedGrowShrinkContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: widget.milliseconds));
    _scaleAnimation = Tween<double>(begin: widget.begin, end: widget.end)
        .animate(_controller)
      ..addListener(() => setState(() {}));
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: widget.child,
    );
  }
}
