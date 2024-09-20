import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/network_image_loader.dart';

class TicketColumn extends StatelessWidget {
  final String? label;
  final String? value;
  final String? subValue;
  final String? flightCode;
  final bool isBold;
  final String? cabinBaggage;
  final String? checkinBaggage;
  final CrossAxisAlignment? crossAxisAlignment;
  final TextStyle? valueStyle;
  final TextStyle? lebelStyle;
  final TextStyle? subValueStyle;
  final TextStyle? exitStyle;
  final TextStyle? cabinBaggageStyle;
  final TextStyle? checkinBaggageStyle;
  final String? exit;
  final String? airlineCode;

  const TicketColumn({
    this.airlineCode,
    this.label,
    this.value,
    this.subValue,
    this.exit,
    super.key,
    this.flightCode,
    this.cabinBaggage,
    this.checkinBaggage,
    this.checkinBaggageStyle,
    this.cabinBaggageStyle,
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
                textAlign: crossAxisAlignment == CrossAxisAlignment.end
                    ? TextAlign.end
                    : null,
              )
            : airlineCode != null
                ? NetworkImageWithLoading(
                    imageUrl: getAirlineLogo(airlineCode!), height: 20)
                : kEmpty,
        kHeight5,
        value != null
            ? Text(
                value!,
                style: valueStyle ??
                    TextStyle(
                      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                      fontSize: 16,
                    ),
                overflow: TextOverflow.ellipsis,
                textAlign: crossAxisAlignment == CrossAxisAlignment.end
                    ? TextAlign.end
                    : null,
              )
            : kEmpty,
        kHeight5,
        subValue != null
            ? Text(
                subValue!,
                style: subValueStyle ??
                    textThinStyle1.copyWith(color: kGreyDark, fontSize: 10.sp),
                overflow: TextOverflow.ellipsis,
                textAlign: crossAxisAlignment == CrossAxisAlignment.end
                    ? TextAlign.end
                    : null,
              )
            : kEmpty,
        kHeight5,
        exit != null
            ? Text(
                exit!,
                style: exitStyle ??
                    textThinStyle1.copyWith(color: kGreyDark, fontSize: 10.sp),
                overflow: TextOverflow.ellipsis,
                textAlign: crossAxisAlignment == CrossAxisAlignment.end
                    ? TextAlign.end
                    : null,
              )
            : kEmpty,
        kHeight5,
        flightCode != null
            ? Text(
                flightCode!,
                style: exitStyle ??
                    textThinStyle1.copyWith(color: kGreyDark, fontSize: 10.sp),
                overflow: TextOverflow.ellipsis,
                textAlign: crossAxisAlignment == CrossAxisAlignment.end
                    ? TextAlign.end
                    : null,
              )
            : kEmpty,
        flightCode != null ? kHeight5 : kEmpty,
        cabinBaggage != null
            ? Text(
                cabinBaggage!,
                style: cabinBaggageStyle ??
                    textThinStyle1.copyWith(color: kGreyDark, fontSize: 10.sp),
                textAlign: crossAxisAlignment == CrossAxisAlignment.end
                    ? TextAlign.end
                    : null,
              )
            : kEmpty,
        cabinBaggage != null ? kHeight5 : kEmpty,
        checkinBaggage != null
            ? Text(
                checkinBaggage!,
                style: checkinBaggageStyle ??
                    textThinStyle1.copyWith(color: kGreyDark, fontSize: 10.sp),
                textAlign: crossAxisAlignment == CrossAxisAlignment.end
                    ? TextAlign.end
                    : null,
              )
            : kEmpty,
        checkinBaggage != null ? kHeight5 : kEmpty,
      ],
    );
  }
}
