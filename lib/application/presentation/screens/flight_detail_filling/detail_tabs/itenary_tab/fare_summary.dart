import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/dotted_line.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';

class FareSummary extends StatelessWidget {
  const FareSummary(
      {super.key, this.reviewPage = false, this.paymentPage = false});

  final bool reviewPage;
  final bool paymentPage;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BookingController>();
    return Obx(() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            Text(
              'Fare Summary',
              style: textStyle1.copyWith(fontWeight: FontWeight.w600),
            ),
            controller.reviewedDetail?.value.tripInfos?[0].totalPriceList![0].fd
                        ?.adult ==
                    null
                ? kEmpty
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Passenger(s)',
                            style: textThinStyle1.copyWith(
                                color: kBlack, fontSize: 9.sp),
                          ),
                          Text(
                            'Adult (x ${Get.find<FlightSortController>().adultCount.value})',
                            style: textThinStyle1.copyWith(
                              color: kBlack,
                              fontSize: 12.sp,
                            ),
                          ),
                          kHeight5,
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Ticket Price',
                            style: textThinStyle1.copyWith(
                                color: kBlack, fontSize: 9.sp),
                          ),
                          Text(
                            '₹ ${controller.getPrice('ADULT')}',
                            style: textThinStyle1.copyWith(
                              color: kBlack,
                              fontSize: 12.sp,
                            ),
                          ),
                          kHeight5,
                        ],
                      ),
                    ],
                  ),
            controller.reviewedDetail?.value.tripInfos?[0].totalPriceList![0].fd
                        ?.child ==
                    null
                ? kEmpty
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Child (x ${Get.find<FlightSortController>().childrenCount.value})',
                            style: textThinStyle1.copyWith(
                              color: kBlack,
                              fontSize: 12.sp,
                            ),
                          ),
                          kHeight5,
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '₹ ${controller.getPrice('CHILD')}',
                            style: textThinStyle1.copyWith(
                              color: kBlack,
                              fontSize: 12.sp,
                            ),
                          ),
                          kHeight5,
                        ],
                      ),
                    ],
                  ),
            controller.reviewedDetail?.value.tripInfos?[0].totalPriceList![0].fd
                        ?.infant ==
                    null
                ? kEmpty
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Infant (x ${Get.find<FlightSortController>().infantCount.value})',
                            style: textThinStyle1.copyWith(
                              color: kBlack,
                              fontSize: 12.sp,
                            ),
                          ),
                          kHeight5,
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '₹ ${controller.getPrice('INFANT')}',
                            style: textThinStyle1.copyWith(
                              color: kBlack,
                              fontSize: 12.sp,
                            ),
                          ),
                          kHeight5,
                        ],
                      ),
                    ],
                  ),
            controller.reviewedDetail?.value.totalPriceInfo?.totalFareDetail?.fC
                        ?.taf ==
                    null
                ? kEmpty
                : CustomExpansionTile(
                    isBorder: false,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Taxes and Fees',
                              style: textThinStyle1.copyWith(
                                color: kBlack,
                                fontSize: 12.sp,
                              ),
                            ),
                            kHeight5,
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.arrow_drop_down_sharp),
                                Text(
                                  '₹ ${controller.reviewedDetail?.value.totalPriceInfo?.totalFareDetail?.fC?.taf}',
                                  style: textThinStyle1.copyWith(
                                    color: kBlack,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                            kHeight5,
                          ],
                        ),
                      ],
                    ),
                    children: List.generate(
                      3,
                      (index) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                index == 0
                                    ? 'Airline GST'
                                    : index == 1
                                        ? 'Other Taxes'
                                        : 'YR',
                                style: textThinStyle1.copyWith(
                                  color: kBlack,
                                  fontSize: 12.sp,
                                ),
                              ),
                              kHeight5,
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                index == 0
                                    ? '₹ ${controller.reviewedDetail?.value.totalPriceInfo?.totalFareDetail?.afC?.taf?.agst}'
                                    : index == 1
                                        ? '₹ ${controller.reviewedDetail?.value.totalPriceInfo?.totalFareDetail?.afC?.taf?.ot}'
                                        : '₹ ${controller.reviewedDetail?.value.totalPriceInfo?.totalFareDetail?.afC?.taf?.yr}',
                                style: textThinStyle1.copyWith(
                                  color: kBlack,
                                  fontSize: 12.sp,
                                ),
                              ),
                              kHeight5,
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
            const DottedLines(height: 10),
            kHeight15,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: textThinStyle1.copyWith(
                      fontSize: 14.sp, fontWeight: FontWeight.w700),
                ),
                Text(
                  '₹ ${controller.reviewedDetail?.value.totalPriceInfo?.totalFareDetail?.fC?.tf ?? ''}',
                  style: textThinStyle1.copyWith(
                      fontSize: 14.sp, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            paymentPage
                ? kEmpty
                : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DottedLines(height: 10),
                      kHeight20,
                      RichText(
                        text: TextSpan(
                          text: '* Refundable (',
                          style: textStyle1.copyWith(
                              fontSize: 12.sp, color: kBlack),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Penalty rules Applies',
                              style: textStyle1.copyWith(
                                  color: kBlue, fontSize: 12.sp),
                            ),
                            TextSpan(
                              text: ').',
                              style: textStyle1.copyWith(
                                  color: kBlack, fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ),
                      reviewPage ? kEmpty : kHeight20,
                      reviewPage
                          ? kEmpty
                          : Align(
                            child: EventButton(
                                text: controller.bookingLoading.value
                                    ? 'Continue'
                                    : Get.find<TravellerController>()
                                                .selectedMainTab
                                                .value ==
                                            0
                                        ? 'Add Passenger'
                                        : 'Continue',
                                onTap: () {
                                  Get.find<TravellerController>()
                                      .changeDetailEnterTab(1);
                                },
                              ),
                          ),
                    ],
                  ),
            kHeight10,
          ],
        ),
      );
    });
  }
}
