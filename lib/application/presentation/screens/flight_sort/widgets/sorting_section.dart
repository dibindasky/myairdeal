import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/bottom_sheet/airlines_sheet.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/bottom_sheet/duration_sheet.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/bottom_sheet/flight_times_sheet.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/bottom_sheet/sort_sheet.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/bottom_sheet/stop_sort_sheet.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class SortingChipsSection extends StatelessWidget {
  const SortingChipsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Obx(() => controller.searchListLoading.value
        ? kEmpty
        : Column(
            children: [
              FittedBox(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SortingChipSortPage(
                          text: 'Flight: BNG TO HYD',
                          selected: true,
                          onTap: () {}),
                      SortingChipSortPage(
                          text: 'Departure: May 06, 2024',
                          selected: true,
                          onTap: () {}),
                      SortingChipSortPage(
                          text: 'Class: Premium Economy',
                          selected: true,
                          onTap: () {}),
                    ]),
              ),
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SortingChipSortPage(
                        text: 'Sort By: Best',
                        selected: false,
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: knill,
                            context: context,
                            builder: (context) => const SortFlightBottomSheet(),
                          );
                        }),
                    SortingChipSortPage(
                        text: 'Stops',
                        selected: false,
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: knill,
                            context: context,
                            builder: (context) => const StopsSortBottomSheet(),
                          );
                        }),
                    SortingChipSortPage(
                        text: 'Duration',
                        selected: false,
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: knill,
                            context: context,
                            builder: (context) => const DurationBottomSheet(),
                          );
                        }),
                    SortingChipSortPage(
                        text: 'Airlines',
                        selected: false,
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: knill,
                            context: context,
                            builder: (context) => const AirlinesBottomSheet(),
                          );
                        }),
                    SortingChipSortPage(
                        text: 'Flight times',
                        selected: false,
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: knill,
                            context: context,
                            builder: (context) =>
                                const FlightTimesBottomSheet(),
                          );
                        }),
                  ],
                ),
              ),
            ],
          ));
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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
        decoration: BoxDecoration(
            boxShadow: boxShadow3,
            border: Border.all(color: kBluePrimary),
            borderRadius: kRadius50,
            color: selected ? kBluePrimary : kWhite),
        child: Text(
          text,
          style: textThinStyle1.copyWith(
              color: selected ? kWhite : kBluePrimary, fontSize: 10.sp),
        ),
      ),
    );
  }
}
