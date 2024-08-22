import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/bottom_sheet/airlines_sheet.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/bottom_sheet/duration_sheet.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/bottom_sheet/flight_times_sheet.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/bottom_sheet/price_sheet.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/bottom_sheet/special_return_sheet.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/bottom_sheet/stop_sort_sheet.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';

class SortingChipsSection extends StatelessWidget {
  const SortingChipsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Row(
      children: [
        Expanded(
          child: Obx(
            () => controller.searchListLoading.value ||
                    controller
                        .searchListMain[controller.selectedTripListIndex.value]
                        .isEmpty
                ? kEmpty
                : Column(
                    children: [
                      FittedBox(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SortingChipSortPage(
                                  text:
                                      'Flight: ${controller.airportSelected[controller.selectedTripListIndex.value][0].code ?? ''} - ${controller.airportSelected[controller.selectedTripListIndex.value][1].code ?? ''}',
                                  selected: true,
                                  onTap: () {}),
                              SortingChipSortPage(
                                  text:
                                      'Departure: ${DateFormating.getDate(controller.multiCityDepartureDate[controller.selectedTripListIndex.value])}',
                                  selected: true,
                                  onTap: () {}),
                              SortingChipSortPage(
                                  text:
                                      'Class: ${Get.find<FlightSortController>().classType.value}',
                                  selected: true,
                                  onTap: () {}),
                            ]),
                      ),
                      controller.comboTrip.value
                          ? kEmpty
                          : FittedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  // SortingChipSortPage(
                                  //     text: 'Sort By: Best',
                                  //     selected: false,
                                  //     onTap: () {
                                  //       showModalBottomSheet(
                                  //         backgroundColor: knill,
                                  //         context: context,
                                  //         builder: (context) => const SortFlightBottomSheet(),
                                  //       );
                                  //     }),
                                  controller.selectedSpecialReturnAirline
                                              .value ==
                                          ''
                                      ? SortingChipSortPage(
                                          text: 'Airlines',
                                          selected: (controller
                                                          .sortingVariablesSelected[
                                                      controller
                                                          .selectedTripListIndex
                                                          .value]?[0] ??
                                                  [])
                                              .isNotEmpty,
                                          onTap: () {
                                            showModalBottomSheet(
                                              backgroundColor: knill,
                                              context: context,
                                              builder: (context) =>
                                                  const AirlinesBottomSheet(),
                                            );
                                          })
                                      : kEmpty,
                                  SortingChipSortPage(
                                      text: 'Stops',
                                      selected:
                                          (controller.sortingVariablesSelected[
                                                      controller
                                                          .selectedTripListIndex
                                                          .value]?[1] ??
                                                  [])
                                              .isNotEmpty,
                                      onTap: () {
                                        showModalBottomSheet(
                                          backgroundColor: knill,
                                          context: context,
                                          builder: (context) =>
                                              const StopsSortBottomSheet(),
                                        );
                                      }),
                                  SortingChipSortPage(
                                      text: 'Price',
                                      selected: controller
                                              .sortingVariablesSelected[
                                                  controller
                                                      .selectedTripListIndex
                                                      .value]?[3]
                                              .isNotEmpty ??
                                          false,
                                      onTap: () {
                                        showModalBottomSheet(
                                          backgroundColor: knill,
                                          context: context,
                                          builder: (context) =>
                                              const PriceSortBottomSheet(),
                                        );
                                      }),
                                  SortingChipSortPage(
                                      text: 'Duration',
                                      selected: controller
                                              .durationSlider.value !=
                                          (controller
                                                  .sortingVariables[controller
                                                      .selectedTripListIndex
                                                      .value]?[2]
                                                  .last ??
                                              1.0),
                                      onTap: () {
                                        showModalBottomSheet(
                                          backgroundColor: knill,
                                          context: context,
                                          builder: (context) =>
                                              const DurationBottomSheet(),
                                        );
                                      }),
                                  SortingChipSortPage(
                                      text: 'Flight Timing',
                                      selected: ((controller
                                                          .sortingVariablesSelected[
                                                      controller
                                                          .selectedTripListIndex
                                                          .value]?[4] ??
                                                  [])
                                              .isNotEmpty ||
                                          (controller.sortingVariablesSelected[
                                                      controller
                                                          .selectedTripListIndex
                                                          .value]?[5] ??
                                                  [])
                                              .isNotEmpty),
                                      onTap: () {
                                        showModalBottomSheet(
                                          backgroundColor: knill,
                                          context: context,
                                          builder: (context) =>
                                              const FlightTimesBottomSheet(),
                                        );
                                      }),
                                  // SortingChipSortPage(
                                  //     text: 'Clear Filter',
                                  //     selected: false,
                                  //     onTap: () {
                                  //       controller.clearFilters();
                                  //     }),
                                  // SortingChipSortPage(
                                  //     text: 'Flight times',
                                  //     selected: false,
                                  //     onTap: () {
                                  //       showBottomSheet(
                                  //         backgroundColor: knill,
                                  //         context: context,
                                  //         builder: (context) =>
                                  //             const FlightTimesBottomSheet(),
                                  //       );
                                  //     }),
                                  controller.roundTrip.value
                                      ? SortingChipSortPage(
                                          text: 'Special Return',
                                          selected: controller
                                                  .selectedSpecialReturnAirline
                                                  .value !=
                                              '',
                                          onTap: () {
                                            // special return bottom bar
                                            showModalBottomSheet(
                                              backgroundColor: knill,
                                              context: context,
                                              builder: (context) =>
                                                  const SpecialReturnBottomSheet(),
                                            );
                                          })
                                      : kEmpty,
                                ],
                              ),
                            ),
                    ],
                  ),
          ),
        ),
      ],
    );
  }
}

class SortingChipSortPage extends StatelessWidget {
  const SortingChipSortPage({
    super.key,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  final String text;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 4.w),
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 4.w),
        decoration: BoxDecoration(
            boxShadow: boxShadow3,
            border: Border.all(color: themeController.primaryColor),
            borderRadius: kRadius50,
            color: selected ? themeController.primaryColor : kWhite),
        child: Text(
          text,
          style: textThinStyle1.copyWith(
              color: selected ? kWhite : themeController.primaryColor,
              fontSize: 10.sp),
        ),
      ),
    );
  }
}
