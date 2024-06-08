import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class BookingCancelledTabcenterItems extends StatelessWidget {
  const BookingCancelledTabcenterItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Air india'),
        Row(
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
                    fontSize: 5.sp, fontWeight: FontWeight.w800, color: kBlack),
              ),
            ),
            // const DottedLineBuilder(),
            const RotatedBox(
              quarterTurns: 1,
              child: Icon(Icons.flight_rounded, size: 20, color: kRed),
            ),
            ...List.generate(
              4,
              (index) => Text(
                '-',
                style: TextStyle(
                    fontSize: 5.sp, fontWeight: FontWeight.w800, color: kBlack),
              ),
            ),
            Image.asset(
              flightDetailIcon,
              height: 17.h,
            ),
            ...List.generate(
              4,
              (index) => Text(
                '-',
                style: TextStyle(
                    fontSize: 5.sp, fontWeight: FontWeight.w800, color: kBlack),
              ),
            ),
            const RotatedBox(
              quarterTurns: 1,
              child: Icon(Icons.flight_rounded, size: 20, color: kRed),
            ),
            ...List.generate(
              5,
              (index) => Text(
                '-',
                style: TextStyle(
                    fontSize: 5.sp, fontWeight: FontWeight.w800, color: kBlack),
              ),
            ),
            const CircleAvatar(
              radius: 3,
              backgroundColor: kGrey,
            ),
          ],
        ),
        kHeight10,
        Column(
          children: [
            Text(
              'Friday',
              style: textStyle1.copyWith(fontSize: 11.sp),
            ),
            Text('24-05-24', style: textStyle1.copyWith(fontSize: 11.sp)),
            kHeight5,
            Row(
              children: [
                Text('Ticket Price     : ',
                    style: textStyle1.copyWith(fontSize: 11.sp, color: kRed)),
                Text('? 3500',
                    style: textStyle1.copyWith(fontSize: 11.sp, color: kRed))
              ],
            ),
          ],
        ),
      ],
    );
  }
}
