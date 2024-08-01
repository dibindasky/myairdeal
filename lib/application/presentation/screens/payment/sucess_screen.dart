import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/controller/raice_ticket/raice_ticket_controller.dart';
import 'package:myairdeal/application/presentation/utils/animations/splash_animation.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/horizontal_shimmer.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/flight_invoice/widgets/flight_invoice.dart';

class ScreenSuccessPage extends StatelessWidget {
  const ScreenSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BookingController>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 17,
            color: kWhite,
          ),
        ),
        title: Obx(() {
          if (controller.bookingCompleteLoading.value) {
            return Text('Loading...!',
                style: textStyle1.copyWith(
                    color: kWhite,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400));
          }
          return Text(
            'Booking Success',
            style: textStyle1.copyWith(
                color: kWhite, fontSize: 14.sp, fontWeight: FontWeight.w400),
          );
        }),
        backgroundColor: kBlueDark,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 190.h,
                            decoration: const BoxDecoration(
                              color: kBlueDark,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(70),
                                bottomRight: Radius.circular(70),
                              ),
                            ),
                          ),
                          Center(
                            child: Obx(() {
                              if (controller.bookingCompleteLoading.value) {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    kHeight50,
                                    const CircularProgressIndicator(
                                        color: kWhite),
                                  ],
                                );
                              }
                              return Column(
                                children: [
                                  AnimatedGrowShrinkContainer(
                                    begin: 0,
                                    end: 1,
                                    milliseconds: 500,
                                    child: Image.asset(
                                      'asset/icon/success_icon_green.png',
                                      height: 110.h,
                                    ),
                                  ),
                                  Text('Booking done Successfully!',
                                      style: textThinStyle1.copyWith(
                                          color: kWhite))
                                ],
                              );
                            }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Obx(() {
                  if (controller.invoiceLoading.value) {
                    return HorizontalShimmerSkeleton(
                      itemCount: 1,
                      scrollDirection: Axis.vertical,
                      paddingHorizontal: 30.w,
                      height: 300.h,
                    );
                  }
                  return Column(
                    children: [
                      SizedBox(height: 150.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: FlightInvoiceCard(
                          retrieveSingleBookingresponceModel: controller
                              .retrieveSingleBookingresponceModel.value,
                        ),
                      ),
                      kHeight20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          EventButton(
                            style: textStyle1.copyWith(
                                fontSize: 13.sp, color: kWhite),
                            text: 'Back To Home',
                            onTap: () {
                              controller.clearDataAfterBooking();
                              Get.find<TravellerController>()
                                  .clearDataAfterBooking();
                              Get.find<FlightSortController>()
                                  .clearDataAfterBooking();
                              controller.getAllUpcomingBooking(true);
                              Get.back();
                            },
                          ),
                          EventButton(
                            style: textStyle1.copyWith(
                                fontSize: 13.sp, color: kWhite),
                            text: 'Download Ticket',
                            onTap: () {
                              controller.clearDataAfterBooking();
                              Get.find<TravellerController>()
                                  .clearDataAfterBooking();
                              Get.find<FlightSortController>()
                                  .clearDataAfterBooking();
                              controller.getAllUpcomingBooking(true);
                              Get.back();
                              Get.find<RaiceTicketController>().ivoiceDownLoad(
                                  bookingID: controller
                                          .retrieveSingleBookingresponceModel
                                          .value
                                          .retrieveSingleBookingresponceModel
                                          ?.order
                                          ?.bookingId ??
                                      '');
                            },
                          ),
                        ],
                      ),
                      kHeight50,
                    ],
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
