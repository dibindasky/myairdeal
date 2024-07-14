import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class TicketColumn extends StatelessWidget {
  final String? label;
  final String? value;
  final String? subValue;
  final String? flightCode;
  final bool isBold;
  final CrossAxisAlignment? crossAxisAlignment;
  final TextStyle? valueStyle;
  final TextStyle? lebelStyle;
  final TextStyle? subValueStyle;
  final TextStyle? exitStyle;
  final String? exit;

  const TicketColumn({
    this.label,
    this.value,
    this.subValue,
    this.exit,
    super.key,
    this.flightCode,
    this.exitStyle,
    this.subValueStyle,
    this.valueStyle,
    this.lebelStyle,
    this.isBold = false,
    this.crossAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      children: [
        kHeight5,
        label != null
            ? Text(
                label!,
                style: lebelStyle ??
                    textThinStyle1.copyWith(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.ellipsis,
                    ),
              )
            : kEmpty,
        kHeight5,
        value != null
            ? Text(
                value!,
                style: valueStyle ??
                    TextStyle(
                      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                      fontSize: 18,
                    ),
              )
            : kEmpty,
        kHeight5,
        subValue != null
            ? Text(
                subValue!,
                style: subValueStyle ??
                    textThinStyle1.copyWith(color: kGreyDark, fontSize: 10.sp),
                overflow: TextOverflow.ellipsis,
              )
            : kEmpty,
        kHeight5,
        exit != null
            ? Text(
                exit!,
                style: exitStyle ??
                    textThinStyle1.copyWith(color: kGreyDark, fontSize: 10.sp),
                overflow: TextOverflow.ellipsis,
              )
            : kEmpty,
        kHeight5,
        flightCode != null
            ? Text(
                flightCode!,
                style: exitStyle ??
                    textThinStyle1.copyWith(color: kGreyDark, fontSize: 10.sp),
                overflow: TextOverflow.ellipsis,
              )
            : kEmpty
      ],
    );
  }
}
