import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/flight_ticket_expansion_card.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/flight_ticket_card.dart';
import 'package:myairdeal/domain/models/booking/review_price_detail_id_model/review_price_detail_id_model.dart';

class DomesticTripsAndOneWayInternationalTile extends StatelessWidget {
  const DomesticTripsAndOneWayInternationalTile(
      {super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return CustomExpansionTile(
      child: Obx(() {
        return FlightTicketCard(
          flightTicketCardEnum: FlightTicketCardEnum.homeSort,
          color: controller.tripType.value != 0 &&
                  controller.selectedFlights[
                          controller.selectedTripListIndex.value] ==
                      index
              ? kBlueLightShade
              : kWhite,
          searchAirlineInformation: controller
              .searchList[controller.selectedTripListIndex.value][index],
          airlineCode: controller
              .searchList[controller.selectedTripListIndex.value][index]
              .sI?[0]
              .fD
              ?.aI
              ?.code,
        );
      }),
      children: List.generate(
        controller.searchList[controller.selectedTripListIndex.value][index]
            .totalPriceList!.length,
        (i) => Obx(() {
          return TicketDetailExpansionChild(
            isSelected: controller.tripType.value != 0 &&
                controller.selectedFlights[
                        controller.selectedTripListIndex.value] ==
                    index &&
                controller.selectedTicketPrices[
                        controller.selectedTripListIndex.value] ==
                    i,
            onTapBookNow: () {
              // update travellers count
              Get.find<TravellerController>().updatePassengersNumber(
                  controller.adultCount.value +
                      controller.childrenCount.value +
                      controller.infantCount.value,
                  controller.adultCount.value + controller.childrenCount.value);
              Get.find<BookingController>().reviewPriceDetailChecking(
                  reviewPriceDetailIdModel: ReviewPriceDetailIdModel(priceIds: [
                controller
                        .searchList[controller.selectedTripListIndex.value]
                            [index]
                        .totalPriceList![i]
                        .id ??
                    ''
              ]));
            },
            onTap: controller.tripType.value == 0
                ? null
                : () {
                    controller.changeFlightSelectionMultiCityAndRound(index, i);
                  },
            totalPriceList: controller
                .searchList[controller.selectedTripListIndex.value][index]
                .totalPriceList![i],
          );
        }),
      ),
    );
  }
}
