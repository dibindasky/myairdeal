import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class CustomExpansionTile extends StatefulWidget {
  const CustomExpansionTile(
      {super.key,
      this.whileTap,
      this.isBorder = true,
      this.isExpandable = true,
      this.children,
      this.expansionColor,
      this.expand = false,
      required this.child});
  final List<Widget>? children;
  final Widget child;
  final bool isExpandable;
  final bool expand;
  final bool isBorder;
  final Color? expansionColor;
  final Function(bool)? whileTap;

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool isExpanded = false;
  
  @override
  initState() {
    isExpanded = widget.expand;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return Container(
      decoration: !widget.isBorder
          ? null
          : BoxDecoration(
              color: widget.expansionColor != null && isExpanded
                  ? widget.expansionColor
                  : null,
              border: Border.all(color: themeController.secondaryColor),
              borderRadius: kRadius15),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                if (widget.isExpandable) {
                  isExpanded = !isExpanded;
                }
                if (widget.whileTap != null) {
                  widget.whileTap!(isExpanded);
                }
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
              padding: EdgeInsets.symmetric(
                  vertical: widget.children != null ? 5.h : 0.h),
              child: widget.children != null
                  ? Column(
                      children: widget.children!,
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
