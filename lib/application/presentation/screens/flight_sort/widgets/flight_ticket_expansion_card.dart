import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class TicketDetailExpansionChild extends StatelessWidget {
  const TicketDetailExpansionChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      width: double.infinity,
      decoration: BoxDecoration(
          color: kWhite, borderRadius: kRadius15, boxShadow: boxShadow2),
      child: Column(children: [
        kHeight10,
        Row(
          children: [
            Text(
              'Saver fare',
              style: textStyle1.copyWith(fontWeight: FontWeight.w900),
            ),
            const Spacer(),
            Text(
              '₹3500',
              style: textThinStyle1.copyWith(fontWeight: FontWeight.w900),
            ),
            kWidth10,
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.flightDetail);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                decoration:
                    BoxDecoration(borderRadius: kRadius50, color: kBlueDark),
                child: Text(
                  'Book Now',
                  style: textThinStyle1.copyWith(
                      fontWeight: FontWeight.w900, color: kWhite),
                ),
              ),
            )
          ],
        ),
        const Divider(color: kBluePrimary),
        Row(
          children: [
            Expanded(
                flex: 1, child: Text('Seat Selection', style: textThinStyle1)),
            Expanded(
              flex: 2,
              child: Text('Standard : Chargeable/ Seats : Chargeable',
                  style: textThinStyle1.copyWith(
                      fontSize: 9.sp, color: kGreyDark)),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 1, child: Text('Cancelation', style: textThinStyle1)),
            Expanded(
              flex: 2,
              child: Text('INR 3500 with in 72 hours',
                  style: textThinStyle1.copyWith(
                      fontSize: 9.sp, color: kGreyDark)),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 1, child: Text('Date change', style: textThinStyle1)),
            Expanded(
              flex: 2,
              child: Text('INR 3250 with in 72 hours',
                  style: textThinStyle1.copyWith(
                      fontSize: 9.sp, color: kGreyDark)),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 1, child: Text('Checked bag', style: textThinStyle1)),
            Expanded(
              flex: 2,
              child: Text('15 Kgs',
                  style: textThinStyle1.copyWith(
                      fontSize: 9.sp, color: kGreyDark)),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(flex: 1, child: Text('Hand Bag', style: textThinStyle1)),
            Expanded(
              flex: 2,
              child: Text('7 Kgs',
                  style: textThinStyle1.copyWith(
                      fontSize: 9.sp, color: kGreyDark)),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(flex: 1, child: Text('Meal', style: textThinStyle1)),
            Expanded(
              flex: 2,
              child: Text('Chargeable',
                  style: textThinStyle1.copyWith(
                      fontSize: 9.sp, color: kGreyDark)),
            ),
          ],
        ),
      ]),
    );
  }
}
