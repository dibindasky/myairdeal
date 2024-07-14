import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class CardSideItems extends StatelessWidget {
  const CardSideItems({
    super.key,
    required this.place,
    required this.airPort,
    required this.from,
    required this.time,
    this.cabinClass,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  final String place;
  final String airPort;
  final String from;
  final String time;
  final CrossAxisAlignment crossAxisAlignment;
  final String? cabinClass;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Text(
            place,
            style: textHeadStyle1,
          ),
          kHeight5,
          Text(
            airPort,
            style: textThinStyle1.copyWith(color: kGreyDark, fontSize: 10.sp),
            textAlign: crossAxisAlignment == CrossAxisAlignment.start
                ? TextAlign.start
                : TextAlign.end,
          ),
          kHeight15,
          Text(
            from,
            style: textThinStyle1.copyWith(color: kBlack, fontSize: 9.sp),
          ),
          kHeight5,
          Text(
            time,
            style: textThinStyle1.copyWith(
              color: kBlack,
              fontSize: 12.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
          cabinClass != null
              ? Text(
                  cabinClass!,
                  style: textThinStyle1.copyWith(
                    color: kBlack,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w800,
                  ),
                )
              : kEmpty,
        ],
      ),
    );
  }
}
