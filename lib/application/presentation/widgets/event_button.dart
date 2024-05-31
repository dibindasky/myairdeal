import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  });

  final String text;
  final VoidCallback onTap;
  final double? width;
  final double? hieght;
  final Color? textColr;
  final Color? color;
  final double? borderRadius;

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
        child: Center(
          child: Text(
            text,
            style: textStyle1.copyWith(color: textColr ?? kWhite),
          ),
        ),
      ),
    );
  }
}
