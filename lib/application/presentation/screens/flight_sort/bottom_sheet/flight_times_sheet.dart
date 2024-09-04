import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class FlightTimesBottomSheet extends StatelessWidget {
  const FlightTimesBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    final themeController = Get.find<ThemeController>();
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Obx(() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            kHeight5,
            Center(
              child: Container(
                width: 80.w,
                height: 5.h,
                decoration: BoxDecoration(color: kGrey, borderRadius: kRadius5),
              ),
            ),
            kHeight40,
            Text('Flight Times', style: textHeadStyle1),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    kHeight10,
                    Text(
                        'Departs From ${controller.airportSelected[controller.selectedTripListIndex.value][0].city ?? ''}',
                        style: textStyle1.copyWith(
                            color: themeController.secondaryColor)),
                    kHeight5,
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: controller.departureTimes.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          controller.selectDepartureTime(
                              controller.departureTimes[index]);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(controller.timesString[index],
                                    style: textThinStyle1.copyWith(
                                        color: kGreyDark)),
                                Text(controller.departureTimes[index],
                                    style: textThinStyle1),
                              ],
                            ),
                            Obx(() {
                              return Checkbox(
                                value: controller.sortingVariablesSelected[
                                        controller
                                            .selectedTripListIndex.value]![5]
                                    .contains(controller.departureTimes[index]),
                                onChanged: (value) {
                                  controller.selectDepartureTime(
                                      controller.departureTimes[index]);
                                },
                                activeColor: themeController.primaryColor,
                              );
                            })
                          ],
                        ),
                      ),
                    ),
                    kHeight5,
                    Text(
                        'Arrives to ${controller.airportSelected[controller.selectedTripListIndex.value][1].city ?? ''}',
                        style: textStyle1.copyWith(
                            color: themeController.secondaryColor)),
                    kHeight5,
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: controller.arrivesTimes.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          controller.selectArrivalTime(
                              controller.departureTimes[index]);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(controller.timesString[index],
                                    style: textThinStyle1.copyWith(
                                        color: kGreyDark)),
                                Text(controller.arrivesTimes[index],
                                    style: textThinStyle1),
                              ],
                            ),
                            Obx(() {
                              return Checkbox(
                                value: controller.sortingVariablesSelected[
                                        controller
                                            .selectedTripListIndex.value]![4]
                                    .contains(controller.departureTimes[index]),
                                onChanged: (value) {
                                  controller.selectArrivalTime(
                                      controller.arrivesTimes[index]);
                                },
                                activeColor: themeController.primaryColor,
                              );
                            })
                          ],
                        ),
                      ),
                    ),
                    kHeight5,
                    EventButton(
                        text: 'Search flights',
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        width: double.infinity),
                    kHeight20
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
