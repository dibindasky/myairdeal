import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/tab.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/header_section.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card.dart';

class ScreenBookings extends StatelessWidget {
  const ScreenBookings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          HomeHeaderSection(
            heading: 'Booking',
            icon: false,
            onTap: () {},
          ),
          kHeight20,
          const BookingsTab(),
          kHeight5,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: ListView.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) => kHeight10,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => Get.toNamed(Routes.invoice, id: 2),
                child: FlightTicketCard(
                  onTap: () => Get.toNamed(Routes.flightDetail),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
