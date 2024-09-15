import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/ticket_cancel_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/itenary_tab/fare_summary.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/shimmer.dart';
import 'package:myairdeal/application/presentation/widgets/dotted_line.dart';

class ScreenViewAmendMentStatus extends StatelessWidget {
  const ScreenViewAmendMentStatus({super.key});

  @override
  Widget build(BuildContext context) {
    final cancelController = Get.find<TicketCancellationController>();
    final bookingController = Get.find<BookingController>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Obx(
          () => Column(
            children: [
              const DetailAppBar(heading: 'Check Amendment Status'),
              ...List.generate(
                bookingController.retrieveSingleBookingresponceModel.value
                        .amendment?.length ??
                    0,
                (amendMentIndex) {
                  if (cancelController.nextLoading.value &&
                      amendMentIndex >=
                          cancelController.amendmentDetails.length) {
                    return const Skeleton(
                        padding: 12,
                        crossAxisCount: 1,
                        itemCount: 3,
                        childAspectRatio: 1 / .4);
                  }
                  if (cancelController.amendmentDetails[amendMentIndex] ==
                      null) {
                    return const Center(child: Text(errorMessage));
                  }
                  final amendmentInfo =
                      cancelController.amendmentDetails[amendMentIndex];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.h, vertical: 12.h),
                        margin: EdgeInsets.symmetric(
                            horizontal: 15.h, vertical: 12.h),
                        decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: kRadius15,
                          boxShadow: boxShadow3,
                          border: Border.all(
                            width: .3,
                            color: kRedLight.withOpacity(.9),
                          ),
                        ),
                        child: Column(
                          children: [
                            TaxAndFeeHelper(
                                title: 'Booking ID  ',
                                value: amendmentInfo?.bookingId ?? 'ID'),
                            TaxAndFeeHelper(
                                title: 'Amendment ID  ',
                                value: amendmentInfo?.amendmentId ?? 'ID'),
                            TaxAndFeeHelper(
                                title: 'Amendment Status  ',
                                value: amendmentInfo?.amendmentStatus ??
                                    'Processing'),
                            TaxAndFeeHelper(
                                title: 'Refundable Amount  ',
                                value:
                                    '₹ ${amendmentInfo?.refundableAmount?.toDouble() ?? '00.0'}'),
                            TaxAndFeeHelper(
                                title: 'Remarks  ',
                                value: '${amendmentInfo?.remarks}'),
                          ],
                        ),
                      ),
                      (amendmentInfo?.trips?.length ?? 0) == 0
                          ? Text('Wait some moments Your request is validating',
                              maxLines: 2,
                              style: textThinStyle1,
                              textAlign: TextAlign.center)
                          : Text(
                              'Amendment applicable Trips and Passengers',
                              maxLines: 2,
                              style: textThinStyle1,
                              textAlign: TextAlign.center,
                            ),
                      kHeight10,
                      const Text('Trip details:'),
                      ...List.generate(
                        amendmentInfo?.trips?.length ?? 0,
                        (tripIndex) => Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 1.w),
                          margin: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 3.w),
                          decoration: BoxDecoration(
                            color: kWhite,
                            borderRadius: kRadius15,
                            boxShadow: boxShadow3,
                            border: Border.all(width: .3),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              kHeight5,
                              TaxAndFeeHelper(
                                isGap: false,
                                title: 'Departure',
                                value: 'Arrival',
                                style: textStyle1.copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              TaxAndFeeHelper(
                                isGap: false,
                                title:
                                    amendmentInfo?.trips?[tripIndex].src ?? '',
                                value:
                                    amendmentInfo?.trips?[tripIndex].dest ?? '',
                              ),
                              TaxAndFeeHelper(
                                isGap: false,
                                title: 'Flight number',
                                value: amendmentInfo?.trips?[tripIndex]
                                        .flightNumbers?.first ??
                                    '',
                              ),
                              TaxAndFeeHelper(
                                isGap: false,
                                title: 'Airlines',
                                value: amendmentInfo
                                        ?.trips?[tripIndex].airlines?.first ??
                                    '',
                              ),
                              const DottedLines(height: 10),
                              kHeight5,
                              Text('Passengers:',
                                  style: textThinStyle1.copyWith(
                                      color: kBlack,
                                      fontSize: 13.sp,
                                      overflow: TextOverflow.ellipsis)),
                              kHeight5,
                              ...List.generate(
                                amendmentInfo?.trips?[tripIndex].travellers
                                        ?.length ??
                                    0,
                                (travellerIndex) => Container(
                                  decoration: BoxDecoration(
                                    color: klightWhite,
                                    borderRadius: kRadius10,
                                    boxShadow: boxShadow2,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 3.w),
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 0.w, vertical: 3.w),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('First name',
                                              style: textThinStyle1),
                                          Text(
                                              amendmentInfo
                                                      ?.trips?[tripIndex]
                                                      .travellers?[
                                                          travellerIndex]
                                                      .fn ??
                                                  'FN',
                                              style: textThinStyle1),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Last name',
                                              style: textThinStyle1),
                                          Text(
                                              amendmentInfo
                                                      ?.trips?[tripIndex]
                                                      .travellers?[
                                                          travellerIndex]
                                                      .ln ??
                                                  'LN',
                                              style: textThinStyle1),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text('Amendment Charge'),
                                          Text(
                                              '₹ ${amendmentInfo?.trips?[tripIndex].travellers?[travellerIndex].amendmentCharges?.toDouble() ?? '00.0'}',
                                              style: textThinStyle1),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text('Refundable amount'),
                                          Text(
                                              "₹ ${amendmentInfo?.trips?[tripIndex].travellers?[travellerIndex].refundableamount?.toDouble() ?? '000.0'}"),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text('Total Fare'),
                                          Text(
                                              '₹ ${amendmentInfo?.trips?[tripIndex].travellers?[travellerIndex].totalFare?.toDouble() ?? '000.0'}'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              kHeight5
                            ],
                          ),
                        ),
                      ),
                      kHeight10
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
