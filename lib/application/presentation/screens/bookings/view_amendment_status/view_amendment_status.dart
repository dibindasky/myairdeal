import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/ticket_cancel_controller.dart';
import 'package:myairdeal/application/presentation/screens/bookings/flight_invoice/widgets/ticket_column.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/shimmer.dart';

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
              const DetailAppBar(heading: 'Check amendment status'),
              ...List.generate(
                bookingController.retrieveSingleBookingresponceModel.value
                        .amendment?.length ??
                    0,
                (amendMentIndex) {
                  if (cancelController.nextLoading.value &&
                      amendMentIndex >=
                          cancelController.amendmentDetails.length) {
                    return const Skeleton(
                        crossAxisCount: 1,
                        itemCount: 1,
                        childAspectRatio: 1 / .4);
                  }
                  if (cancelController.amendmentDetails[amendMentIndex] ==
                      null) {
                    return const Center(child: Text(errorMessage));
                  }
                  final amendmentInfo =
                      cancelController.amendmentDetails[amendMentIndex];
                  return Column(
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Booking ID'),
                                Text(amendmentInfo?.bookingId ?? 'ID'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Amendment Id'),
                                Text(amendmentInfo?.amendmentId ?? 'ID'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Amendment Status'),
                                Text(amendmentInfo?.amendmentStatus ??
                                    'Processing'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Refundable Amount'),
                                Text(
                                    '${amendmentInfo?.refundableAmount ?? '000'}'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Remarks'),
                                Text(amendmentInfo?.remarks ?? ''),
                              ],
                            ),
                          ],
                        ),
                      ),
                      (amendmentInfo?.trips?.length ?? 0) == 0
                          ? Text('Wait some moments Your request is validating',
                              maxLines: 2, style: textThinStyle1)
                          : Text('Amendment applicable Trips and Passengers',
                              maxLines: 2, style: textThinStyle1),
                      kHeight5,
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: TicketColumn(
                                      label: amendmentInfo
                                              ?.trips?[tripIndex].src ??
                                          'from',
                                      value: DateFormating.formatDate(
                                          amendmentInfo?.trips?[tripIndex]
                                                  .departureDate ??
                                              ''),
                                      lebelStyle: textThinStyle1,
                                      valueStyle: textThinStyle1,
                                      subValueStyle: textThinStyle1,
                                      exitStyle: textThinStyle1,
                                      subValue: 'Airline Number',
                                      exit: 'Flight number',
                                      isBold: true,
                                    ),
                                  ),
                                  RotatedBox(
                                      quarterTurns: 1,
                                      child: Icon(
                                        Icons.flight,
                                        color: kBlueDark,
                                        size: 16.w,
                                      )),
                                  Expanded(
                                    child: TicketColumn(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      label: 'des',
                                      lebelStyle: textThinStyle1,
                                      valueStyle: textThinStyle1,
                                      subValueStyle: textThinStyle1,
                                      exitStyle: textThinStyle1,
                                      value: '',
                                      subValue: "--",
                                      exit: '--',
                                      isBold: true,
                                    ),
                                  ),
                                ],
                              ),
                              Text('Travellers',
                                  style:
                                      textHeadStyle1.copyWith(fontSize: 14.sp)),
                              kHeight5,
                              ...List.generate(
                                amendmentInfo?.trips?[tripIndex].travellers
                                        ?.length ??
                                    2,
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
                                              '${amendmentInfo?.trips?[tripIndex].travellers?[travellerIndex].amendmentCharges ?? '000'}',
                                              style: textThinStyle1),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text('Refundable amount'),
                                          Text(
                                              "${amendmentInfo?.trips?[tripIndex].travellers?[travellerIndex].refundableamount ?? '000'}"),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text('Total Fare'),
                                          Text(
                                              '${amendmentInfo?.trips?[tripIndex].travellers?[travellerIndex].totalFare ?? '000'}'),
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
