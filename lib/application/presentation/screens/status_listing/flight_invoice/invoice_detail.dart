import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/ticket_cancel_controller.dart';
import 'package:myairdeal/application/controller/home/home_controller.dart';
import 'package:myairdeal/application/controller/raice_ticket/raice_ticket_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/flight_invoice/widgets/flight_invoice.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/widgets/quick_links.container.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/widgets/tab/contact_us.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/widgets/tab/mail.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/widgets/you_could_also.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/horizontal_shimmer.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/amendment_details_request_model/amendment_details_request_model.dart';

class ScreenInvoiceDetail extends StatefulWidget {
  const ScreenInvoiceDetail({super.key});

  @override
  State<ScreenInvoiceDetail> createState() => _ScreenInvoiceDetailState();
}

class _ScreenInvoiceDetailState extends State<ScreenInvoiceDetail> {
  @override
  void initState() {
    Get.find<HomeController>()
        .changeNavigationChecker(NavigationChecker.ticket);
    super.initState();
  }

  @override
  void dispose() {
    Get.find<HomeController>().changeNavigationChecker(NavigationChecker.home);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bookingController = Get.find<BookingController>();
    final raiceController = Get.find<RaiceTicketController>();
    final cancellationController = Get.find<TicketCancellationController>();
    final themeController = Get.find<ThemeController>();
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
                      AlertDialog(
                          content: Center(
                        child: CircularProgressIndicator(
                          color: themeController.primaryColor,
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
                          bookingController.selectedBookingTab.value == 0
                              ? 'Upcoming Ticket'
                              : bookingController.selectedBookingTab.value == 1
                                  ? 'Cancelled Ticket'
                                  : 'Campleted Ticket',
                          style: textStyle1,
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
                                  bookingController
                                                  .retrieveSingleBookingresponceModel
                                                  .value
                                                  .amendment !=
                                              null &&
                                          bookingController
                                              .retrieveSingleBookingresponceModel
                                              .value
                                              .amendment!
                                              .isNotEmpty
                                      ? QuickLinksContainer(
                                          onTap: () {
                                            cancellationController
                                                .viewAmendmentDetail(
                                                    amendmentDetailRequestModel:
                                                        List.generate(
                                              bookingController
                                                      .retrieveSingleBookingresponceModel
                                                      .value
                                                      .amendment
                                                      ?.length ??
                                                  0,
                                              (index) =>
                                                  AmendmentDetailsRequestModel(
                                                amendmentId: bookingController
                                                    .retrieveSingleBookingresponceModel
                                                    .value
                                                    .amendment?[index]
                                                    .id,
                                              ),
                                            ));
                                          },
                                          text: 'Check Amendment Details',
                                        )
                                      : kEmpty,
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
                                    text: 'Raise a Ticket',
                                  ),
                                  bookingController.invoiceLoading.value
                                      ? kEmpty
                                      : QuickLinksContainer(
                                          onTap: () {
                                            Get.find<TicketCancellationController>().resetCancelVariables(
                                                bookingId: bookingController
                                                    .retrieveSingleBookingresponceModel
                                                    .value
                                                    .retrieveSingleBookingresponceModel
                                                    ?.order
                                                    ?.bookingId,
                                                tripLength: bookingController
                                                        .retrieveSingleBookingresponceModel
                                                        .value
                                                        .retrieveSingleBookingresponceModel
                                                        ?.itemInfos
                                                        ?.air
                                                        ?.tripInfos
                                                        ?.length ??
                                                    1,
                                                travellerLength: bookingController
                                                        .retrieveSingleBookingresponceModel
                                                        .value
                                                        .retrieveSingleBookingresponceModel
                                                        ?.itemInfos
                                                        ?.air
                                                        ?.travellerInfos
                                                        ?.length ??
                                                    1);
                                            Get.toNamed(Routes.ticketCancel);
                                          },
                                          text: 'Ticket Cancellation',
                                        ),
                                  bookingController.selectedBookingTab.value !=
                                              2 &&
                                          bookingController.invoiceLoading.value
                                      ? kEmpty
                                      : QuickLinksContainer(
                                          onTap: () {
                                            raiceController.ivoiceDownLoad(
                                                bookingID: bookingController
                                                        .retrieveSingleBookingresponceModel
                                                        .value
                                                        .retrieveSingleBookingresponceModel
                                                        ?.order
                                                        ?.bookingId ??
                                                    '');
                                          },
                                          text: 'Ticket Download',
                                        ),
                                  bookingController.selectedBookingTab.value !=
                                              2 &&
                                          bookingController.invoiceLoading.value
                                      ? kEmpty
                                      : QuickLinksContainer(
                                          onTap: () {
                                            raiceController.shareTicket(
                                                bookingID: bookingController
                                                        .retrieveSingleBookingresponceModel
                                                        .value
                                                        .retrieveSingleBookingresponceModel
                                                        ?.order
                                                        ?.bookingId ??
                                                    '');
                                          },
                                          text: 'Ticket Sharing',
                                        ),
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
                                  return RaiceTickets(
                                    bookingId: bookingController
                                            .retrieveSingleBookingresponceModel
                                            .value
                                            .retrieveSingleBookingresponceModel
                                            ?.order
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
