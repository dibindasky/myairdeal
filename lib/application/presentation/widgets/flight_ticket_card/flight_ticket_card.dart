import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/widgets/dotted_line.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/bottom_mini_container.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/card_side_items.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/normal_center_items.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/ticket_detail_section.dart';
import 'package:myairdeal/domain/models/booking/all_booking_responce/all_booking_responce.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_bookingresponce_model/item_infos.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/search_airline_information.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/si.dart';

class FlightTicketCard extends StatelessWidget {
  const FlightTicketCard({
    super.key,
    this.buttonOnTap,
    this.itemInfos,
    required this.flightTicketCardEnum,
    this.color = kWhite,
    this.isSelectedTicket = false,
    this.borderColor,
    this.borderWidth = .7,
    this.onTap,
    this.bookingId,
    this.flightId,
    this.searchAirlineInformation,
    this.allBookingResponce,
    this.airlineCode,
    this.share,
  });

  final VoidCallback? buttonOnTap;
  final FlightTicketCardEnum flightTicketCardEnum;
  final SearchAirlineInformation? searchAirlineInformation;
  final ItemInfos? itemInfos;
  final Color color;
  final String? flightId;
  final Color? borderColor;
  final double borderWidth;
  final bool isSelectedTicket;
  final VoidCallback? onTap;
  final String? bookingId;
  final AllBookingResponce? allBookingResponce;
  final String? airlineCode;
  final Function()? share;

  @override
  Widget build(BuildContext context) {
    final tripInfos = allBookingResponce
        ?.retrieveSingleBookingresponceModel?.itemInfos?.air?.tripInfos;

    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: kRadius15,
              boxShadow: boxShadow3,
              border: Border.all(
                width: borderWidth,
                color: borderColor != null
                    ? borderColor!
                    : flightTicketCardEnum == FlightTicketCardEnum.cancelled
                        ? kRedLight.withOpacity(.9)
                        : kBlack,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                (tripInfos?.length ?? 0) > 0
                    ? Column(
                        children: List.generate(
                          (tripInfos?.length ?? 1),
                          (tripIndex) {
                            return Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CardSideItems(
                                    place:
                                        tripInfos?[tripIndex].sI![0].da?.city ??
                                            '',
                                    airPort:
                                        tripInfos?[tripIndex].sI![0].da?.name ??
                                            '',
                                    from: 'Departure',
                                    time: DateFormating.formatDate(
                                        allBookingResponce
                                                ?.retrieveSingleBookingresponceModel
                                                ?.itemInfos
                                                ?.air
                                                ?.tripInfos?[tripIndex]
                                                .sI![0]
                                                .dt ??
                                            ''),
                                  ),
                                  NormalCenterItems(
                                    airlineCode:
                                        (tripInfos?[tripIndex].sI?.length ??
                                                    0) >
                                                1
                                            ? null
                                            : airlineCode,
                                    stops: (tripInfos?[tripIndex].sI?.length ??
                                            0) -
                                        1,
                                    haveImage: false,
                                    airline:
                                        (tripInfos?[tripIndex].sI?.length ??
                                                    0) >
                                                1
                                            ? null
                                            : tripInfos?[tripIndex]
                                                    .sI?[0]
                                                    .fD
                                                    ?.aI
                                                    ?.name ??
                                                '',
                                    number: '',
                                    date: DateFormating.getDurationOfFlights(
                                        si: tripInfos?[tripIndex].sI ?? <SI>[]),
                                  ),
                                  CardSideItems(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    place: tripInfos?[tripIndex]
                                            .sI?[(tripInfos[tripIndex]
                                                        .sI
                                                        ?.length ??
                                                    1) -
                                                1]
                                            .aa
                                            ?.city ??
                                        '',
                                    airPort: tripInfos?[tripIndex]
                                            .sI![(tripInfos[tripIndex]
                                                        .sI
                                                        ?.length ??
                                                    1) -
                                                1]
                                            .aa
                                            ?.name ??
                                        '',
                                    from: 'Arrival',
                                    time: DateFormating.formatDate(
                                      (tripInfos?[tripIndex]
                                              .sI?[(tripInfos[tripIndex]
                                                          .sI
                                                          ?.length ??
                                                      1) -
                                                  1]
                                              .at ??
                                          ''),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    : TicketDetailsSection(
                        airlineCode: airlineCode,
                        bookingId: bookingId,
                        searchAirlineInformation: searchAirlineInformation,
                        itemInfos: itemInfos,
                        flightTicketCardEnum: flightTicketCardEnum,
                        allBookingResponce: allBookingResponce,
                      ),
                const DottedLines(),
                BottomMiniContainer(
                  bookingId: bookingId,
                  share: share,
                  flightTicketCardEnum: flightTicketCardEnum,
                  buttonOnTap: buttonOnTap,
                  price: searchAirlineInformation != null &&
                          searchAirlineInformation!.totalPriceList != null &&
                          searchAirlineInformation!.totalPriceList!.isNotEmpty
                      ? (searchAirlineInformation!
                                  .totalPriceList?[0].fd?.adult?.fC?.tf ??
                              0.0)
                          .toDouble()
                      : itemInfos != null
                          ? (itemInfos!.air?.totalPriceInfo?.totalFareDetail?.fC
                                      ?.tf ??
                                  0.0)
                              .toDouble()
                          : 0,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: isSelectedTicket ? 3 : 1,
          bottom: 45,
          child: Container(
            decoration: BoxDecoration(
              color: isSelectedTicket ? kWhite : kGreylowLight,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            width: 20.w,
            height: 18.h,
          ),
        ),
        Positioned(
          right: isSelectedTicket ? 3 : 1,
          bottom: 45,
          child: Container(
            decoration: BoxDecoration(
              color: isSelectedTicket ? kWhite : kGreylowLight,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
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
