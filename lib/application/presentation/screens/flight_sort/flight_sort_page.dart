import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/calender_sort_section.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/floating_button_section.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/header_section_sort_screen.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/selected_airlines_section.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/sorting_section.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/tickets_list_sorted.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/shimmer.dart';

class ScreenFlightTicketSort extends StatelessWidget {
  const ScreenFlightTicketSort({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return WillPopScope(
      onWillPop: () async {
        print('back for search 1');
        Get.back(id: 1);
        print('back for search 2');
        return true;
      },
      child: Scaffold(
        backgroundColor: kWhite,
        body: Obx(() {
          if (controller.searchListLoading.value ||
              (!controller.comboTrip.value && controller.searchList.isEmpty) ||
              (controller.comboTrip.value && controller.comboList.isEmpty)) {
            return Column(
              children: [
                const DetailAppBar(heading: 'Search', id: 1),
                Expanded(
                  child: Center(
                    child: controller.searchListLoading.value
                        ?
                        // Lottie.asset('asset/lottie/plane.json')̦̦
                        Skeleton(
                            padding: 10.w,
                            crossAxisCount: 1,
                            itemCount: 10,
                            height: 150.h,
                            childAspectRatio: 1 / 0.45,
                          )
                        // const ComplexLoader()
                        : const Text('No Flights Available'),
                  ),
                ),
              ],
            );
          }
          return SingleChildScrollView(
            controller: controller.flightSortScreenController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: controller.comboTrip.value ? null : 220.h,
                  child: Stack(
                    children: [
                      const SortScreenHeaderSection(),
                      controller.comboTrip.value
                          ? kEmpty
                          : controller.tripType.value == 0
                              ? const CalenderSectionSortHeader()
                              : const SelectedAirlinesSections(),
                    ],
                  ),
                ),
                (controller.sortingRebuild.value &&
                        controller.sortingLoadingIndex.value ==
                            controller.selectedTripListIndex.value)
                    ? kHeight10
                    : kEmpty,
                (controller.sortingRebuild.value &&
                        controller.sortingLoadingIndex.value ==
                            controller.selectedTripListIndex.value)
                    ? Skeleton(
                        padding: 10.w,
                        crossAxisCount: 4,
                        itemCount: 4,
                        height: 10.h,
                        childAspectRatio: 1 / 0.45)
                    : const SortingChipsSection(),
                controller.sortingRebuild.value ? kHeight10 : kEmpty,
                controller.sortingRebuild.value
                    ? Skeleton(
                        padding: 10.w,
                        crossAxisCount: 1,
                        itemCount: 10,
                        height: 150.h,
                        childAspectRatio: 1 / 0.45)
                    : const TicketsListSorted(),
                kHeight20
              ],
            ),
          );
        }),
        floatingActionButton: const FloatingButtonSection(),
      ),
    );
  }
}
