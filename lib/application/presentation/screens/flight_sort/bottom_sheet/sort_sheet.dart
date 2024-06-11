import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class SortFlightBottomSheet extends StatelessWidget {
  const SortFlightBottomSheet({
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
            Text('Sort', style: textHeadStyle1),
            kHeight10,
            ...List.generate(
              controller.sortTypes.length,
              (index) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(controller.sortTypes[index], style: textStyle1),
                  Radio<String>(
                      activeColor: kBluePrimary,
                      value: controller.sortTypes[index],
                      groupValue: controller.sortType.value,
                      onChanged: (value) {
                        controller.changeSortTypes(value!);
                      })
                ],
              ),
            ),
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
                  textColr: kBluePrimary,
                ),
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
