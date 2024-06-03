import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class TextIconButtonOutlinedCustom extends StatelessWidget {
  const TextIconButtonOutlinedCustom(
      {super.key,
      required this.first,
      required this.second,
      this.spacer = kEmpty,
      this.texthead,
      this.onTap,
      this.padding,
      this.topRight,
      this.mainAxisAlignment = MainAxisAlignment.spaceEvenly});

  final Widget first;
  final Widget second;
  final String? texthead;
  final Widget? topRight;
  final MainAxisAlignment mainAxisAlignment;
  final VoidCallback? onTap;
  final Widget spacer;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        texthead != null
            ? Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(texthead!, style: textStyle1),
                  topRight != null ? topRight! : kEmpty,
                ],
              )
            : kEmpty,
        texthead != null ? kHeight5 : kEmpty,
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding:
                padding ?? EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.h),
            decoration: BoxDecoration(
                border: Border.all(color: kGrey), borderRadius: kRadius10),
            child: Row(
              mainAxisAlignment: mainAxisAlignment,
              children: [first, spacer, second],
            ),
          ),
        )
      ],
    );
  }
}
