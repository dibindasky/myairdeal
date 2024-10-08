import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/booking_canceled_tile_center_items.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/card_side_items.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/normal_center_items.dart';
import 'package:myairdeal/domain/models/booking/all_booking_responce/all_booking_responce.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_bookingresponce_model/item_infos.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/search_airline_information.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/si.dart';

class TicketDetailsSection extends StatelessWidget {
  const TicketDetailsSection({
    super.key,
    required this.searchAirlineInformation,
    this.itemInfos,
    this.bookingId,
    this.airlineCode,
    required this.flightTicketCardEnum,
    this.allBookingResponce,
  });

  final SearchAirlineInformation? searchAirlineInformation;
  final ItemInfos? itemInfos;
  final String? bookingId;
  final String? airlineCode;
  final FlightTicketCardEnum flightTicketCardEnum;
  final AllBookingResponce? allBookingResponce;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                      time: DateFormating.formatTime24(
                          searchAirlineInformation!.sI![0].dt!),
                    )
                  : itemInfos != null
                      ? CardSideItems(
                          place:
                              itemInfos!.air?.tripInfos?[0].sI?[0].da?.code ??
                                  '',
                          airPort:
                              itemInfos!.air?.tripInfos?[0].sI?[0].da?.city ??
                                  '',
                          from: 'Departure',
                          time: DateFormating.formatDate(
                            itemInfos!.air?.tripInfos?[0].sI?[0].dt ?? '',
                          ),
                        )
                      : kEmpty,
              searchAirlineInformation != null
                  ? NormalCenterItems(
                      airlineCode: airlineCode,
                      travelMinutes: DateFormating.getDurationOfFlights(
                          si: searchAirlineInformation?.sI ?? <SI>[]),
                      airline: searchAirlineInformation!.sI![0].fD!.aI!.name,
                      stops: searchAirlineInformation!.sI!.length - 1,
                    )
                  : flightTicketCardEnum == FlightTicketCardEnum.complete
                      ? BookingCombletedCancelledTabcenterItems(
                          price: itemInfos?.air?.totalPriceInfo?.totalFareDetail
                                  ?.fC?.tf ??
                              0)
                      : itemInfos != null
                          ? NormalCenterItems(
                              airlineCode: airlineCode,
                              travelMinutes: bookingId ?? '',
                              airline: itemInfos!
                                      .air?.tripInfos?[0].sI?[0].fD?.aI?.name ??
                                  '',
                              stops:
                                  (itemInfos!.air?.tripInfos?[0].sI?.length ??
                                          0) -
                                      1,
                              number: allBookingResponce
                                      ?.allBookingSearchquery?.cabinClass ??
                                  '',
                            )
                          : kEmpty,
              searchAirlineInformation != null
                  ? CardSideItems(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      place: searchAirlineInformation!
                          .sI![searchAirlineInformation!.sI!.length - 1]
                          .aa!
                          .code!,
                      airPort: searchAirlineInformation!
                          .sI![searchAirlineInformation!.sI!.length - 1]
                          .aa!
                          .city!,
                      from: 'Arrival',
                      time: DateFormating.formatTime24(searchAirlineInformation!
                          .sI![searchAirlineInformation!.sI!.length - 1].at!),
                    )
                  : itemInfos != null
                      ? CardSideItems(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          place: itemInfos!
                                  .air
                                  ?.tripInfos?[0]
                                  .sI?[(itemInfos!
                                              .air?.tripInfos?[0].sI?.length ??
                                          1) -
                                      1]
                                  .aa
                                  ?.code ??
                              '',
                          airPort: itemInfos!
                                  .air
                                  ?.tripInfos?[0]
                                  .sI?[(itemInfos!
                                              .air?.tripInfos?[0].sI?.length ??
                                          1) -
                                      1]
                                  .aa
                                  ?.code ??
                              '',
                          from: 'Arrival',
                          time: DateFormating.formatDate(
                              itemInfos!.air?.tripInfos?[0].sI?[0].at ?? ''),
                        )
                      : kEmpty,
            ],
          ),
        ),
      ],
    );
  }
}
