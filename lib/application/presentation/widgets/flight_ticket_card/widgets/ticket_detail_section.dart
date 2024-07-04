import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/booking_canceled_tile_center_items.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/card_side_items.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/normal_center_items.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_bookingresponce_model/item_infos.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/search_airline_information.dart';

class TicketDetailsSection extends StatelessWidget {
  const TicketDetailsSection({
    super.key,
    required this.searchAirlineInformation,
    this.itemInfos,
    required this.flightTicketCardEnum,
  });

  final SearchAirlineInformation? searchAirlineInformation;
  final ItemInfos? itemInfos;
  final FlightTicketCardEnum flightTicketCardEnum;

  @override
  Widget build(BuildContext context) {
    return Stack (
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
                  : itemInfos != null
                      ? CardSideItems(
                          place:
                              itemInfos!.air?.tripInfos?[0].sI?[0].da?.code ?? '',
                          airPort:
                              itemInfos!.air?.tripInfos?[0].sI?[0].da?.city ?? '',
                          from: 'Departure',
                          time: DateFormating.getDate(DateTime.parse(
                              itemInfos!.air?.tripInfos?[0].sI?[0].dt ?? '')),
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
                              .sI![searchAirlineInformation!.sI!.length - 1].at!),
                      airline: searchAirlineInformation!.sI![0].fD!.aI!.name,
                      stops: searchAirlineInformation!.sI!.length - 1)
                  : flightTicketCardEnum == FlightTicketCardEnum.complete ||
                          flightTicketCardEnum == FlightTicketCardEnum.cancelled
                      ? BookingCombletedCancelledTabcenterItems()
                      : const NormalCenterItems(),
              searchAirlineInformation != null
                  ? CardSideItems(
                      place: searchAirlineInformation!
                          .sI![searchAirlineInformation!.sI!.length - 1].aa!.code!,
                      airPort: searchAirlineInformation!
                          .sI![searchAirlineInformation!.sI!.length - 1].aa!.city!,
                      from: 'Arrival',
                      time: DateFormating.formatTime(searchAirlineInformation!
                          .sI![searchAirlineInformation!.sI!.length - 1].at!),
                    )
                  : itemInfos != null
                      ? CardSideItems(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          place: itemInfos!
                                  .air
                                  ?.tripInfos?[0]
                                  .sI?[((itemInfos!.air?.tripInfos?[0].sI?.length ??
                                          1) -
                                      1)]
                                  .aa
                                  ?.code ??
                              '',
                          airPort: itemInfos!
                                  .air
                                  ?.tripInfos?[0]
                                  .sI?[((itemInfos!.air?.tripInfos?[0].sI?.length ??
                                          1) -
                                      1)]
                                  .aa
                                  ?.code ??
                              '',
                          from: 'Arrival',
                          time: DateFormating.getDate(DateTime.parse(
                              itemInfos!.air?.tripInfos?[0].sI?[0].at ?? '')),
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
      ],
    );
  }
}
