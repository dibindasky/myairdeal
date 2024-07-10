import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class BookingCombletedCancelledTabcenterItems extends StatelessWidget {
  BookingCombletedCancelledTabcenterItems({super.key, this.price = 0});

  final bookingController = Get.find<BookingController>();
  final int price;

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
            RotatedBox(
              quarterTurns: 1,
              child: Icon(Icons.flight_rounded,
                  size: 20,
                  color: bookingController.selectedBookingTab.value == 1
                      ? kBlueDark
                      : kRed),
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
            RotatedBox(
              quarterTurns: 1,
              child: Icon(
                Icons.flight_rounded,
                size: 20,
                color: bookingController.selectedBookingTab.value == 1
                    ? kBlueDark
                    : kRed,
              ),
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
                    style: textStyle1.copyWith(
                        fontSize: 11.sp,
                        color: bookingController.selectedBookingTab.value == 1
                            ? kBlueDark
                            : kRed)),
                Text('? $price',
                    style: textStyle1.copyWith(
                        fontSize: 11.sp,
                        color: bookingController.selectedBookingTab.value == 1
                            ? kBlueDark
                            : kRed))
              ],
            ),
          ],
        ),
      ],
    );
  }
}
