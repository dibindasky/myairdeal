import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_icon_button.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TravellerController>();
    final bookingController = Get.find<BookingController>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Text(
        //       'Add ons total',
        //       style: textThinStyle1.copyWith(fontSize: 10.sp),
        //     ),
        //     const Text(
        //       '₹ ',
        //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        //     ),
        //   ],
        // ),
        kWidth20,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total',
              style: textThinStyle1.copyWith(fontSize: 10.sp),
            ),
            Text(
              '₹ ${bookingController.reviewedDetail!.value.totalPriceInfo!.totalFareDetail!.fC!.tf ?? ''}',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        kWidth20,
        Expanded(
          child: EventIconButton(
            suffixIcon: Image.asset(tickIcon, height: 13.h),
            text:
                controller.selectedMainTab.value != 3 ? "Continue" : 'Payment',
            onTap: onTap ??
                () {
                  controller.changeAddDetailsSubStepAdd();
                },
          ),
        ),
      ],
    );
  }
}
