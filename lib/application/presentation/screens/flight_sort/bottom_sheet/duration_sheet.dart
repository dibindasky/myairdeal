import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/debouncer/debouncer.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class DurationBottomSheet extends StatefulWidget {
  const DurationBottomSheet({
    super.key,
  });

  @override
  State<DurationBottomSheet> createState() => _DurationBottomSheetState();
}

class _DurationBottomSheetState extends State<DurationBottomSheet> {
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
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            kHeight40,
            Text('Duration', style: textHeadStyle1),
            kHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Maximum Travel Time', style: textStyle1),
                    Text(
                        DateFormating.convertMinutesToHoursMinutes(
                            (controller.durationSlider.value).round()),
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
                            controller.selectedTripListIndex.value]![2]
                        .last ??
                    1.0,
                min: 0,
                // min: double.parse((controller
                //             .sortingVariables[
                //                 controller.selectedTripListIndex.value]![2]
                //             .first ??
                //         0.1)
                //     .toString()),
                value: controller.durationSlider.value,
                // value: double.parse((controller
                //             .sortingVariablesSelected[
                //                 controller.selectedTripListIndex.value]![2]
                //             .first ??
                //         0.1)
                //     .toString()),
                onChanged: (value) {
                  // debouncer.run(() {
                  controller.changeDurationSlider(value);
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
                      print((controller
                                  .sortingVariables[controller
                                      .selectedTripListIndex.value]![2]
                                  .last ??
                              1)
                          .runtimeType);
                      controller.changeDurationSlider(1.0, true);
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
