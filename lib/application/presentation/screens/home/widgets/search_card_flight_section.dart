import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/bottom_calender_date_picker.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
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
          borderRadius: kRadius15, color: kWhite, boxShadow: boxShadow1),
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
            controller.tripType.value == 2
                ? // multi city
                const MultiCitySelection()
                : // one way and round trip
                const OneWayAndRoundTrip(),
            kHeight10,
            Obx(() {
              return Column(
                children: List.generate(
                  controller.tripType.value != 2
                      ? controller.tripType.value + 1
                      : 0,
                  (index) => TextIconButtonOutlinedCustom(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => DatePickingBottomSheet(
                          onPressed: (value) {
                            controller.changeDepartureDate(value);
                          },
                        ),
                      );
                    },
                    texthead: index == 0 ? 'Departure Date' : 'Return Date',
                    spacer: kWidth10,
                    mainAxisAlignment: MainAxisAlignment.start,
                    first: const Icon(Icons.calendar_month_rounded,
                        color: kBluePrimary),
                    second: Obx(() {
                      return Text(
                          DateFormating.getDate(controller.depatureDate.value));
                    }),
                  ),
                ),
              );
            }),
            kHeight10,
            TextIconButtonOutlinedCustom(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              first: kEmpty,
              second: const Icon(Icons.keyboard_arrow_down_rounded),
              spacer: Text(controller.classType.value),
              onTap: () {},
              texthead: 'Class',
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

class OneWayAndRoundTrip extends StatelessWidget {
  const OneWayAndRoundTrip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Obx(() {
      return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
          child: TextIconButtonOutlinedCustom(
            onTap: () => Get.toNamed(Routes.airportSearch),
            first: const Icon(Icons.flight_takeoff_rounded),
            second: const Text('Bangalore'),
            texthead: 'From',
          ),
        ),
        Icon(
            controller.tripType.value == 1
                ? Icons.compare_arrows_outlined
                : Icons.arrow_right_alt_outlined,
            color: kBluePrimary),
        Expanded(
          child: TextIconButtonOutlinedCustom(
            onTap: () => Get.toNamed(Routes.airportSearch),
            first: const Icon(Icons.flight_land_rounded),
            second: const Text('Hyderabad'),
            texthead: 'To',
          ),
        )
      ]);
    });
  }
}

class MultiCitySelection extends StatelessWidget {
  const MultiCitySelection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Obx(() {
      return Column(
        children: List.generate(
          controller.multiCityDepartureDate.length,
          (index) => Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextIconButtonOutlinedCustom(
                    onTap: () => Get.toNamed(Routes.airportSearch),
                    mainAxisAlignment: MainAxisAlignment.center,
                    first: kEmpty,
                    topRight: const Icon(Icons.arrow_right_alt_rounded,
                        color: kBluePrimary),
                    second: const Text('Bangalore'),
                    texthead: 'From',
                  ),
                ),
                kWidth5,
                Expanded(
                  child: TextIconButtonOutlinedCustom(
                    onTap: () => Get.toNamed(Routes.airportSearch),
                    mainAxisAlignment: MainAxisAlignment.center,
                    first: kEmpty,
                    second: const Text('Hyderabad'),
                    texthead: 'To',
                  ),
                ),
                kWidth5,
                Expanded(
                  child: TextIconButtonOutlinedCustom(
                    topRight: const Icon(Icons.remove_circle_outline),
                    onTap: () => showModalBottomSheet(
                      context: context,
                      builder: (context) => DatePickingBottomSheet(
                        onPressed: (value) {
                          controller.addDateToMultiCityTrip(index, value);
                        },
                      ),
                    ),
                    mainAxisAlignment: MainAxisAlignment.center,
                    first: kEmpty,
                    second: Text(DateFormating.getDate(
                        controller.multiCityDepartureDate[index])),
                    texthead: 'Date',
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
