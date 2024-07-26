import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/domestic_trips_international_oneway_tille.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/international_combo_tile.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class TicketsListSorted extends StatelessWidget {
  const TicketsListSorted({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Obx(() {
      if ((controller.comboTrip.value && controller.comboList.isEmpty) ||
          (!controller.comboTrip.value &&
              controller.searchList[controller.selectedTripListIndex.value]
                  .isEmpty)) {
        return Center(
            child: Column(
          children: [
            kHeight40,
            const Text('No Flights Available'),
          ],
        ));
      }
      return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 11.w, right: 11.w, bottom: 25.h),
        itemCount: controller.comboTrip.value
            ? controller.comboList.length
            : controller
                .searchList[controller.selectedTripListIndex.value].length,
        separatorBuilder: (context, index) => kHeight5,
        itemBuilder: (context, index) => controller.comboTrip.value
            ? InternationalMutliComboTile(index: index)
            : DomesticTripsAndOneWayInternationalTile(index: index),
      );
    });
  }
}
