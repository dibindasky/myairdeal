import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/widgets/dotted_line.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/booking_canceled_tile_center_items.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/bottom_mini_container.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/card_side_items.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/normal_center_items.dart';

class FlightTicketCard extends StatelessWidget {
  FlightTicketCard({
    super.key,
    required this.buttonOnTap,
    required this.flightTicketCardEnum,
  });

  final VoidCallback buttonOnTap;
  final FlightTicketCardEnum flightTicketCardEnum;

  final bookingController = Get.find<BookingController>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: kRadius15,
            boxShadow: boxShadow3,
            border: Border.all(
              width: .7,
              color: flightTicketCardEnum == FlightTicketCardEnum.cancelled
                  ? kRedLight.withOpacity(.9)
                  : kBlack,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CardSideItems(
                      place: 'TML',
                      airPort: 'Temale',
                      from: 'Deport',
                      time: '07:00 AM',
                    ),
                    (flightTicketCardEnum == FlightTicketCardEnum.comblete ||
                            flightTicketCardEnum ==
                                FlightTicketCardEnum.cancelled)
                        ? BookingCombletedCancelledTabcenterItems()
                        : const NormalCenterItems(),
                    const CardSideItems(
                      place: 'KMS',
                      airPort: 'Kumasi',
                      from: 'Arrival',
                      time: '08:40 PM',
                    ),
                  ],
                ),
              ),
              const DottedLines(),
              BottomMiniContainer(
                  flightTicketCardEnum: flightTicketCardEnum,
                  buttonOnTap: buttonOnTap),
            ],
          ),
        ),
        Positioned(
          left: .5,
          bottom: 45,
          child: Container(
            decoration: const BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(13),
                  bottomRight: Radius.circular(10)),
            ),
            width: 20.w,
            height: 18.h,
          ),
        ),
        Positioned(
          bottom: 45,
          right: 0.5,
          child: Container(
            decoration: const BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13),
                bottomLeft: Radius.circular(10),
              ),
            ),
            width: 20.w,
            height: 18.h,
          ),
        ),
      ],
    );
  }
}
