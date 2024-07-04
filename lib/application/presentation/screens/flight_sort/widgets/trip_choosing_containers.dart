import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';

class TripChoosingContainers extends StatelessWidget {
  const TripChoosingContainers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      controller:controller.flightSortTabController,
      child: Obx(() {
        return controller.searchList.length == 1
            ? kEmpty
            : Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  controller.searchList.length,
                  (index) => GestureDetector(
                    onTap: () {
                      controller.changeSelectedTripIndex(index);
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: index == 0? 15.w : 0, bottom: 10.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      decoration: BoxDecoration(
                        color: index == controller.selectedTripListIndex.value? kBlueLightShade : kWhite,
                        border: Border.all(
                            color: kBluePrimary, width: index == 0 ? 1 : 1),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                    controller.airportSelected[index][0].city ??
                                        '',
                                    style: textThinStyle1),
                                const Icon(Icons.arrow_forward,
                                    color: kBluePrimary),
                                Text(
                                    controller.airportSelected[index][1].city ??
                                        '',
                                    style: textThinStyle1)
                              ],
                            ),
                            Text(
                                DateFormating.getDate(controller
                                            .tripType.value ==
                                        1
                                    ? index == 0
                                        ? controller.depatureDate.value
                                        : controller.returnDate.value
                                    : controller.multiCityDepartureDate[index]),
                                style:
                                    textThinStyle1.copyWith(color: kGreyDark)),
                          ]),
                    ),
                  ),
                ),
              );
      }),
    );
  }
}
