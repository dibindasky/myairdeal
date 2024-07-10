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
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/trip_choosing_containers.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ScreenFlightTicketSort extends StatelessWidget {
  const ScreenFlightTicketSort({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Scaffold(
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
                      ? const CircularProgressIndicator(color: kBluePrimary)
                      : const Text('No Flights Available'),
                ),
              ),
            ],
          );
        }
        return SingleChildScrollView(
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
              const SortingChipsSection(),
              // const TripChoosingContainers(),
              const TicketsListSorted(),
              kHeight20
            ],
          ),
        );
      }),
      floatingActionButton: const FloatingButtonSection(),
    );
  }
}
