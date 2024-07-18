import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class NormalCenterItems extends StatelessWidget {
  const NormalCenterItems(
      {super.key,
      this.haveImage = true,
      this.airline,
      this.flightId,
      this.date,
      this.number,
      this.travelMinutes = '',
      this.stops = 1});

  final bool haveImage;
  final String? airline;
  final int stops;
  final String travelMinutes;
  final String? date;
  final String? flightId;
  final String? number;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        haveImage
            ? Image.asset(
                flightDetailIcon,
                height: 20.h,
              )
            : kEmpty,
        kHeight10,
        Text(
          '${airline ?? ''}${flightId ?? ''}',
          style: textStyle1.copyWith(fontSize: 12.sp),
        ),
        Text(
          travelMinutes,
          style: textThinStyle1.copyWith(fontSize: 9.sp),
        ),
        kWidth5,
        FittedBox(
          child: Row(
            children: [
              kWidth5,
              const CircleAvatar(
                radius: 3,
                backgroundColor: kGrey,
              ),
              ...List.generate(
                4,
                (index) => Text(
                  '-',
                  style: TextStyle(
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w800,
                      color: kBlack),
                ),
              ),
              stops != 0
                  ? const RotatedBox(
                      quarterTurns: 1,
                      child: Icon(Icons.flight_rounded, size: 20, color: kBlue),
                    )
                  : kEmpty,
              ...List.generate(
                4,
                (index) => Text(
                  '-',
                  style: TextStyle(
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w800,
                      color: kBlack),
                ),
              ),
              const CircleAvatar(
                radius: 3,
                backgroundColor: kGrey,
              ),
              kWidth5
            ],
          ),
        ),
        Text(
          stops == 0 ? 'Non Stop' : '$stops Stops',
          style: textThinStyle1.copyWith(fontSize: 9.sp),
        ),
        number != null
            ? Text(number!, style: textThinStyle1.copyWith(fontSize: 9.sp))
            : kEmpty,
        kHeight5,
        date != null
            ? Text(
                date!,
                style: textThinStyle1.copyWith(fontSize: 9.sp),
              )
            : kEmpty,
      ],
    );
  }
}
