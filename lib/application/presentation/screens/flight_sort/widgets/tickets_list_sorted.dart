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
        padding: EdgeInsets.symmetric(horizontal: 11.w),
        itemCount: controller.searchList.length,
        separatorBuilder: (context, index) => kHeight5,
        itemBuilder: (context, index) => CustomExpansionTile(
          isExpandable: controller.tripType.value == 0,
          child: FlightTicketCard(
            onTap: controller.tripType.value != 0
                ? () {
                    controller.changeSelectedTripIndex(index);
                  }
                : null,
            flightTicketCardEnum: FlightTicketCardEnum.homeSort,
            isSelectedTicket: controller.tripType.value != 0 &&
                controller.selectedFlights[index] == index,
            borderColor: controller.tripType.value != 0 &&
                    controller.selectedFlights[index] == index
                ? kBlack
                : null,
            borderWidth: controller.tripType.value != 0 &&
                    controller.selectedFlights[index] == index
                ? 3
                : .7,
            color: controller.tripType.value != 0 &&
                    controller.selectedFlights[index] == index
                ? kBlueLightShade
                : kWhite,
            searchAirlineInformation:
                controller.searchList[controller.selctedTripIndex.value][index],
          ),
          children: List.generate(
            controller.searchList[controller.selctedTripIndex.value][index]
                .totalPriceList!.length,
            (index) => TicketDetailExpansionChild(
              totalPriceList: controller
                  .searchList[controller.selctedTripIndex.value][index]
                  .totalPriceList![0],
            ),
          ),
        ),
      );
    });
  }
}
