import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/dotted_line.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';
import 'package:myairdeal/domain/models/fare_rule/fare_rule_request/fare_rule_request.dart';
import 'package:shimmer/shimmer.dart';

class FareSummary extends StatelessWidget {
  const FareSummary(
      {super.key, this.reviewPage = false, this.paymentPage = false});

  final bool reviewPage;
  final bool paymentPage;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BookingController>();
    final travellerController = Get.find<TravellerController>();
    final themeController = Get.find<ThemeController>();
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
                            '₹ ${(controller.getPrice('ADULT')) * Get.find<FlightSortController>().adultCount.value}',
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
                            '₹ ${controller.getPrice('CHILD') * Get.find<FlightSortController>().childrenCount.value}',
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
                            '₹ ${controller.getPrice('INFANT') * Get.find<FlightSortController>().infantCount.value}',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Seat, Meals & Baggage',
                  style: textThinStyle1.copyWith(
                    color: kBlack,
                    fontSize: 12.sp,
                  ),
                ),
                Text(
                  '₹ ${travellerController.addOnsprice.value.toDouble()}',
                  style: textThinStyle1.copyWith(
                    color: kBlack,
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
            controller.reviewedDetail?.value.totalPriceInfo?.totalFareDetail?.fC
                        ?.taf ==
                    null
                ? kEmpty
                : CustomExpansionTile(
                    whileTap: (isTap) {
                      controller.changeArrowItinerary();
                    },
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
                                Icon(
                                  !controller.selectedArrowItinerary.value
                                      ? Icons.arrow_drop_down_sharp
                                      : Icons.arrow_drop_up,
                                ),
                                Text(
                                  '₹ ${controller.reviewedDetail?.value.totalPriceInfo?.totalFareDetail?.fC?.taf?.toDouble() ?? '--'}',
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
                    children: [
                      TaxAndFeeHelper(
                          title: 'Airline GST',
                          value:
                              '${controller.reviewedDetail?.value.totalPriceInfo?.totalFareDetail?.afC?.taf?.agst?.toDouble() ?? '--'}'),
                      TaxAndFeeHelper(
                          title: 'Other Taxes',
                          value:
                              '${controller.reviewedDetail?.value.totalPriceInfo?.totalFareDetail?.afC?.taf?.ot?.toDouble() ?? '--'}'),
                      TaxAndFeeHelper(
                          title: 'YR',
                          value:
                              '${controller.reviewedDetail?.value.totalPriceInfo?.totalFareDetail?.afC?.taf?.yr?.toDouble() ?? '--'}'),
                      TaxAndFeeHelper(
                          title: 'YQ',
                          value:
                              '${controller.reviewedDetail?.value.totalPriceInfo?.totalFareDetail?.afC?.taf?.yq?.toDouble() ?? '--'}'),
                    ],
                  ),
            paymentPage
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Convenience Fee',
                        style: textThinStyle1.copyWith(
                          color: kBlack,
                          fontSize: 12.sp,
                        ),
                      ),
                      Text(
                        '₹ ${controller.markupPrice.value}',
                        style: textThinStyle1.copyWith(
                          color: kBlack,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  )
                : kEmpty,
            paymentPage
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Promo Price',
                        style: textThinStyle1.copyWith(
                          color: kBlack,
                          fontSize: 12.sp,
                        ),
                      ),
                      Text(
                        '- ₹ ${controller.promoResponse.value.value ?? 0}',
                        style: textThinStyle1.copyWith(
                          color: kBlack,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  )
                : kEmpty,
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
                paymentPage
                    ? Obx(() {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            controller.promoResponse.value.value == null
                                ? kEmpty
                                : Text(
                                    '₹ ${(controller.reviewedDetail?.value.totalPriceInfo?.totalFareDetail?.fC?.tf == null ? '' : (((controller.reviewedDetail?.value.totalPriceInfo?.totalFareDetail?.fC?.tf ?? 0).toDouble()) + (travellerController.addOnsprice.value.toDouble()) + (controller.markupPrice.value.toDouble())))}',
                                    style: textThinStyle1.copyWith(
                                        decoration: TextDecoration.lineThrough,
                                        decorationThickness: 2.5,
                                        decorationColor: kGreyDark,
                                        color: kGreyDark,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                            Text(
                              '₹ ${(controller.reviewedDetail?.value.totalPriceInfo?.totalFareDetail?.fC?.tf == null ? '' : (((controller.reviewedDetail?.value.totalPriceInfo?.totalFareDetail?.fC?.tf ?? 0).toDouble()) + (travellerController.addOnsprice.value.toDouble()) + (controller.markupPrice.value.toDouble()) - (controller.promoResponse.value.value ?? 0)))}',
                              style: textThinStyle1.copyWith(
                                  fontSize: 14.sp, fontWeight: FontWeight.w700),
                            ),
                          ],
                        );
                      })
                    : Obx(() {
                        return Text(
                          '₹ ${controller.reviewedDetail?.value.totalPriceInfo?.totalFareDetail?.fC?.tf == null ? '' : ((controller.reviewedDetail?.value.totalPriceInfo?.totalFareDetail?.fC?.tf?.toDouble() ?? 0) + (travellerController.addOnsprice.value.toDouble()))}',
                          style: textThinStyle1.copyWith(
                              fontSize: 14.sp, fontWeight: FontWeight.w700),
                        );
                      }),
              ],
            ),
            paymentPage
                ? kEmpty
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DottedLines(height: 10),
                      kHeight20,
                      Obx(
                        () {
                          if (controller.fareRuleLoading.value) {
                            return Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: kWhite,
                                    borderRadius: BorderRadius.circular(5)),
                                width: 110.w,
                                height: 13.h,
                              ),
                            );
                          }
                          return GestureDetector(
                            onTap: () {
                              controller.getFareRule(
                                  fareRuleRequest: FareRuleRequest(
                                      bookingId: controller
                                          .reviewedDetail?.value.bookingId,
                                      flowType: 'REVIEW'));
                            },
                            child: RichText(
                              text: TextSpan(
                                text: '* Rules (',
                                style: textStyle1.copyWith(
                                    fontSize: 12.sp, color: kBlack),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Fare rules',
                                    style: textStyle1.copyWith(
                                        color: themeController.theme.value ==
                                                AppTheme.blue
                                            ? kBlue
                                            : themeController.secondaryColor,
                                        fontSize: 12.sp),
                                  ),
                                  TextSpan(
                                    text: ').',
                                    style: textStyle1.copyWith(
                                        color: kBlack, fontSize: 12.sp),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
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
                                      .changeDetailEnterTab(
                                    1,
                                    // bookingId: controller
                                    //     .reviewedDetail?.value.bookingId
                                  );
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

class TaxAndFeeHelper extends StatelessWidget {
  const TaxAndFeeHelper({
    super.key,
    required this.title,
    required this.value,
    this.style,
    this.bold = false,
  });

  final String title;
  final String value;
  final TextStyle? style;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    return value == '--'
        ? kEmpty
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: style ??
                        textThinStyle1.copyWith(
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
                    value,
                    style: style ??
                        textThinStyle1.copyWith(
                          fontWeight: bold ? FontWeight.bold : null,
                          color: kBlack,
                          fontSize: 12.sp,
                        ),
                  ),
                  kHeight5,
                ],
              ),
            ],
          );
  }
}
