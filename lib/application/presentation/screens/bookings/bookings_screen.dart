import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/tab.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/header_section.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/flight_ticket_card.dart';

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
          kHeight15,
          const BookingsTab(),
          kHeight15,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.w),
            child: GetBuilder<BookingController>(builder: (controller) {
              if (controller.selectedBookingTab.value == 1) {
                return ListView.separated(
                  padding: const EdgeInsets.only(bottom: 25),
                  separatorBuilder: (context, index) => kHeight10,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => Get.toNamed(Routes.invoice),
                    child: FlightTicketCard(
                      flightTicketCardEnum: FlightTicketCardEnum.comblete,
                      buttonOnTap: () =>
                          Get.toNamed(Routes.flightDetailFillling),
                    ),
                  ),
                );
              } else if (controller.selectedBookingTab.value == 2) {
                return ListView.separated(
                  padding: const EdgeInsets.only(bottom: 25),
                  separatorBuilder: (context, index) => kHeight10,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => Get.toNamed(Routes.invoice),
                    child: FlightTicketCard(
                      flightTicketCardEnum: FlightTicketCardEnum.cancelled,
                      buttonOnTap: () =>
                          Get.toNamed(Routes.flightDetailFillling),
                    ),
                  ),
                );
              } else if (controller.selectedBookingTab.value == 3) {
                return ListView.separated(
                  padding: const EdgeInsets.only(bottom: 25),
                  separatorBuilder: (context, index) => kHeight10,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => Get.toNamed(Routes.invoice),
                    child: FlightTicketCard(
                      flightTicketCardEnum: FlightTicketCardEnum.upcoming,
                      buttonOnTap: () =>
                          Get.toNamed(Routes.flightDetailFillling),
                    ),
                  ),
                );
              } else {
                return kEmpty;
              }
            }),
          ),
          // const EmptyBookingScreen()
        ],
      ),
    );
  }
}
