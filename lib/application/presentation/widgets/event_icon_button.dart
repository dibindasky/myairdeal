import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class EventIconButton extends StatelessWidget {
  const EventIconButton(
      {super.key,
      this.text,
      required this.onTap,
      this.width,
      this.hieght,
      this.textColr,
      this.color,
      this.borderRadius,
      this.prefixIcon,
      this.suffixIcon,
      this.border});

  final String? text;
  final VoidCallback onTap;
  final double? width;
  final double? hieght;
  final Color? textColr;
  final Color? color;
  final double? borderRadius;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 150.w,
        height: hieght ?? 35.h,
        decoration: BoxDecoration(
          border: border ?? Border.all(),
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius ?? 9),
          ),
          color: color ?? ((themeController.theme.value == AppTheme.blue)
                    ? themeController.secondaryColor
                    : themeController.primaryColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixIcon ?? kEmpty,
            prefixIcon != null && text != null ? kWidth5 : kEmpty,
            text != null
                ? Text(
                    text!,
                    style: textStyle1.copyWith(color: textColr ?? kWhite),
                  )
                : kEmpty,
            suffixIcon != null && text != null ? kWidth10 : kEmpty,
            suffixIcon ?? kEmpty
          ],
        ),
      ),
    );
  }
}
