import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/ticket_cancel_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_request_model/traveller.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_request_model/trip.dart';

class TravelersDetails extends StatelessWidget {
  const TravelersDetails({super.key, this.index});
  final int? index;
  @override
  Widget build(BuildContext context) {
    final cancellationController = Get.find<TicketCancellationController>();
    final bookingController = Get.find<BookingController>();
    final travelersData = bookingController
        .retrieveSingleBookingresponceModel
        .value
        .retrieveSingleBookingresponceModel
        ?.itemInfos
        ?.air
        ?.travellerInfos;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        border: Border.all(color: kBlueLight),
      ),
      child: GetBuilder<TicketCancellationController>(
          builder: (tickeCancelationController) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Travelers info',
                style: textStyle1.copyWith(fontWeight: FontWeight.w700)),
            ...List.generate(
              (travelersData?.length ?? 0),
              (index) {
                final traveler = travelersData?[index];
                final travellerModel =
                    Traveller(fn: traveler?.fN, ln: traveler?.lN);
                final trip = Trip(
                  src: bookingController
                          .retrieveSingleBookingresponceModel
                          .value
                          .retrieveSingleBookingresponceModel
                          ?.itemInfos
                          ?.air
                          ?.tripInfos?[index]
                          .sI?[0]
                          .da
                          ?.city ??
                      '', // replace with actual trip source
                  dest: bookingController
                          .retrieveSingleBookingresponceModel
                          .value
                          .retrieveSingleBookingresponceModel
                          ?.itemInfos
                          ?.air
                          ?.tripInfos?[index]
                          .sI?[((bookingController
                                      .retrieveSingleBookingresponceModel
                                      .value
                                      .retrieveSingleBookingresponceModel
                                      ?.itemInfos
                                      ?.air
                                      ?.tripInfos?[index]
                                      .sI
                                      ?.length ??
                                  1) -
                              1)]
                          .aa
                          ?.city ??
                      '', // replace with actual trip destination
                  departureDate: DateFormating.formatYearMonthDate(
                    (bookingController
                            .retrieveSingleBookingresponceModel
                            .value
                            .retrieveSingleBookingresponceModel
                            ?.itemInfos
                            ?.air
                            ?.tripInfos?[index]
                            .sI?[0]
                            .dt ??
                        ''),
                  ),
                  travellers: [],
                );

                final isAlreadyAdded = cancellationController
                    .isTravelerSelected(trip, travellerModel);

                return GestureDetector(
                  onTap: () {
                    //log('${cancellationController.cancelSelectedItems.toJson()}');
                    // if (isAlreadyAdded) {
                    //   cancellationController.removeTraveler(
                    //       trip, travellerModel);
                    // } else {
                    //   cancellationController.addTraveler(trip, travellerModel);
                    // }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: isAlreadyAdded
                            ? kBlueLightShade.withOpacity(.3)
                            : knill),
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${travelersData?[index].ti}  ${travelersData?[index].fN} ${travelersData?[index].lN}  (${travelersData?[index].pt})',
                              style: textThinStyle1.copyWith(
                                  fontWeight: FontWeight.w600),
                            ),
                            isAlreadyAdded
                                ? CircleAvatar(
                                    backgroundColor: kBlueLight,
                                    radius: 8.w,
                                    child: Icon(
                                      color: kWhite,
                                      Icons.check,
                                      size: 14.w,
                                    ))
                                : kEmpty,
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        );
      }),
    );
  }
}
