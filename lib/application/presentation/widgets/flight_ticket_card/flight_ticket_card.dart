import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/widgets/dotted_line.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/booking_canceled_tile_center_items.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/bottom_mini_container.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/card_side_items.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/normal_center_items.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/search_airline_information.dart';

class FlightTicketCard extends StatelessWidget {
  const FlightTicketCard(
      {super.key,
      this.buttonOnTap,
      required this.flightTicketCardEnum,
      this.index = 0,
      this.searchAirlineInformation});

  final VoidCallback? buttonOnTap;
  final FlightTicketCardEnum flightTicketCardEnum;
  final SearchAirlineInformation? searchAirlineInformation;
  final int index;

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
                    searchAirlineInformation != null
                        ? CardSideItems(
                            place:
                                searchAirlineInformation!.sI![index].da!.code!,
                            airPort:
                                searchAirlineInformation!.sI![index].da!.city!,
                            from: 'Departure',
                            time: DateFormating.formatTime(
                                searchAirlineInformation!.sI![index].dt!),
                          )
                        : const CardSideItems(
                            place: 'TTT',
                            airPort: 'Airport',
                            from: 'Departure',
                            time: '07:00 AM',
                          ),
                    flightTicketCardEnum == FlightTicketCardEnum.complete ||
                            flightTicketCardEnum ==
                                FlightTicketCardEnum.cancelled
                        ? BookingCombletedCancelledTabcenterItems()
                        : NormalCenterItems(
                            airline: searchAirlineInformation!
                                .sI![index].fD!.aI!.name,
                            stops: searchAirlineInformation!.sI![index].stops ??
                                0),
                    searchAirlineInformation != null
                        ? CardSideItems(
                            place:
                                searchAirlineInformation!.sI![index].aa!.code!,
                            airPort:
                                searchAirlineInformation!.sI![index].aa!.city!,
                            from: 'Departure',
                            time: DateFormating.formatTime(
                                searchAirlineInformation!.sI![index].at!),
                          )
                        : const CardSideItems(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            place: 'TTT',
                            airPort: 'Airport',
                            from: 'Arrival',
                            time: '07:00 PM',
                          ),
                  ],
                ),
              ),
              const DottedLines(),
              BottomMiniContainer(
                flightTicketCardEnum: flightTicketCardEnum,
                buttonOnTap: buttonOnTap,
                price: searchAirlineInformation!
                    .totalPriceList![index].fd!.adult!.fC!.tf!,
              ),
            ],
          ),
        ),
        Positioned(
          left: 1,
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
          right: 1,
          bottom: 45,
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
