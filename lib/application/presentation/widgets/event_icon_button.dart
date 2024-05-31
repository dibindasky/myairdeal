import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class EventIconButton extends StatelessWidget {
  const EventIconButton({
    super.key,
    required this.text,
    required this.onTap,
    this.width,
    this.hieght,
    this.textColr,
    this.color,
    this.borderRadius,
    this.prefixIcon,
    this.suffixIcon,
  });

  final String text;
  final VoidCallback onTap;
  final double? width;
  final double? hieght;
  final Color? textColr;
  final Color? color;
  final double? borderRadius;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 150.w,
        height: hieght ?? 35.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius ?? 9),
            ),
            color: color ?? kBluePrimary),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixIcon ?? kEmpty,
            prefixIcon != null ? kWidth5 : kEmpty,
            Text(
              text,
              style: textStyle1.copyWith(color: textColr ?? kWhite),
            ),
            suffixIcon != null ? kWidth10 : kEmpty,
            suffixIcon ?? kEmpty
          ],
        ),
      ),
    );
  }
}
