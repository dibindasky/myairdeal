import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/widgets/dotted_line.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/bottom_mini_container.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/ticket_detail_section.dart';
import 'package:myairdeal/domain/models/booking/all_booking_responce/all_booking_responce.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_bookingresponce_model/item_infos.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/search_airline_information.dart';

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

  @override
  Widget build(BuildContext context) {
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
                TicketDetailsSection(
                  bookingId: bookingId,
                  searchAirlineInformation: searchAirlineInformation,
                  itemInfos: itemInfos,
                  flightTicketCardEnum: flightTicketCardEnum,
                  allBookingResponce: allBookingResponce,
                ),
                const DottedLines(),
                BottomMiniContainer(
                  flightTicketCardEnum: flightTicketCardEnum,
                  buttonOnTap: buttonOnTap,
                  price: searchAirlineInformation != null
                      ? searchAirlineInformation!
                          .totalPriceList![0].fd!.adult!.fC!.tf!
                      : itemInfos != null
                          ? itemInfos!
                                  .air?.totalPriceInfo?.totalFareDetail?.fC?.tf
                                  ?.toDouble() ??
                              0
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
