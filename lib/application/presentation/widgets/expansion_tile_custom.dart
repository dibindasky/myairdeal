import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class CustomExpansionTile extends StatefulWidget {
  const CustomExpansionTile(
      {super.key,
      this.isExpandable = true,
      required this.children,
      required this.child});
  final List<Widget> children;
  final Widget child;
  final bool isExpandable;

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: kBluePrimary), borderRadius: kRadius15),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            splashFactory: NoSplash.splashFactory,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: double.infinity,
              // padding: EdgeInsets.symmetric(vertical: 5.h),
              child: widget.child,
            ),
          ),
          AnimatedCrossFade(
            duration: const Duration(milliseconds: 300),
            crossFadeState: isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            firstChild: kEmpty,
            secondChild: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h),
              child: Column(
                children: widget.children,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
