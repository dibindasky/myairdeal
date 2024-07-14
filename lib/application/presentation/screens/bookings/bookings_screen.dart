import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/empty_booking.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/tab.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/horizontal_shimmer.dart';
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
    final authController = Get.find<AuthController>();
    final controller = Get.find<BookingController>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.getAllCombleteBooking(false);
      controller.getAllUpcomingBooking(false);
    });
    return Scaffold(
      body: Obx(
        () => RefreshIndicator(
          onRefresh: onRefresh,
          child: authController.loginOrNot.value == false
              ? AlertDialog(
                  content:
                      const Text('You can\'t see your status without Login'),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.signUp);
                      },
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(color: kBlue),
                          backgroundColor: kBlueThinLIght,
                          foregroundColor: kWhite),
                      child: Text(
                        'Login',
                        style:
                            textStyle1.copyWith(color: kBlue, fontSize: 12.sp),
                      ),
                    )
                  ],
                )
              : controller.retrieveAllCompletedBooking.isEmpty ||
                      controller.retrieveAllUpcomingBooking.isEmpty
                  ? const EmptyBookingScreen()
                  : ListView(
                      padding: const EdgeInsets.all(0),
                      children: [
                        DetailAppBar(
                          heading: 'Booking',
                          backButton: false,
                          topGap: kHeight10,
                        ),
                        kHeight15,
                        const BookingsTab(),
                        kHeight15,
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.h),
                          child: GetBuilder<BookingController>(
                              builder: (controller) {
                            if (controller.bookingLoading.value) {
                              return const HorizontalShimmerSkeleton(
                                scrollDirection: Axis.vertical,
                                itemCount: 4,
                              );
                            } else {
                              if (controller.selectedBookingTab.value == 1) {
                                if (controller
                                    .retrieveAllCompletedBooking.isEmpty) {
                                  return SizedBox(
                                      height: 250.h,
                                      child: const Center(
                                          child: Text('No Combleted Booking')));
                                }
                                return ListView.separated(
                                  physics: const BouncingScrollPhysics(),
                                  padding: EdgeInsets.only(bottom: 23.w),
                                  separatorBuilder: (context, index) =>
                                      kHeight10,
                                  itemCount: controller
                                      .retrieveAllCompletedBooking.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) =>
                                      GestureDetector(
                                    onTap: () {
                                      controller.getSingleBooking(
                                        retrieveSingleBookingRequestModel:
                                            RetrieveSingleBookingRequestModel(
                                                bookingId: controller
                                                    .retrieveAllCompletedBooking[
                                                        index]
                                                    .bookingId),
                                      );
                                      Get.toNamed(Routes.invoice);
                                    },
                                    child: FlightTicketCard(
                                      allBookingResponce: controller
                                          .retrieveAllCompletedBooking[index],
                                      itemInfos: controller
                                          .retrieveAllCompletedBooking[index]
                                          .retrieveSingleBookingresponceModel
                                          ?.itemInfos,
                                      flightTicketCardEnum:
                                          FlightTicketCardEnum.complete,
                                      buttonOnTap: () => Get.toNamed(
                                          Routes.flightDetailFillling),
                                    ),
                                  ),
                                );
                              } else if (controller.selectedBookingTab.value ==
                                  2) {
                                if (controller
                                    .retrieveAllCancelBooking.isEmpty) {
                                  return SizedBox(
                                      height: 250.h,
                                      child: const Center(
                                          child: Text('No Cancelled Tickets')));
                                }
                                return ListView.separated(
                                  physics: const BouncingScrollPhysics(),
                                  padding: EdgeInsets.only(bottom: 23.w),
                                  separatorBuilder: (context, index) =>
                                      kHeight10,
                                  itemCount: controller
                                      .retrieveAllCancelBooking.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) =>
                                      GestureDetector(
                                    onTap: () {
                                      controller.getSingleBooking(
                                          retrieveSingleBookingRequestModel:
                                              RetrieveSingleBookingRequestModel(
                                                  bookingId: controller
                                                      .retrieveAllCancelBooking[
                                                          index]
                                                      .bookingId));
                                      Get.toNamed(Routes.invoice);
                                    },
                                    child: FlightTicketCard(
                                      itemInfos: controller
                                          .retrieveAllCancelBooking[index]
                                          .retrieveSingleBookingresponceModel
                                          ?.itemInfos,
                                      flightTicketCardEnum:
                                          FlightTicketCardEnum.cancelled,
                                      buttonOnTap: () => Get.toNamed(
                                          Routes.flightDetailFillling),
                                    ),
                                  ),
                                );
                              } else if (controller.selectedBookingTab.value ==
                                  3) {
                                if (controller
                                    .retrieveAllUpcomingBooking.isEmpty) {
                                  return SizedBox(
                                    height: 250.h,
                                    child: const Center(
                                      child: Text('No Upcoming Tickets'),
                                    ),
                                  );
                                }
                                return ListView.separated(
                                  physics: const BouncingScrollPhysics(),
                                  padding: EdgeInsets.only(bottom: 23.w),
                                  separatorBuilder: (context, index) =>
                                      kHeight10,
                                  itemCount: controller
                                      .retrieveAllUpcomingBooking.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) =>
                                      GestureDetector(
                                    onTap: () {
                                      controller.getSingleBooking(
                                          retrieveSingleBookingRequestModel:
                                              RetrieveSingleBookingRequestModel(
                                                  bookingId: controller
                                                      .retrieveAllUpcomingBooking[
                                                          index]
                                                      .bookingId));
                                      Get.toNamed(Routes.invoice);
                                    },
                                    child: FlightTicketCard(
                                      allBookingResponce: controller
                                          .retrieveAllCompletedBooking[index],
                                      bookingId: controller
                                          .retrieveAllUpcomingBooking[index]
                                          .bookingId,
                                      itemInfos: controller
                                          .retrieveAllUpcomingBooking[index]
                                          .retrieveSingleBookingresponceModel
                                          ?.itemInfos,
                                      flightTicketCardEnum:
                                          FlightTicketCardEnum.upcoming,
                                      buttonOnTap: () => Get.toNamed(
                                          Routes.flightDetailFillling),
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
      ),
    );
  }

  void showCancelDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Unable to raise amendment. Please try again after sometime',
            style: textStyle1.copyWith(fontSize: 16.sp),
          ),
          content: const Text(
              'Amendment unable to be raised due to AutoCancellation is not enabled for supplier  , Please contact support team'),
          actions: [
            kHeight10,
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: kBlue),
                  backgroundColor: kBlueThinLIght,
                  foregroundColor: kWhite),
              child: Text(
                'OK',
                style: textStyle1.copyWith(color: kBlue, fontSize: 12.sp),
              ),
            )
          ],
        );
      },
    );
  }
}
