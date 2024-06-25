import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/bottom_calender_date_picker.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/widgets/text_icon_button_custom.dart';

class OneWayAndRoundTrip extends StatelessWidget {
  const OneWayAndRoundTrip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Obx(
      () => Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
          child: TextIconButtonOutlinedCustom(
            onTap: () => controller.changeSelectedAirport(from: true, index: 0),
            first: const Icon(
              Icons.flight_takeoff_rounded,
              color: kBluePrimary,
            ),
            spacer: kWidth10,
            second: Expanded(
              child: Text(controller.airportSelected[0][0].city ?? 'From',
                  overflow: TextOverflow.ellipsis),
            ),
            texthead: 'From',
          ),
        ),
        GestureDetector(
            onTap: () {
              // change from and to
              controller.swapFromAndTow();
            },
            child:
                const Icon(Icons.compare_arrows_outlined, color: kBluePrimary)),
        Expanded(
          child: TextIconButtonOutlinedCustom(
            onTap: () =>
                controller.changeSelectedAirport(from: false, index: 0),
            first: const Icon(
              Icons.flight_land_rounded,
              color: kBluePrimary,
            ),
            spacer: kWidth10,
            second: Expanded(
              child: Text(controller.airportSelected[0][1].city ?? 'To',
                  overflow: TextOverflow.ellipsis),
            ),
            texthead: 'To',
          ),
        ),
      ]),
    );
  }
}

class MultiCitySelection extends StatelessWidget {
  const MultiCitySelection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Obx(() {
      return Column(children: [
        ...List.generate(
          controller.multiCityCount.value,
          (index) => Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextIconButtonOutlinedCustom(
                    onTap: () => controller.changeSelectedAirport(
                        from: true, index: index),
                    mainAxisAlignment: MainAxisAlignment.center,
                    first: kEmpty,
                    topRight: const Icon(Icons.arrow_right_alt_rounded,
                        color: kBluePrimary),
                    second: Expanded(
                      child: Text(
                          controller.airportSelected[index][0].city ?? 'From',
                          overflow: TextOverflow.ellipsis),
                    ),
                    texthead: 'From',
                  ),
                ),
                kWidth5,
                Expanded(
                  child: TextIconButtonOutlinedCustom(
                    onTap: () => controller.changeSelectedAirport(
                        from: false, index: index),
                    mainAxisAlignment: MainAxisAlignment.center,
                    first: kEmpty,
                    spacer: kWidth10,
                    second: Expanded(
                      child: Text(
                          controller.airportSelected[index][1].city ?? 'To',
                          overflow: TextOverflow.ellipsis),
                    ),
                    texthead: 'To',
                  ),
                ),
                kWidth5,
                Expanded(
                  child: TextIconButtonOutlinedCustom(
                    topRight: index == 0 || index == 1
                        ? kEmpty
                        : GestureDetector(
                            onTap: () {
                              controller.removeFromMultiCityTrip(index);
                            },
                            child: ClipRRect(
                              borderRadius: kRadius50,
                              child: ColoredBox(
                                color: kGrey,
                                child: Icon(Icons.close,
                                    size: 15.sp, color: kWhite),
                              ),
                            ),
                          ),
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
                    spacer: kWidth10,
                    second: Expanded(
                      child: Text(
                          DateFormating.getDate(
                              controller.multiCityDepartureDate[index]),
                          overflow: TextOverflow.ellipsis),
                    ),
                    texthead: 'Date',
                  ),
                )
              ],
            ),
          ),
        ),
        kHeight5,
        controller.multiCityCount.value >= 6
            ? kEmpty
            : TextIconButtonOutlinedCustom(
                onTap: () {
                  controller.increaseMulticityField();
                },
                first: const Text('Add City'),
                second: kEmpty,
                mainAxisAlignment: MainAxisAlignment.center)
      ]);
    });
  }
}
