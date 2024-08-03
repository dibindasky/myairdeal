import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class AirlinesBottomSheet extends StatelessWidget {
  const AirlinesBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
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
            Text('Airlines', style: textHeadStyle1),
            kHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Select All', style: textStyle1),
                Checkbox(
                  value: controller
                          .sortingVariables[
                              controller.selectedTripListIndex.value]![0]
                          .length ==
                      controller
                          .sortingVariablesSelected[
                              controller.selectedTripListIndex.value]![0]
                          .length,
                  onChanged: (value) {
                    controller.selectAllAirline(value ?? false);
                  },
                  activeColor: kBluePrimary,
                )
              ],
            ),
            const Divider(color: kGrey),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: controller
                          .sortingVariables[
                              controller.selectedTripListIndex.value]![0]
                          .length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          controller.selectAirline(controller.sortingVariables[
                                  controller.selectedTripListIndex.value]![0]
                              [index]);
                        },
                        child: Container(
                          color: kWhite,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  controller.sortingVariables[controller
                                          .selectedTripListIndex
                                          .value]![0][index]
                                      .toString(),
                                  style: textStyle1),
                              Checkbox(
                                value: controller.sortingVariablesSelected[
                                        controller
                                            .selectedTripListIndex.value]![0]
                                    .contains(controller.sortingVariables[
                                        controller.selectedTripListIndex
                                            .value]![0][index]),
                                onChanged: (value) {
                                  controller.selectAirline(
                                      controller.sortingVariables[controller
                                          .selectedTripListIndex
                                          .value]![0][index]);
                                },
                                activeColor: kBluePrimary,
                              )
                            ],
                          ),
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
                    kHeight20,
                  ],
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
