import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class NormalCenterItems extends StatelessWidget {
  const NormalCenterItems(
      {super.key,
      this.haveImage = true,
      this.airline,
      this.travelMinutes = '',
      this.stops = 1});

  final bool haveImage;
  final String? airline;
  final int stops;
  final String travelMinutes;

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
          airline ?? 'Airline',
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
              const CircleAvatar(
                radius: 3,
                backgroundColor: kGrey,
              ),
              ...List.generate(
                5,
                (index) => Text(
                  '-',
                  style: TextStyle(
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w800,
                      color: kBlack),
                ),
              ),
              ...List.generate(
                  stops,
                  (index) => const RotatedBox(
                        quarterTurns: 1,
                        child:
                            Icon(Icons.flight_rounded, size: 20, color: kBlue),
                      )),
              ...List.generate(
                5,
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
            ],
          ),
        ),
        Text(
          stops == 0 ? 'Non Stop' : '$stops Stop',
          style: textThinStyle1.copyWith(fontSize: 9.sp),
        ),
      ],
    );
  }
}
