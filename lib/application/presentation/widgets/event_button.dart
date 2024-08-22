import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class EventButton extends StatelessWidget {
  const EventButton({
    super.key,
    required this.text,
    required this.onTap,
    this.width,
    this.hieght,
    this.textColr,
    this.color,
    this.borderRadius,
    this.isBorder = false,
    this.fontSize,
    this.style,
    this.borderColor,
  });

  final String text;
  final VoidCallback onTap;
  final double? width;
  final double? hieght;
  final Color? textColr;
  final Color? color;
  final double? borderRadius;
  final double? fontSize;
  final Color? borderColor;
  final bool isBorder;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 150.w,
        height: hieght ?? 35.h,
        decoration: BoxDecoration(
            border: isBorder ? Border.all(color: borderColor ?? kBlack) : null,
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius ?? 9),
            ),
            color: color ??
                ((themeController.theme.value == AppTheme.blue)
                    ? themeController.secondaryColor
                    : themeController.primaryColor)),
        child: Center(
          child: Text(
            text,
            style: style ??
                textStyle1.copyWith(
                    color: textColr ?? kWhite, fontSize: fontSize ?? 15.sp),
          ),
        ),
      ),
    );
  }
}
