import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/raice_ticket/raice_ticket_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/tab/contact_us.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/tab/mail.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/quick_links.container.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/you_could_also.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/horizontal_shimmer.dart';
import 'package:myairdeal/application/presentation/screens/bookings/flight_invoice/widgets/flight_invoice.dart';

class ScreenInvoiceDetail extends StatelessWidget {
  const ScreenInvoiceDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final bookingController = Get.find<BookingController>();
    final raiceController = Get.find<RaiceTicketController>();
    return Scaffold(
      body: Obx(
        () => ListView(
          controller: bookingController.scrollController,
          padding: const EdgeInsets.all(0),
          children: [
            const DetailAppBar(heading: 'Ticket Booking'),
            (raiceController.invoiceDownLoadLoading.value)
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 200.h),
                      const AlertDialog(
                          content: Center(
                        child: CircularProgressIndicator(
                          color: kBluePrimary,
                        ),
                      ))
                    ],
                  )
                : Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kHeight10,
                        Text(
                          bookingController.selectedBookingTab.value == 1
                              ? 'Upcoming Ticket'
                              : bookingController.selectedBookingTab.value == 2
                                  ? 'Cancel Ticket'
                                  : 'Campleted Ticket',
                          style: textHeadStyle1,
                        ),
                        kHeight10,
                        GetBuilder<BookingController>(builder: (controller) {
                          if (controller.invoiceLoading.value) {
                            return HorizontalShimmerSkeleton(
                                scrollDirection: Axis.vertical,
                                itemCount: 1,
                                height: 300.h);
                          }
                          return FlightInvoiceCard(
                            retrieveSingleBookingresponceModel: controller
                                .retrieveSingleBookingresponceModel.value,
                          );
                        }),
                        kHeight10,
                        bookingController.selectedBookingTab.value == 2
                            ? kEmpty
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Quick Links',
                                    style: textStyle1.copyWith(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  QuickLinksContainer(
                                    onTap: () {
                                      raiceController
                                          .changeSelectedYouCouldAlsoTab(0);
                                      Timer(
                                        const Duration(milliseconds: 300),
                                        () => bookingController.scrollController
                                            .animateTo(
                                                bookingController
                                                    .scrollController
                                                    .position
                                                    .maxScrollExtent,
                                                duration: const Duration(
                                                    milliseconds: 300),
                                                curve: Curves.bounceIn),
                                      );
                                    },
                                    text: 'Raise Ticket',
                                  ),
                                  QuickLinksContainer(
                                    onTap: () {
                                      raiceController
                                          .changeSelectedYouCouldAlsoTab(3);
                                    },
                                    text: 'Check refunds & Refund status',
                                  ),
                                  QuickLinksContainer(
                                    onTap: () {
                                      raiceController
                                          .changeSelectedYouCouldAlsoTab(2);
                                    },
                                    text: 'Call',
                                  ),
                                  QuickLinksContainer(
                                    onTap: () {
                                      bookingController.bookingLoading.value ==
                                              false
                                          ? Get.toNamed(Routes.ticketCancel)
                                          : null;
                                    },
                                    text: 'Ticket Cancellation',
                                  ),
                                  bookingController.selectedBookingTab.value !=
                                          2
                                      ? QuickLinksContainer(
                                          onTap: () {
                                            raiceController.invoiceDOwnload(
                                                bookingID: bookingController
                                                        .retrieveSingleBookingresponceModel
                                                        .value
                                                        .order
                                                        ?.bookingId ??
                                                    '');
                                          },
                                          text: 'Invoice Download',
                                        )
                                      : kEmpty,
                                ],
                              ),
                        kHeight10,
                        bookingController.selectedBookingTab.value == 2
                            ? kEmpty
                            : YouCouldAlso(),
                        bookingController.selectedBookingTab.value == 2
                            ? kEmpty
                            : GetBuilder<RaiceTicketController>(
                                builder: (controller) {
                                if (raiceController
                                        .selectedYouCouldAlsoTab.value ==
                                    0) {
                                  return ContactUsFrom(
                                    bookingId: bookingController
                                            .retrieveSingleBookingresponceModel
                                            .value
                                            .order
                                            ?.bookingId ??
                                        '',
                                  );
                                } else if (raiceController
                                        .selectedYouCouldAlsoTab.value ==
                                    1) {
                                  return const EmailListScreen();
                                } else {
                                  return kEmpty;
                                }
                              }),
                        kHeight15,
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
