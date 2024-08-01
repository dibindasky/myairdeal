import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/ticket_cancel_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/domain/models/booking/get_single_booking/traveller_info.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_request_model/traveller.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_request_model/trip.dart';

class TravelersDetails extends StatelessWidget {
  const TravelersDetails({
    super.key,
    this.travellerInfos,
    required this.trip,
  });

  final List<TravellerInfo>? travellerInfos;
  final Trip trip;

  @override
  Widget build(BuildContext context) {
    final cancellationController = Get.find<TicketCancellationController>();
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      // padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        border: Border.all(color: kBlueLight),
      ),
      child: GetBuilder<TicketCancellationController>(builder: (contxt) {
        return Wrap(
          runSpacing: 3.w,
          spacing: 3.w,
          children: [
            ...List.generate(
              (travellerInfos?.length ?? 0),
              (travllerIndex) {
                final TravellerInfo? travelerInfo =
                    travellerInfos?[travllerIndex];

                return GestureDetector(
                  onTap: () {
                    cancellationController.selectPassenger(
                        trip: trip,
                        traveller: Traveller(
                            fn: travelerInfo?.fN, ln: travelerInfo?.lN));
                  },
                  child: Container(
                    // decoration: const BoxDecoration(color: knill),
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                    child: Obx(() {
                      final bool selected = cancellationController.selectedTrips
                              .contains(trip) &&
                          (cancellationController.selectedTravellers[trip] ??
                                  [])
                              .contains(Traveller(
                                  fn: travelerInfo?.fN, ln: travelerInfo?.lN));
                      return Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 2.w, horizontal: 3.h),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '${travelerInfo?.ti}  ${travelerInfo?.fN} ${travelerInfo?.lN} (${travelerInfo?.pt?[0]})',
                              style: textThinStyle1.copyWith(
                                  fontWeight: FontWeight.w600),
                            ),
                            kWidth5,
                            Container(
                                width: 24.0, // Width of the checkbox
                                height: 24.0, // Height of the checkbox
                                decoration: BoxDecoration(
                                  color: selected
                                      ? kGreen
                                      : kWhite, // Background color
                                  border: Border.all(
                                    color: selected
                                        ? kGreen
                                        : kGrey, // Border color
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      4.0), // Rounded corners
                                ),
                                child: selected
                                    ? Icon(
                                        color: kWhite,
                                        Icons.check,
                                        size: 14.w,
                                      )
                                    : null),
                          ],
                        ),
                      );
                    }),
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
