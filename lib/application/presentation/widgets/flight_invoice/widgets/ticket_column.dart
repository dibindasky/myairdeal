import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class TicketColumn extends StatelessWidget {
  final String label;
  final String? value;
  final String? subValue;
  final bool isBold;
  final bool isSubValueColumn;
  final CrossAxisAlignment? crossAxisAlignment;
  final TextStyle? valueStyle;
  final TextStyle? lebelStyle;
  final TextStyle? subValueStyle;
  const TicketColumn({
    super.key,
    this.subValueStyle,
    this.valueStyle,
    this.lebelStyle,
    required this.label,
    this.subValue,
    this.value,
    this.isBold = false,
    this.isSubValueColumn = false,
    this.crossAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      children: [
        kHeight5,
        Text(
          label,
          style: lebelStyle ??
              textThinStyle1.copyWith(
                  color: kGreyDark,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w700),
        ),
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
      ],
    );
  }
}
