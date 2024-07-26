import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/ticket_cancel_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_bookingresponce_model/traveller_info.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_bookingresponce_model/trip_info.dart';

import '../../../../../../domain/models/booking/ticket_cancel/ticket_cancel_request_model/trip.dart';

class TravelersDetails extends StatelessWidget {
  const TravelersDetails(
      {super.key, this.tripIndex, this.travellerInfos, this.trips});
  final int? tripIndex;
  final List<TravellerInfo>? travellerInfos;
  final List<Trip>? trips;

  @override
  Widget build(BuildContext context) {
    // final cancellationController = Get.find<TicketCancellationController>();
    // final bookingController = Get.find<BookingController>();
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
              (travellerInfos?.length ?? 0),
              (index) {
                const isAlreadyAdded = true;
                return GestureDetector(
                  onTap: () {},
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
                              '${travellerInfos?[index].ti}  ${travellerInfos?[index].fN} ${travellerInfos?[index].lN}  (${travellerInfos?[index].pt})',
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
