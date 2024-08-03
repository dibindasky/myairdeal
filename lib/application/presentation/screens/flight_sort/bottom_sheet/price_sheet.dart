import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/debouncer/debouncer.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class PriceSortBottomSheet extends StatefulWidget {
  const PriceSortBottomSheet({
    super.key,
  });

  @override
  State<PriceSortBottomSheet> createState() => _PriceSortBottomSheetState();
}

class _PriceSortBottomSheetState extends State<PriceSortBottomSheet> {
  Debouncer debouncer = Debouncer(milliseconds: 200);

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
        controller.durationSlider.value;
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
            Text('Price', style: textHeadStyle1),
            kHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Max Price', style: textStyle1),
                    Text(
                        '₹ ${(controller.sortingVariablesSelected[controller.selectedTripListIndex.value]![3].isEmpty ? controller.sortingVariables[controller.selectedTripListIndex.value]![3].last : controller.sortingVariablesSelected[controller.selectedTripListIndex.value]![3].first).round()}',
                        style: textThinStyle1.copyWith(color: kGreyDark)),
                  ],
                ),
                Radio(
                    value: true,
                    groupValue: true,
                    onChanged: (value) {},
                    activeColor: kBluePrimary)
              ],
            ),
            kHeight5,
            Slider(
                max: controller
                        .sortingVariables[
                            controller.selectedTripListIndex.value]![3]
                        .last ??
                    1.0,
                min: 0,
                value: controller
                        .sortingVariablesSelected[
                            controller.selectedTripListIndex.value]![3]
                        .isNotEmpty
                    ? controller
                        .sortingVariablesSelected[
                            controller.selectedTripListIndex.value]![3]
                        .first
                    : controller
                        .sortingVariables[
                            controller.selectedTripListIndex.value]![3]
                        .last,
                onChanged: (value) {
                  // debouncer.run(() {
                  controller.sortPrice(value);
                  // });
                },
                activeColor: kBluePrimary,
                inactiveColor: kGreyLight),
            kHeight5,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                EventButton(
                    isBorder: true,
                    text: 'Reset',
                    onTap: () {
                      controller.sortPrice(
                          controller
                              .sortingVariables[
                                  controller.selectedTripListIndex.value]![3]
                              .last,
                          true);
                      Navigator.of(context).pop();
                    },
                    color: kWhite,
                    borderColor: kBlack,
                    textColr: kBluePrimary),
                kWidth10,
                EventButton(
                    text: 'Done',
                    onTap: () {
                      Navigator.of(context).pop();
                    })
              ],
            ),
            kHeight20
          ],
        );
      }),
    );
  }
}
