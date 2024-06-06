import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/sorting/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class StopsSortBottomSheet extends StatelessWidget {
  const StopsSortBottomSheet({
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
            Text('Airlines', style: textHeadStyle1),
            kHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Select All', style: textStyle1),
                Checkbox(
                  value: controller.sortAirlines.length ==
                      controller.sortAirlinesSelected.length,
                  onChanged: (value) {
                    controller.selectAllAirline(value ?? false);
                  },
                  activeColor: kBluePrimary,
                )
              ],
            ),
            const Divider(color: kGrey),
            ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: controller.sortAirlines.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(controller.sortAirlines[index], style: textStyle1),
                  Checkbox(
                    value: controller.sortAirlinesSelected
                        .contains(controller.sortAirlines[index]),
                    onChanged: (value) {
                      controller.selectAirline(controller.sortAirlines[index]);
                    },
                    activeColor: kBluePrimary,
                  )
                ],
              ),
            ),
            kHeight5,
            EventButton(
                text: 'Search flights', onTap: () {}, width: double.infinity),
            kHeight20
          ],
        );
      }),
    );
  }
}
