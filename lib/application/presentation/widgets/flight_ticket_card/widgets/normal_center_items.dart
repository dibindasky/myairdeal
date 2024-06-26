import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';

class NormalCenterItems extends StatelessWidget {
  const NormalCenterItems(
      {super.key,
      this.haveImage = true,
      this.airline,
      this.travelMinutes = 0,
      this.stops = 0});

  final bool haveImage;
  final String? airline;
  final int stops;
  final int travelMinutes;

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
          DateFormating.convertMinutesToHoursMinutes(travelMinutes),
          style: textThinStyle1.copyWith(fontSize: 9.sp),
        ),
        kWidth5,
        Row(
          children: [
            const CircleAvatar(
              radius: 3,
              backgroundColor: kGrey,
            ),
            ...List.generate(
              7,
              (index) => Text(
                '-',
                style: TextStyle(
                    fontSize: 8.sp, fontWeight: FontWeight.w800, color: kBlack),
              ),
            ),
            const RotatedBox(
              quarterTurns: 1,
              child: Icon(Icons.flight_rounded, size: 20, color: kBlue),
            ),
            ...List.generate(
              7,
              (index) => Text(
                '-',
                style: TextStyle(
                    fontSize: 8.sp, fontWeight: FontWeight.w800, color: kBlack),
              ),
            ),
            const CircleAvatar(
              radius: 3,
              backgroundColor: kGrey,
            ),
          ],
        ),
        Text(
          '$stops Stop',
          style: textThinStyle1.copyWith(fontSize: 9.sp),
        ),
      ],
    );
  }
}
