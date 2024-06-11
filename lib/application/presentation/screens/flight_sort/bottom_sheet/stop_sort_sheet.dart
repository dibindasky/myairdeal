import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class StopsSortBottomSheet extends StatelessWidget {
  const StopsSortBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> categ = [
      {"place": "Direct", "cash": "From Rs. 3500"},
      {"place": "Max 1 Stops", "cash": "From Rs. 3500"},
      {"place": "Max 2 Stops", "cash": "From Rs. 4500"},
    ];
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          kHeight40,
          Text('Stops', style: textHeadStyle1),
          kHeight10,
          ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: categ.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(categ[index]['place'] ?? '', style: textStyle1),
                    Text(categ[index]['cash'] ?? '',
                        style: textStyle1.copyWith(
                            fontSize: 12.sp, color: kGreyDark)),
                  ],
                ),
                Obx(
                  () => Checkbox(
                    value: controller.sortStopsSelected
                        .contains(categ[index]['place']),
                    onChanged: (value) {
                      controller.selectStops(categ[index]['place'] ?? '');
                    },
                    activeColor: kBluePrimary,
                  ),
                )
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
      ),
    );
  }
}
