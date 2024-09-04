import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class StopsSortBottomSheet extends StatelessWidget {
  const StopsSortBottomSheet({super.key});

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
      child: Column(
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
          Text('Stops', style: textHeadStyle1),
          kHeight10,
          SingleChildScrollView(
            child: Column(
              children: [
                Obx(() {
                  return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: controller
                            .sortingVariables[
                                controller.selectedTripListIndex.value]?[1]
                            .length ??
                        0,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        controller.selectStops(controller.sortingVariables[
                            controller.selectedTripListIndex.value]![1][index]);
                      },
                      child: Container(
                        color: kWhite,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    controller.sortingVariables[controller
                                                .selectedTripListIndex
                                                .value]![1][index] ==
                                            0
                                        ? 'Non Stop'
                                        : '${controller.sortingVariables[controller.selectedTripListIndex.value]![1][index]} Stops',
                                    style: textStyle1),
                                // Text('₹ 3500',
                                //     style: textStyle1.copyWith(
                                //         fontSize: 12.sp, color: kGreyDark)),
                              ],
                            ),
                            Obx(() {
                              return Checkbox(
                                value: controller.sortingVariablesSelected[
                                        controller
                                            .selectedTripListIndex.value]![1]
                                    .contains(controller.sortingVariables[
                                        controller.selectedTripListIndex
                                            .value]![1][index]),
                                onChanged: (value) {
                                  controller.selectStops(
                                      controller.sortingVariables[controller
                                          .selectedTripListIndex
                                          .value]![1][index]);
                                },
                                activeColor: kBluePrimary,
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
                kHeight5,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx( () {
                        return EventButton(
                          isBorder: true,
                          text: 'Reset',
                          onTap: () {
                            controller.resetStops();
                          },
                          color: kWhite,
                          borderColor: kBlack,
                          textColr: themeController.primaryColor,
                        );
                      }
                    ),
                    kWidth10,
                    EventButton(
                        text: 'Done',
                        onTap: () {
                          Navigator.of(context).pop();
                        })
                  ],
                ),
                kHeight20,
              ],
            ),
          )
        ],
      ),
    );
  }
}
