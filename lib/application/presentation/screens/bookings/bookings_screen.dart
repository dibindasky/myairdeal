import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/tab.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/header_section.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/shimmer.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/flight_ticket_card.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_booking_request_model/retrieve_single_booking_request_model.dart';

class ScreenBookings extends StatelessWidget {
  const ScreenBookings({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Get.find<BookingController>().getAllCancelBooking();
      Get.find<BookingController>().getAllCombleteBooking();
      Get.find<BookingController>().getAllUpcomingBooking();
    });
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
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: GetBuilder<BookingController>(builder: (controller) {
              if (controller.bookingLoading.value) {
                return const Skeleton(
                  crossAxisCount: 1,
                  itemCount: 1,
                );
              } else {
                if (controller.selectedBookingTab.value == 1) {
                  if (controller.retrieveAllCompletedBooking.isEmpty) {
                    return const Center(child: Text('No data'));
                  }
                  return ListView.separated(
                    padding: EdgeInsets.only(bottom: 23.w),
                    separatorBuilder: (context, index) => kHeight10,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.retrieveAllCompletedBooking.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        controller.getSingleBooking(
                          retrieveSingleBookingRequestModel:
                              RetrieveSingleBookingRequestModel(
                                  bookingId: controller
                                      .retrieveAllCompletedBooking[index]
                                      .bookingId),
                        );
                        Get.toNamed(Routes.invoice);
                      },
                      child: FlightTicketCard(
                        itemInfos: controller.retrieveAllCompletedBooking[index]
                            .retrieveSingleBookingresponceModel?.itemInfos,
                        flightTicketCardEnum: FlightTicketCardEnum.complete,
                        buttonOnTap: () =>
                            Get.toNamed(Routes.flightDetailFillling),
                      ),
                    ),
                  );
                } else if (controller.selectedBookingTab.value == 2) {
                  if (controller.retrieveAllCancelBooking.isEmpty) {
                    return const Center(child: Text('No data'));
                  }
                  return ListView.separated(
                    padding: EdgeInsets.only(bottom: 23.w),
                    separatorBuilder: (context, index) => kHeight10,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.retrieveAllCancelBooking.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        controller.getSingleBooking(
                            retrieveSingleBookingRequestModel:
                                RetrieveSingleBookingRequestModel(
                                    bookingId: controller
                                        .retrieveAllCancelBooking[index]
                                        .bookingId));
                        Get.toNamed(Routes.invoice);
                      },
                      child: FlightTicketCard(
                        itemInfos: controller.retrieveAllCancelBooking[index]
                            .retrieveSingleBookingresponceModel?.itemInfos,
                        flightTicketCardEnum: FlightTicketCardEnum.cancelled,
                        buttonOnTap: () =>
                            Get.toNamed(Routes.flightDetailFillling),
                      ),
                    ),
                  );
                } else if (controller.selectedBookingTab.value == 3) {
                  if (controller.retrieveAllUpcomingBooking.isEmpty) {
                    return const Center(child: Text('No data'));
                  }
                  return ListView.separated(
                    padding: EdgeInsets.only(bottom: 23.w),
                    separatorBuilder: (context, index) => kHeight10,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.retrieveAllUpcomingBooking.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        controller.getSingleBooking(
                            retrieveSingleBookingRequestModel:
                                RetrieveSingleBookingRequestModel(
                                    bookingId: controller
                                        .retrieveAllUpcomingBooking[index]
                                        .bookingId));
                        // controller.getSingleBooking(
                        //     retrieveSingleBookingRequestModel:
                        //         RetrieveSingleBookingRequestModel(
                        //             bookingId: 'TJS107600984342'));
                        Get.toNamed(Routes.invoice);
                      },
                      child: FlightTicketCard(
                        itemInfos: controller.retrieveAllUpcomingBooking[index]
                            .retrieveSingleBookingresponceModel?.itemInfos,
                        flightTicketCardEnum: FlightTicketCardEnum.upcoming,
                        buttonOnTap: () =>
                            Get.toNamed(Routes.flightDetailFillling),
                      ),
                    ),
                  );
                } else {
                  return kEmpty;
                }
              }
            }),
          ),
          // const EmptyBookingScreen()
        ],
      ),
    );
  }
}
