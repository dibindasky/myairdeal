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
    final bookingController = Get.find<BookingController>();
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
                Text(
                    controller.passengerLength.value <= 1
                        ? 'Passenger Details'
                        : 'Passengers Details',
                    style: textStyle1.copyWith(fontSize: 16.sp)),
                ...List.generate(
                  controller.passengerLength.value,
                  (travelrIndex) => Column(
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
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      controller.passengerDetails[travelrIndex]
                                                      ?.fN !=
                                                  null &&
                                              controller
                                                      .passengerDetails[
                                                          travelrIndex]
                                                      ?.lN !=
                                                  null &&
                                              controller
                                                      .passengerDetails[
                                                          travelrIndex]
                                                      ?.pt !=
                                                  null
                                          ? const Text('Name  ')
                                          : kEmpty,
                                      controller.passengerDetails[travelrIndex]
                                                  ?.dob !=
                                              null
                                          ? const Text('DOB  ')
                                          : kEmpty,
                                      controller.passengerDetails[travelrIndex]
                                                  ?.pNum !=
                                              null
                                          ? const Text('Passport Number  ')
                                          : kEmpty,
                                      controller.passengerDetails[travelrIndex]
                                                  ?.pid !=
                                              null
                                          ? const Text('Passport Issue Date  ')
                                          : kEmpty,
                                      controller.passengerDetails[travelrIndex]
                                                  ?.eD !=
                                              null
                                          ? const Text('Passport Expiry Date  ')
                                          : kEmpty,
                                      controller.passengerDetails[travelrIndex]
                                                  ?.pN !=
                                              null
                                          ? const Text('Nationality  ',
                                              overflow: TextOverflow.ellipsis)
                                          : kEmpty
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      controller.passengerDetails[travelrIndex]
                                                      ?.fN !=
                                                  null &&
                                              controller
                                                      .passengerDetails[
                                                          travelrIndex]
                                                      ?.lN !=
                                                  null &&
                                              controller
                                                      .passengerDetails[
                                                          travelrIndex]
                                                      ?.pt !=
                                                  null
                                          ? Text(
                                              '${controller.passengerDetails[travelrIndex]?.fN ?? ''} ${controller.passengerDetails[travelrIndex]?.lN ?? ''} (${controller.passengerDetails[travelrIndex]?.pt?.substring(0, 1) ?? ''})')
                                          : kEmpty,
                                      controller.passengerDetails[travelrIndex]
                                                  ?.dob !=
                                              null
                                          ? Text(controller
                                                  .passengerDetails[
                                                      travelrIndex]
                                                  ?.dob ??
                                              '')
                                          : kEmpty,
                                      controller.passengerDetails[travelrIndex]
                                                  ?.pNum !=
                                              null
                                          ? Text(controller
                                                  .passengerDetails[
                                                      travelrIndex]
                                                  ?.pNum ??
                                              '')
                                          : kEmpty,
                                      controller.passengerDetails[travelrIndex]
                                                  ?.pid !=
                                              null
                                          ? Text(controller
                                                  .passengerDetails[
                                                      travelrIndex]
                                                  ?.pid ??
                                              '')
                                          : kEmpty,
                                      controller.passengerDetails[travelrIndex]
                                                  ?.eD !=
                                              null
                                          ? Text(controller
                                                  .passengerDetails[
                                                      travelrIndex]
                                                  ?.eD ??
                                              '')
                                          : kEmpty,
                                      controller.passengerDetails[travelrIndex]
                                                  ?.pN !=
                                              null
                                          ? Text(controller
                                                  .passengerDetails[
                                                      travelrIndex]
                                                  ?.pN ??
                                              '')
                                          : kEmpty
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            ...List.generate(
                              bookingController.reviewedDetail?.value.tripInfos
                                      ?.length ??
                                  0,
                              (tripIndex) => Column(
                                children: List.generate(
                                  bookingController.reviewedDetail?.value
                                          .tripInfos?[tripIndex].sI?.length ??
                                      0,
                                  (siIndex) {
                                    final seatIndex = controller
                                        .passengerDetails[travelrIndex]
                                        ?.ssrSeatInfos
                                        ?.indexWhere((element) =>
                                            element.key ==
                                            bookingController
                                                .reviewedDetail
                                                ?.value
                                                .tripInfos?[tripIndex]
                                                .sI?[siIndex]
                                                .id);
                                    final mealIndex = controller
                                        .passengerDetails[travelrIndex]
                                        ?.ssrMealInfos
                                        ?.indexWhere((element) =>
                                            element.key ==
                                            bookingController
                                                .reviewedDetail
                                                ?.value
                                                .tripInfos?[tripIndex]
                                                .sI?[siIndex]
                                                .id);
                                    final baggageIndex = controller
                                        .passengerDetails[travelrIndex]
                                        ?.ssrBaggageInfos
                                        ?.indexWhere((element) =>
                                            element.key ==
                                            bookingController
                                                .reviewedDetail
                                                ?.value
                                                .tripInfos?[tripIndex]
                                                .sI?[siIndex]
                                                .id);
                                    return Column(
                                      children: [
                                        (seatIndex == null ||
                                                    seatIndex == -1) &&
                                                (mealIndex == null ||
                                                    mealIndex == -1) &&
                                                (baggageIndex == null ||
                                                    baggageIndex == -1)
                                            ? kEmpty
                                            : Row(
                                                children: [
                                                  Text(
                                                      bookingController
                                                              .reviewedDetail
                                                              ?.value
                                                              .tripInfos?[
                                                                  tripIndex]
                                                              .sI?[siIndex]
                                                              .da
                                                              ?.city ??
                                                          'From',
                                                      style: textThinStyle1
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700)),
                                                  kWidth10,
                                                  Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      size: 13.w),
                                                  kWidth10,
                                                  Text(
                                                      bookingController
                                                              .reviewedDetail
                                                              ?.value
                                                              .tripInfos?[
                                                                  tripIndex]
                                                              .sI?[siIndex]
                                                              .aa
                                                              ?.city ??
                                                          'To',
                                                      style: textThinStyle1
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700)),
                                                ],
                                              ),
                                        seatIndex != null && seatIndex != -1
                                            ? Row(
                                                children: [
                                                  const Expanded(
                                                      child: Text('Seat NO')),
                                                  const Text(':  '),
                                                  Expanded(
                                                      child: Text(
                                                          '${controller.passengerDetails[travelrIndex]?.ssrSeatInfos?[seatIndex].code}')),
                                                ],
                                              )
                                            : kEmpty,
                                        mealIndex != null && mealIndex != -1
                                            ? Row(
                                                children: [
                                                  const Expanded(
                                                      child: Text('Meals')),
                                                  const Text(':  '),
                                                  Expanded(
                                                      child: Text(
                                                          '${controller.passengerDetails[travelrIndex]?.ssrMealInfos?[mealIndex].desc}')),
                                                ],
                                              )
                                            : kEmpty,
                                        baggageIndex != null &&
                                                baggageIndex != -1
                                            ? Row(
                                                children: [
                                                  const Expanded(
                                                      child: Text('Baggage')),
                                                  const Text(':  '),
                                                  Expanded(
                                                      child: Text(
                                                          "${controller.passengerDetails[travelrIndex]?.ssrBaggageInfos?[baggageIndex].desc}'}")),
                                                ],
                                              )
                                            : kEmpty,
                                        kHeight5,
                                      ],
                                    );
                                  },
                                ),
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
