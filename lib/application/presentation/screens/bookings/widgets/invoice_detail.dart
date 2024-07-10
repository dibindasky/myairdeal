import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/tab/contact_us.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/tab/mail.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/quick_links.container.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/you_could_also.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/horizontal_shimmer.dart';
import 'package:myairdeal/application/presentation/widgets/flight_invoice/flight_invoice.dart';
import '../../home/widgets/curent_offers_section.dart';

class ScreenInvoiceDetail extends StatelessWidget {
  const ScreenInvoiceDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final bookingController = Get.find<BookingController>();
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DetailAppBar(heading: 'Ticket booking '),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight10,
                bookingController.selectedBookingTab.value != 2
                    ? Text('Rate this trip', style: textHeadStyle1)
                    : kEmpty,
                bookingController.selectedBookingTab.value != 2
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ...List.generate(
                            5,
                            (index) => Row(
                              children: [
                                kWidth10,
                                Icon(
                                  Icons.star,
                                  color: kGrey,
                                  size: 30.h,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : kEmpty,
                kHeight10,
                Text(
                  bookingController.selectedBookingTab.value != 2
                      ? 'Ticket : Confirmed      Completed '
                      : 'Ticket : Cancel',
                  style: textHeadStyle1,
                ),
                kHeight10,
                GetBuilder<BookingController>(builder: (controller) {
                  if (controller.invoiceLoading.value) {
                    return HorizontalShimmerSkeleton(
                      scrollDirection: Axis.vertical,
                      itemCount: 1,
                      height: 300.h,
                    );
                  }
                  return FlightInvoiceCard(
                    retrieveSingleBookingresponceModel:
                        controller.retrieveSingleBookingresponceModel.value,
                    flightTicketInvoiceEnum: FlightTicketInvoiceEnum.cancel,
                  );
                }),
                kHeight10,
                bookingController.selectedBookingTab.value == 2
                    ? kEmpty
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Quick links',
                            style: textStyle1.copyWith(
                                fontSize: 16.sp, fontWeight: FontWeight.w600),
                          ),
                          QuickLinksContainer(
                            onTap: () {
                              bookingController
                                  .changeSelectedYouCouldAlsoTab(0);
                            },
                            text: 'Raise Ticket',
                          ),
                          QuickLinksContainer(
                            onTap: () {
                              bookingController
                                  .changeSelectedYouCouldAlsoTab(3);
                            },
                            text: 'Check refunds & Refund status',
                          ),
                          QuickLinksContainer(
                            onTap: () {
                              bookingController
                                  .changeSelectedYouCouldAlsoTab(2);
                            },
                            text: 'Call',
                          ),
                          QuickLinksContainer(
                            onTap: () {
                              Get.find<BookingController>()
                                          .bookingLoading
                                          .value ==
                                      false
                                  ? Get.toNamed(Routes.ticketCancel)
                                  : null;
                            },
                            text: 'Ticket Cancellation',
                          ),
                        ],
                      ),
                kHeight10,
                bookingController.selectedBookingTab.value == 2
                    ? kEmpty
                    : YouCouldAlso(),
                bookingController.selectedBookingTab.value == 2
                    ? kEmpty
                    : GetBuilder<BookingController>(builder: (controller) {
                        if (controller.selectedYouCouldAlsoTab.value == 0) {
                          return ContactUsFrom();
                        } else if (controller.selectedYouCouldAlsoTab.value ==
                            1) {
                          return EmailListScreen();
                        } else {
                          return kEmpty;
                        }
                      }),
                bookingController.selectedBookingTab.value == 2
                    ? kEmpty
                    : const CurrentOffersSection(),
                kHeight15,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
