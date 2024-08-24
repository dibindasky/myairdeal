import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/controller/home/home_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
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
    final themeController = Get.find<ThemeController>();
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextIconButtonOutlinedCustom(
              onTap: () {
                controller.changeSelectedAirport(from: true, index: 0);
                Get.find<HomeController>().changeSearch();
              },
              borderColor: controller.airportSelected[0][0].city == null ||
                      (controller.airportSelected[0][0].code ==
                          controller.airportSelected[0][1].code)
                  ? kRed.withOpacity(.6)
                  : kGrey,
              first: Icon(Icons.flight_takeoff_rounded,
                  color: themeController.secondaryColor),
              spacer: kWidth10,
              second: Expanded(
                child: Text(controller.airportSelected[0][0].city ?? 'From',
                    overflow: TextOverflow.ellipsis),
              ),
              texthead: 'From',
            ),
          ),
          kWidth5,
          GestureDetector(
            onTap: () {
              // change from and to
              controller.swapFromAndTo();
            },
            child: Icon(Icons.compare_arrows_outlined,
                color: themeController.secondaryColor),
          ),
          kWidth5,
          Expanded(
            child: TextIconButtonOutlinedCustom(
              borderColor: controller.airportSelected[0][1].city == null ||
                      (controller.airportSelected[0][0].code ==
                          controller.airportSelected[0][1].code)
                  ? kRed.withOpacity(.6)
                  : kGrey,
              onTap: () {
                controller.changeSelectedAirport(from: false, index: 0);
                Get.find<HomeController>().changeSearch();
              },
              first: Icon(
                Icons.flight_land_rounded,
                color: themeController.secondaryColor,
              ),
              spacer: kWidth10,
              second: Expanded(
                child: Text(controller.airportSelected[0][1].city ?? 'To',
                    overflow: TextOverflow.ellipsis),
              ),
              texthead: 'To',
            ),
          ),
        ],
      ),
    );
  }
}

class MultiCitySelection extends StatelessWidget {
  const MultiCitySelection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    final themeController = Get.find<ThemeController>();
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
                    onTap: () {
                      controller.changeSelectedAirport(
                          from: true, index: index);
                      Get.find<HomeController>().changeSearch();
                    },
                    borderColor:
                        controller.airportSelected[index][0].city == null ||
                                (controller.airportSelected[index][0].code ==
                                    controller.airportSelected[index][1].code)
                            ? kRed.withOpacity(.6)
                            : kGrey,
                    mainAxisAlignment: MainAxisAlignment.center,
                    first: kEmpty,
                    topRight: Icon(Icons.arrow_right_alt_rounded,
                        color: themeController.primaryColor),
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
                    onTap: () {
                      controller.changeSelectedAirport(
                          from: false, index: index);
                      Get.find<HomeController>().changeSearch();
                    },
                    mainAxisAlignment: MainAxisAlignment.center,
                    first: kEmpty,
                    spacer: kWidth10,
                    second: Expanded(
                      child: Text(
                          controller.airportSelected[index][1].city ?? 'To',
                          overflow: TextOverflow.ellipsis),
                    ),
                    texthead: 'To',
                    borderColor:
                        controller.airportSelected[index][1].city == null
                            ? kRed.withOpacity(.6)
                            : kGrey,
                  ),
                ),
                kWidth5,
                Expanded(
                  child: TextIconButtonOutlinedCustom(
                    borderColor:
                        controller.multiCityDepartureDate[index] == null ||
                                (controller.airportSelected[index][0].code ==
                                    controller.airportSelected[index][1].code)
                            ? kRed.withOpacity(.6)
                            : kGrey,
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
                        initialDate: index == 0
                            ? DateTime.now()
                            : controller.multiCityDepartureDate[index - 1],
                        focusedDay: index == 0
                            ? DateTime.now()
                            : controller.multiCityDepartureDate[index - 1],
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
                mainAxisAlignment: MainAxisAlignment.center,
              ),
      ]);
    });
  }
}
