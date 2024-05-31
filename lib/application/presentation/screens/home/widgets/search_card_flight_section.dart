import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';
import 'package:myairdeal/application/presentation/widgets/text_icon_button_custom.dart';

class FlightSearchCardHome extends StatelessWidget {
  const FlightSearchCardHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      decoration: BoxDecoration(
          borderRadius: kRadius15,
          color: kWhite,
          boxShadow: boxShadow ),
      child: Obx(() {
        final controller = Get.find<FlightSortController>();
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                3,
                (index) => CustomRadioButton(
                  selected: index == controller.tripType.value,
                  onChanged: () {
                    controller.changeTripType(index);
                  },
                  text: controller.tripTypes[index],
                ),
              ),
            ),
            kHeight10,
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                child: TextIconButtonOutlinedCustom(
                  first: Icon(Icons.flight_takeoff_rounded),
                  second: Text('Bangalore'),
                  texthead: 'From',
                ),
              ),
              Icon(Icons.arrow_right_alt_outlined, color: kBluePrimary),
              Expanded(
                child: TextIconButtonOutlinedCustom(
                  first: Icon(Icons.flight_land_rounded),
                  second: Text('Hyderabad'),
                  texthead: 'To',
                ),
              )
            ]),
            kHeight10,
            TextIconButtonOutlinedCustom(
                texthead: 'Departure Date',
                spacer: kWidth10,
                mainAxisAlignment: MainAxisAlignment.start,
                first: const Icon(Icons.calendar_month_rounded,
                    color: kBluePrimary),
                second: const Text('Jun 25,2024')),
            kHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextIconButtonOutlinedCustom(
                    first: Text(controller.traveller.value),
                    second: const Icon(Icons.keyboard_arrow_down_rounded),
                    onTap: () {},
                    texthead: 'Travellers',
                  ),
                ),
                kWidth10,
                Expanded(
                  child: TextIconButtonOutlinedCustom(
                    first: Text(controller.classType.value),
                    second: const Icon(Icons.keyboard_arrow_down_rounded),
                    onTap: () {},
                    texthead: 'Class',
                  ),
                ),
              ],
            ),
            kHeight20,
            EventButton(
                text: 'Search flights', onTap: () {}, width: double.infinity)
          ],
        );
      }),
    );
  }
}
