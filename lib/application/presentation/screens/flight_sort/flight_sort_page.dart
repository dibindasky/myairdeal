import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/calender_sort_section.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/header_section_sort_screen.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/sorting_section.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/tickets_list_sorted.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ScreenFlightTicketSort extends StatelessWidget {
  const ScreenFlightTicketSort({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Scaffold(
      body: Obx(() {
        if (controller.searchList.isEmpty ||
            controller.searchListLoading.value) {
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
            children: [
              SizedBox(
                height: 220.h,
                child: const Stack(
                  children: [
                    SortScreenHeaderSection(),
                    CalenderSectionSortHeader()
                  ],
                ),
              ),
              const SortingChipsSection(),
              const TicketsListSorted(),
              kHeight20
            ],
          ),
        );
      }),
    );
  }
}
