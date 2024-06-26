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
      this.searchAirlineInformation});

  final VoidCallback? buttonOnTap;
  final FlightTicketCardEnum flightTicketCardEnum;
  final SearchAirlineInformation? searchAirlineInformation;

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
                            place: searchAirlineInformation!.sI![0].da!.code!,
                            airPort: searchAirlineInformation!.sI![0].da!.city!,
                            from: 'Departure',
                            time: DateFormating.formatTime(
                                searchAirlineInformation!.sI![0].dt!),
                          )
                        : const CardSideItems(
                            place: 'TTT',
                            airPort: 'Airport',
                            from: 'Departure',
                            time: '07:00 AM',
                          ),
                    searchAirlineInformation != null
                        ? NormalCenterItems(
                            travelMinutes: DateFormating.getDifferenceOfDates(
                                searchAirlineInformation!.sI![0].dt!,
                                searchAirlineInformation!
                                    .sI![searchAirlineInformation!.sI!.length -
                                        1]
                                    .at!),
                            airline:
                                searchAirlineInformation!.sI![0].fD!.aI!.name,
                            stops: searchAirlineInformation!.sI!.length - 1)
                        : flightTicketCardEnum ==
                                    FlightTicketCardEnum.complete ||
                                flightTicketCardEnum ==
                                    FlightTicketCardEnum.cancelled
                            ? BookingCombletedCancelledTabcenterItems()
                            : const NormalCenterItems(),
                    searchAirlineInformation != null
                        ? CardSideItems(
                            place: searchAirlineInformation!
                                .sI![searchAirlineInformation!.sI!.length - 1]
                                .aa!
                                .code!,
                            airPort: searchAirlineInformation!
                                .sI![searchAirlineInformation!.sI!.length - 1]
                                .aa!
                                .city!,
                            from: 'Arrival',
                            time: DateFormating.formatTime(
                                searchAirlineInformation!
                                    .sI![searchAirlineInformation!.sI!.length -
                                        1]
                                    .at!),
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
                price: searchAirlineInformation != null
                    ? searchAirlineInformation!
                        .totalPriceList![0].fd!.adult!.fC!.tf!
                    : 0,
              ),
            ],
          ),
        ),
        Positioned(
          left: 1,
          bottom: 45,
          child: Container(
            decoration: BoxDecoration(
              color: kGreylowLight,
              borderRadius: const BorderRadius.only(
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
            decoration: BoxDecoration(
              color: kGreylowLight,
              borderRadius: const BorderRadius.only(
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
