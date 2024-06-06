import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/flight_ticket_expansion_card.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/header_section_sort_screen.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/sorting_section.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card.dart';

class ScreenFlightTicketSort extends StatelessWidget {
  const ScreenFlightTicketSort({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SortScreenHeaderSection(),
            const SortingChipsSection(),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              itemCount: 10,
              separatorBuilder: (context, index) => kHeight5,
              itemBuilder: (context, index) => CustomExpansionTile(
                child: const FlightTicketCard(),
                children: [
                  const TicketDetailExpansionChild(),
                  kHeight5,
                  const TicketDetailExpansionChild()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
