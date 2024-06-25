import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class TicketColumn extends StatelessWidget {
  final String label;
  final String? value;
  final String? subValue;
  final bool isBold;
  final CrossAxisAlignment? crossAxisAlignment;
  final TextStyle? lebelStyle;
  final TextStyle? subValueStyle;
  const TicketColumn({
    this.subValueStyle,
    this.lebelStyle,
    super.key,
    required this.label,
    this.subValue,
    this.value,
    this.isBold = false,
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
              textThinStyle1.copyWith(color: kGreyDark, fontSize: 10.sp),
        ),
        kHeight5,
        value != null
            ? Text(
                value!,
                style: TextStyle(
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                  fontSize: 18,
                ),
              )
            : kEmpty,
        subValue != null
            ? Text(
                subValue!,
                style: subValueStyle ??
                    textThinStyle1.copyWith(color: kGreyDark, fontSize: 10.sp),
              )
            : kEmpty,
      ],
    );
  }
}
