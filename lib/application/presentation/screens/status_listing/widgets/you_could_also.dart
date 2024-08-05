import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/raice_ticket/raice_ticket_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/data/features/url_launcher.dart';

class YouCouldAlso extends StatelessWidget {
  YouCouldAlso({super.key});

  final raiceController = Get.find<RaiceTicketController>();
  final bookingController = Get.find<BookingController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You could also',
          style:
              textStyle1.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
        kHeight5,
        Row(
          children: List.generate(
            4,
            (index) {
              List<IconData> icons = [
                Iconsax.personalcard4,
                Icons.report_problem_outlined,
                Icons.mark_email_unread_outlined,
                Icons.currency_rupee
              ];
              List<String> text = ['Contact us', 'Reports', 'Email', 'Support'];
              return Expanded(
                child: Row(
                  children: [
                    index != 0 ? kWidth5 : kEmpty,
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          if (text[index] == 'Contact us') {
                            Timer(
                              const Duration(milliseconds: 300),
                              () => bookingController.scrollController
                                  .animateTo(
                                      bookingController.scrollController
                                          .position.maxScrollExtent,
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.bounceIn),
                            );
                          }
                          if (text[index] == 'Support') {
                            OpenLauncherFeature.launchPhone(
                                phone: '7061409421');
                          }
                          raiceController.changeSelectedYouCouldAlsoTab(index);
                        },
                        child: Obx(
                          () => Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.h, horizontal: 5.w),
                            decoration: BoxDecoration(
                                color: index ==
                                        raiceController
                                            .selectedYouCouldAlsoTab.value
                                    ? kWhite
                                    : kBlueLightShade,
                                border: Border.all(
                                    color: kBluePrimary.withOpacity(0.3)),
                                borderRadius: kRadius10),
                            child: text[index] == 'Mails' &&
                                    raiceController.isLoading.value
                                ? SizedBox(
                                    width: 50.h,
                                    height: 50.h,
                                    child: const Center(
                                      child: CircularProgressIndicator(
                                          color: kBlueLight),
                                    ))
                                : Column(
                                    children: [
                                      kHeight5,
                                      Icon(icons[index], color: kIndigo),
                                      kHeight5,
                                      FittedBox(
                                        child: Text(text[index],
                                            style: textThinStyle1.copyWith(
                                                color: kIndigo)),
                                      ),
                                      kHeight5
                                    ],
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        kHeight5,
      ],
    );
  }
}
