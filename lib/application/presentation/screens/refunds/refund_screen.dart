import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/header_section.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/flight_ticket_card.dart';

class ScreenRefundPage extends StatelessWidget {
  const ScreenRefundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        HomeHeaderSection(
          heading: 'Refunds',
          icon: false,
          backButton: true,
          backButtonTap: () {
            Get.back();
          },
        ),
        kHeight10,
        Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView.separated(
            padding: EdgeInsets.zero,
            itemCount: 2,
            separatorBuilder: (context, index) => kHeight5,
            itemBuilder: (context, index) => FlightTicketCard(onTap: () {}),
          ),
        )),
        Container(
          decoration: const BoxDecoration(color: kWhite),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Total Refund', style: textStyle1),
                  Text(' ₹6600',
                      style: textStyle1.copyWith(fontWeight: FontWeight.w900)),
                ],
              ),
              EventButton(text: 'Proceed', onTap: () {})
            ],
          ),
        )
      ],
    ));
  }
}
