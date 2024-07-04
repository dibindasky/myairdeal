import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
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
        controller.arrivesTimesSelected == controller.departureTimesSelected;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            kHeight40,
            Text('Flight Times', style: textHeadStyle1),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    kHeight10,
                    Text('Departs From Blr',
                        style: textStyle1.copyWith(color: kBluePrimary)),
                    kHeight5,
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: controller.departureTimes.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(controller.departureTimes[index],
                              style: textThinStyle1),
                          Checkbox(
                            value: controller.departureTimesSelected
                                .contains(controller.departureTimes[index]),
                            onChanged: (value) {
                              controller.selectDepartureTime(
                                  controller.departureTimes[index]);
                            },
                            activeColor: kBluePrimary,
                          )
                        ],
                      ),
                    ),
                    kHeight5,
                    Text('Arrives to Hyd',
                        style: textStyle1.copyWith(color: kBluePrimary)),
                    kHeight5,
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: controller.arrivesTimes.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(controller.arrivesTimes[index],
                              style: textThinStyle1),
                          Checkbox(
                            value: controller.arrivesTimesSelected
                                .contains(controller.arrivesTimes[index]),
                            onChanged: (value) {
                              controller.selectArrivalTime(
                                  controller.arrivesTimes[index]);
                            },
                            activeColor: kBluePrimary,
                          )
                        ],
                      ),
                    ),
                    kHeight5,
                    EventButton(
                        text: 'Search flights',
                        onTap: () {},
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
