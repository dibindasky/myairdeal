import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class FloatingButtonSection extends StatelessWidget {
  const FloatingButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Obx(() {
      return controller.tripType.value == 0 ||
              controller.searchListLoading.value
          ? kEmpty
          : FloatingActionButton.extended(
              backgroundColor: kBlueDark,
              splashColor: kBluePrimary,
              onPressed: () {
                controller.nextOrContinue();
              },
              label: Column(
                children: [
                  Text(
                    controller.selectedTripListIndex.value ==
                            controller.searchList.length - 1
                        ? 'Continue'
                        : 'Next',
                    style: textStyle1.copyWith(color: kWhite),
                  ),
                  Text(
                    '₹ 4,500',
                    style: textThinStyle1.copyWith(color: kWhite),
                  )
                ],
              ),
            );
    });
  }
}
