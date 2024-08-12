import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/raice_ticket/raice_ticket_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/widgets/empty_booking.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/widgets/tab.dart';
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
    Get.find<BookingController>().getAllCancelBooking();
    await Future.delayed(const Duration(milliseconds: 1000));
  }

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    final controller = Get.find<BookingController>();
    final raiceController = Get.find<RaiceTicketController>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.getAllCombleteBooking(false);
      controller.getAllUpcomingBooking(false);
      controller.getAllCancelBooking();
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
                        Get.toNamed(Routes.signUpSignIn);
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
                    ),
                  ],
                )
              : controller.bookingLoading.value
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.h),
                      child: const HorizontalShimmerSkeleton(
                        scrollDirection: Axis.vertical,
                        itemCount: 4,
                      ),
                    )
                  : controller.retrieveAllCompletedBooking.isEmpty &&
                          controller.retrieveAllUpcomingBooking.isEmpty &&
                          controller.retrieveAllCancelBooking.isEmpty
                      ? const EmptyBookingScreen()
                      : ListView(
                          padding: const EdgeInsets.all(0),
                          children: [
                            DetailAppBar(
                                heading: 'Booking',
                                backButton: false,
                                topGap: kHeight10),
                            kHeight15,
                            const BookingsTab(),
                            kHeight15,
                            GestureDetector(
                              onHorizontalDragEnd: (DragEndDetails details) {
                                if (details.primaryVelocity! > 0) {
                                  // Swiped right
                                  if (controller.selectedBookingTab.value ==
                                      2) {
                                    controller.changeTab(1);
                                  } else if (controller
                                          .selectedBookingTab.value ==
                                      1) {
                                    controller.changeTab(0);
                                  }
                                } else if (details.primaryVelocity! < 0) {
                                  // Swiped left
                                  if (controller.selectedBookingTab.value ==
                                      0) {
                                    controller.changeTab(1);
                                  } else if (controller
                                          .selectedBookingTab.value ==
                                      1) {
                                    controller.changeTab(2);
                                  }
                                }
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.h),
                                child: GetBuilder<BookingController>(
                                  builder: (controller) {
                                    if (controller.bookingLoading.value) {
                                      return const HorizontalShimmerSkeleton(
                                          scrollDirection: Axis.vertical,
                                          itemCount: 4);
                                    } else {
                                      // for upcoming booking
                                      if (controller.selectedBookingTab.value ==
                                          0) {
                                        if (controller
                                            .retrieveAllUpcomingBooking
                                            .isEmpty) {
                                          return SizedBox(
                                            height: 250.h,
                                            child: const Center(
                                              child:
                                                  Text('No Upcoming Tickets'),
                                            ),
                                          );
                                        }
                                        return ListView.separated(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          padding:
                                              EdgeInsets.only(bottom: 23.w),
                                          separatorBuilder: (context, index) =>
                                              kHeight10,
                                          itemCount: controller
                                              .retrieveAllUpcomingBooking
                                              .length,
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
                                                            .bookingId),
                                              );
                                              Get.toNamed(Routes.invoice);
                                            },
                                            child: FlightTicketCard(
                                              share: () =>
                                                  raiceController.shareTicket(
                                                      bookingID: controller
                                                              .retrieveAllUpcomingBooking[
                                                                  index]
                                                              .bookingId ??
                                                          ''),
                                              airlineCode: controller
                                                      .retrieveAllUpcomingBooking[
                                                          index]
                                                      .retrieveSingleBookingresponceModel
                                                      ?.itemInfos
                                                      ?.air
                                                      ?.tripInfos?[0]
                                                      .sI?[0]
                                                      .fD
                                                      ?.aI
                                                      ?.code ??
                                                  '',
                                              allBookingResponce: controller
                                                      .retrieveAllUpcomingBooking[
                                                  index],
                                              bookingId: controller
                                                  .retrieveAllUpcomingBooking[
                                                      index]
                                                  .bookingId,
                                              itemInfos: controller
                                                  .retrieveAllUpcomingBooking[
                                                      index]
                                                  .retrieveSingleBookingresponceModel
                                                  ?.itemInfos,
                                              flightTicketCardEnum:
                                                  FlightTicketCardEnum.upcoming,
                                              buttonOnTap: () => Get.toNamed(
                                                  Routes.flightDetailFillling),
                                            ),
                                          ),
                                        );
                                      } // canceled bookings
                                      else if (controller
                                              .selectedBookingTab.value ==
                                          1) {
                                        if (controller
                                            .retrieveAllCancelBooking.isEmpty) {
                                          return SizedBox(
                                              height: 250.h,
                                              child: const Center(
                                                  child: Text(
                                                      'No Cancelled Tickets')));
                                        }
                                        return ListView.separated(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          padding:
                                              EdgeInsets.only(bottom: 23.w),
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
                                              airlineCode: controller
                                                      .retrieveAllCancelBooking[
                                                          index]
                                                      .retrieveSingleBookingresponceModel
                                                      ?.itemInfos
                                                      ?.air
                                                      ?.tripInfos?[0]
                                                      .sI?[0]
                                                      .fD
                                                      ?.aI
                                                      ?.code ??
                                                  '',
                                              itemInfos: controller
                                                  .retrieveAllCancelBooking[
                                                      index]
                                                  .retrieveSingleBookingresponceModel
                                                  ?.itemInfos,
                                              flightTicketCardEnum:
                                                  FlightTicketCardEnum
                                                      .cancelled,
                                              buttonOnTap: () => Get.toNamed(
                                                  Routes.flightDetailFillling),
                                            ),
                                          ),
                                        );
                                      } // for completed bookings
                                      else if (controller
                                              .selectedBookingTab.value ==
                                          2) {
                                        if (controller
                                            .retrieveAllCompletedBooking
                                            .isEmpty) {
                                          return SizedBox(
                                              height: 250.h,
                                              child: const Center(
                                                  child: Text(
                                                      'No Completed Booking')));
                                        }
                                        return ListView.separated(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          padding:
                                              EdgeInsets.only(bottom: 23.w),
                                          separatorBuilder: (context, index) =>
                                              kHeight10,
                                          itemCount: controller
                                              .retrieveAllCompletedBooking
                                              .length,
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
                                              airlineCode: controller
                                                      .retrieveAllCompletedBooking[
                                                          index]
                                                      .retrieveSingleBookingresponceModel
                                                      ?.itemInfos
                                                      ?.air
                                                      ?.tripInfos?[0]
                                                      .sI?[0]
                                                      .fD
                                                      ?.aI
                                                      ?.code ??
                                                  '',
                                              allBookingResponce: controller
                                                      .retrieveAllCompletedBooking[
                                                  index],
                                              itemInfos: controller
                                                  .retrieveAllCompletedBooking[
                                                      index]
                                                  .retrieveSingleBookingresponceModel
                                                  ?.itemInfos,
                                              flightTicketCardEnum:
                                                  FlightTicketCardEnum.complete,
                                              buttonOnTap: () => Get.toNamed(
                                                  Routes.flightDetailFillling),
                                            ),
                                          ),
                                        );
                                      } else {
                                        return kEmpty;
                                      }
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
        ),
      ),
    );
  }
}
