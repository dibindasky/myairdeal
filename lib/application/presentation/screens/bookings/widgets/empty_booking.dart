import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/navbar/navbar_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class EmptyBookingScreen extends StatelessWidget {
  const EmptyBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(bookingEmptyImage),
          Text(
            'Let’s go somewhere',
            style: textHeadStyle1.copyWith(fontSize: 23.sp),
          ),
          Text(
            'After book a trip you can manage orders and see E-ticket here.',
            style: textThinStyle1.copyWith(color: kbuttonGrey),
            textAlign: TextAlign.center,
          ),
          EventButton(
            width: 400.w,
            text: 'Book a trip',
            onTap: () {
              Get.find<NavBarController>().chageIndex(0);
            },
          )
        ],
      ),
    );
  }
}
