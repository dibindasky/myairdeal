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

    // Auto-scroll every 5 seconds
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
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
        double scaleFactor = .9;
        double scale =
            (1 - (widget.pageValue - index).abs()) * (1 - scaleFactor) +
                scaleFactor;

        if (index == widget.pageValue.floor() ||
            index == widget.pageValue.floor() + 1 ||
            index == widget.pageValue.floor() - 1) {
          return Transform.scale(
            scale: scale,
            child: widget.child(index, context),
          );
        } else {
          return Transform.scale(
            scale: scaleFactor,
            child: widget.child(index, context),
          );
        }
      },
    );
  }
}
