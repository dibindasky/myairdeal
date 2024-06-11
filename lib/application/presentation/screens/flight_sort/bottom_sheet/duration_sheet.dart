import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class DurationBottomSheet extends StatelessWidget {
  const DurationBottomSheet({
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
                    Text('27 hours',
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
                value: controller.durationSlider.value,
                onChanged: (value) {
                  controller.changeDurationSlider(value);
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
                    onTap: () {},
                    color: kWhite,
                    borderColor: kBlack,
                    textColr: kBluePrimary),
                kWidth10,
                EventButton(text: 'Done', onTap: () {})
              ],
            ),
            kHeight20
          ],
        );
      }),
    );
  }
}
