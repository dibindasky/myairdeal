import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/flight_ticket_expansion_card.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/flight_ticket_card.dart';

class TicketsListSorted extends StatelessWidget {
  const TicketsListSorted({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Obx(() {
      return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 11.w,right: 11.w,bottom: 25.h),
        itemCount: controller.searchList[controller.selectedTripListIndex.value].length,
        separatorBuilder: (context, index) => kHeight5,
        itemBuilder: (context, index) => CustomExpansionTile(
          isExpandable: controller.tripType.value == 0,
          child: Obx(() {
            return FlightTicketCard(
              onTap: controller.tripType.value != 0
                  ? () {
                      controller.changeFlightSelectionMultiCityAndRound(index);
                    }
                  : null,
              flightTicketCardEnum: FlightTicketCardEnum.homeSort,
              isSelectedTicket: controller.tripType.value != 0 &&
                  controller.selectedFlights[
                          controller.selectedTripListIndex.value] ==
                      index,
              borderColor: controller.tripType.value != 0 &&
                      controller.selectedFlights[
                              controller.selectedTripListIndex.value] ==
                          index
                  ? kBlack
                  : null,
              borderWidth: controller.tripType.value != 0 &&
                      controller.selectedFlights[
                              controller.selectedTripListIndex.value] ==
                          index
                  ? 3
                  : .7,
              color: controller.tripType.value != 0 &&
                      controller.selectedFlights[
                              controller.selectedTripListIndex.value] ==
                          index
                  ? kBlueLightShade
                  : kWhite,
              searchAirlineInformation: controller
                  .searchList[controller.selectedTripListIndex.value][index],
            );
          }),
          children: controller.tripType.value != 0
              ? []
              : List.generate(
                  controller
                      .searchList[controller.selectedTripListIndex.value][index]
                      .totalPriceList!
                      .length,
                  (index) => TicketDetailExpansionChild(
                    totalPriceList: controller
                        .searchList[controller.selectedTripListIndex.value][index]
                        .totalPriceList![0],
                  ),
                ),
        ),
      );
    });
  }
}
