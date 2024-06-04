import 'dart:async';
import 'package:flutter/material.dart';

typedef ChildBuilder = Widget Function(int index, BuildContext context);
typedef OnPageCallBack = void Function(int index);

class PagviewAnimateBuilder extends StatefulWidget {
  const PagviewAnimateBuilder({
    Key? key,
    required this.pageController,
    required this.pageValue,
    required this.child,
    required this.pageCount,
    required this.onpageCallBack,
  }) : super(key: key);
  final PageController pageController;
  final double pageValue;
  final ChildBuilder child;
  final int pageCount;
  final OnPageCallBack onpageCallBack;

  @override
  PagviewAnimateBuilderState createState() => PagviewAnimateBuilderState();
}

class PagviewAnimateBuilderState extends State<PagviewAnimateBuilder> {
  late Timer _timer;
  bool next = false;

  @override
  void initState() {
    super.initState();

    // Auto-scroll every 3 seconds
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (widget.pageCount == 1) return;
      if (widget.pageController.page == widget.pageCount - 1 ||
          widget.pageController.page == 0) {
        next = !next;
      }
      if (next) {
        widget.pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        widget.pageController.previousPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    // Cancel the timer to prevent memory leaks
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: widget.onpageCallBack,
      controller: widget.pageController,
      itemCount: widget.pageCount,
      itemBuilder: (context, index) {
        double translation = 50.0;

        if (index == widget.pageValue.floor() + 1 ||
            index == widget.pageValue.floor() + 2) {
          return Transform.translate(
            offset: Offset(
              0.0,
              translation * (index - widget.pageValue),
            ),
            child: widget.child(index, context),
          );
        } else if (index == widget.pageValue.floor() ||
            index == widget.pageValue.floor() - 1) {
          return Transform.translate(
            offset: Offset(
              0,
              translation * (widget.pageValue - index),
            ),
            child: widget.child(index, context),
          );
        } else {
          return widget.child(index, context);
        }
      },
    );
  }
}
