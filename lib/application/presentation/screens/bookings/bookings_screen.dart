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

  Future<void> onRefresh() async {
    Get.find<BookingController>().getAllCombleteBooking(true);
    Get.find<BookingController>().getAllUpcomingBooking(true);
    await Future.delayed(const Duration(milliseconds: 1000));
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Get.find<BookingController>().getAllCombleteBooking(false);
      Get.find<BookingController>().getAllUpcomingBooking(false);
    });
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: ListView(
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
                  return const Skeleton(crossAxisCount: 1, itemCount: 1);
                } else {
                  if (controller.selectedBookingTab.value == 1) {
                    if (controller.retrieveAllCompletedBooking.isEmpty) {
                      return SizedBox(
                          height: 250.h,
                          child: const Center(
                              child: Text('No Combleted Booking')));
                    }
                    return ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.only(bottom: 23.w),
                      separatorBuilder: (context, index) => kHeight10,
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
                          itemInfos: controller
                              .retrieveAllCompletedBooking[index]
                              .retrieveSingleBookingresponceModel
                              ?.itemInfos,
                          flightTicketCardEnum: FlightTicketCardEnum.complete,
                          buttonOnTap: () =>
                              Get.toNamed(Routes.flightDetailFillling),
                        ),
                      ),
                    );
                  } else if (controller.selectedBookingTab.value == 2) {
                    if (controller.retrieveAllCancelBooking.isEmpty) {
                      return SizedBox(
                          height: 250.h,
                          child: const Center(
                              child: Text('No Cancelled Tickets')));
                    }
                    return ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.only(bottom: 23.w),
                      separatorBuilder: (context, index) => kHeight10,
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
                      return SizedBox(
                        height: 250.h,
                        child: const Center(child: Text('No Upcoming Tickets')),
                      );
                    }
                    return ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.only(bottom: 23.w),
                      separatorBuilder: (context, index) => kHeight10,
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
                          Get.toNamed(Routes.invoice);
                        },
                        child: FlightTicketCard(
                          itemInfos: controller
                              .retrieveAllUpcomingBooking[index]
                              .retrieveSingleBookingresponceModel
                              ?.itemInfos,
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
      ),
    );
  }
}
