import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class NormalCenterItems extends StatelessWidget {
  const NormalCenterItems({super.key, this.haveImage = true});

  final bool haveImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        haveImage
            ? Column(
                children: [
                  Image.asset(
                    flightDetailIcon,
                    height: 20.h,
                  ),
                  kHeight10,
                  Text(
                    'Asky Airlines',
                    style: textStyle1.copyWith(fontSize: 12.sp),
                  ),
                ],
              )
            : Text(
                '01h 45m',
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
              10,
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
              10,
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
          '0 Stop',
          style: textThinStyle1.copyWith(fontSize: 9.sp),
        ),
      ],
    );
  }
}
