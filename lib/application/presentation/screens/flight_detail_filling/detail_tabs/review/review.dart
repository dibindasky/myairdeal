import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/itenary_tab/fare_summary.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/itenary_tab/inner_content.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class ReveiewTab extends StatelessWidget {
  const ReveiewTab({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TravellerController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(14.w),
          decoration: BoxDecoration(
            boxShadow: boxShadow2,
            color: kWhite,
            borderRadius: kRadius10,
          ),
          child: Column(
            children: [
              const InnerContents(),
              const FareSummary(reviewPage: true),
              kHeight10
            ],
          ),
        ),
        Obx(() {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Passenger Details',
                    style: textStyle1.copyWith(fontSize: 16.sp)),
                ...List.generate(
                  controller.passengerLength.value,
                  (index) => Column(
                    children: [
                      kHeight10,
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.w, horizontal: 10.h),
                        decoration: BoxDecoration(
                          border: Border.all(color: kBlue),
                          borderRadius: kRadius10,
                          color: kBlueLightShade,
                        ),
                        width: double.infinity,
                        child: Row(
                          children: [
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('First Name'),
                                  Text('Last Name'),
                                  Text('DOB'),
                                  Text('Seat ID'),
                                  Text('Baggage'),
                                  Text('Meal'),
                                ],
                              ),
                            ),
                            const Column(
                              children: [
                                Text(':  '),
                                Text(':  '),
                                Text(':  '),
                                Text(':  '),
                                Text(':  '),
                                Text(':  '),
                              ],
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(controller.passengerDetails[index]?.fN ??
                                      ''),
                                  Text(controller.passengerDetails[index]?.lN ??
                                      ''),
                                  Text(
                                      controller.passengerDetails[index]?.dob ??
                                          ''),
                                  const Text('BS1232#33'),
                                  const Text('Yes'),
                                  const Text('Yes'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
        kHeight10,
        // Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 14.w),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Text('Seat, Baggage & Meal',
        //           style: textStyle1.copyWith(fontSize: 16.sp)),
        //       ...List.generate(
        //         3,
        //         (index) => Column(
        //           children: [
        //             kHeight10,
        //             Container(
        //               padding: EdgeInsets.symmetric(vertical: 10.w),
        //               decoration: BoxDecoration(
        //                 border: Border.all(color: kBlue),
        //                 borderRadius: kRadius10,
        //                 color: kBlueLightShade,
        //               ),
        //               width: double.infinity,
        //               child: const Row(
        //                 children: [
        //                   Expanded(
        //                     child: Column(
        //                       children: [
        //                         Text('Seat ID'),
        //                         Text('Baggage'),
        //                         Text('Meal'),
        //                       ],
        //                     ),
        //                   ),
        //                   Column(
        //                     children: [
        //                       Text(':  '),
        //                       Text(':  '),
        //                       Text(':  '),
        //                     ],
        //                   ),
        //                   Expanded(
        //                     child: Column(
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: [
        //                         Text('BS1232#33'),
        //                         Text('Yes'),
        //                         Text('Yes'),
        //                       ],
        //                     ),
        //                   )
        //                 ],
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
                '₹ ${Get.find<BookingController>().reviewedDetail?.value.totalPriceInfo?.totalFareDetail?.fC?.tf ?? ''}'),
            EventButton(
                width: 200.w,
                text: 'Confirm Details',
                onTap: () {
                  controller.changeDetailEnterTab(3);
                }),
          ],
        ),
        kHeight15
      ],
    );
  }
}
