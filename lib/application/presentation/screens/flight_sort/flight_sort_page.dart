import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/calender_sort_section.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/header_section_sort_screen.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/sorting_section.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/tickets_list_sorted.dart';

class ScreenFlightTicketSort extends StatelessWidget {
  const ScreenFlightTicketSort({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
          ],
        ),
      ),
    );
  }
}
