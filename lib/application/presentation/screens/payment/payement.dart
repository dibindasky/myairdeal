import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/payment_controller.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/itenary_tab/fare_summary.dart';
import 'package:myairdeal/application/presentation/screens/payment/widgets/add_method_card.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/shimmer.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';
import 'package:myairdeal/data/features/razorpay.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/book_ticket_model.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/booking.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/delivery_info.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/payment_info.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/traveller_info.dart';

class PaymentTab extends StatelessWidget {
  const PaymentTab({super.key});

  @override
  Widget build(BuildContext context) {
    final bookingController = Get.find<BookingController>();
    return Obx(() {
      if (bookingController.markupLoading.value) {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const Skeleton(
                crossAxisCount: 1,
                itemCount: 1,
                childAspectRatio: 1 / 0.5,
              ),
              kHeight10,
              const Skeleton(
                crossAxisCount: 1,
                itemCount: 3,
                childAspectRatio: 1 / 0.25,
              )
            ],
          ),
        );
      }
      return Column(
        //padding: const EdgeInsets.all(0),
        children: [
          // const DetailAppBar(heading: 'Payment'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight10,
                Container(
                  decoration: BoxDecoration(
                      borderRadius: kRadius15,
                      boxShadow: boxShadow2,
                      color: kWhite),
                  child: Column(
                    children: [kHeight10, const FareSummary(paymentPage: true)],
                  ),
                ),
                kHeight20,
                Obx(() {
                  return Get.find<BookingController>()
                          .bookingCompleteLoading
                          .value
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: kBluePrimary,
                          ),
                        )
                      : Container(
                          decoration: BoxDecoration(
                              boxShadow: boxShadow3,
                              color: kWhite,
                              borderRadius: kRadius15,
                              border: Border.all(color: kGreyDark, width: 0.5)),
                          child: ListTile(
                            trailing: const Icon(Icons.radio_button_checked,
                                color: kBluePrimary),
                            leading: const CircleAvatar(
                              backgroundImage: AssetImage(imageRazorpay),
                            ),
                            title: Text(
                              'Razorpay',
                              style: textStyle1,
                            ),
                            subtitle: Text(
                              'Tap to pay using razorpay',
                              style:
                                  textThinStyle1.copyWith(color: kBluePrimary),
                            ),
                            onTap: () {
                              final bookingController =
                                  Get.find<BookingController>();
                              final travellerController =
                                  Get.find<TravellerController>();
                              List<TravellerInfo> travellerInfos = [];
                              for (int i = 0;
                                  i < travellerController.passengerLength.value;
                                  i++) {
                                travellerInfos.add(
                                    travellerController.passengerDetails[i]!);
                              }
                              // bookingController.completeBooking();
                              final bookTicketModel = BookTicketModel(
                                searchQuery: bookingController
                                    .reviewedDetail?.value.searchQuery,
                                booking: Booking(
                                    bookingId: bookingController
                                        .reviewedDetail?.value.bookingId,
                                    paymentInfos: [
                                      PaymentInfo(
                                          amount: (bookingController
                                                      .reviewedDetail
                                                      ?.value
                                                      .totalPriceInfo
                                                      ?.totalFareDetail
                                                      ?.fC
                                                      ?.tf ??
                                                  0) +
                                              travellerController
                                                  .addOnsprice.value)
                                    ],
                                    gstInfo: travellerController.gstInfo.value
                                        .validateAndCleanDetails(),
                                    travellerInfo: travellerInfos,
                                    deliveryInfo: DeliveryInfo(contacts: [
                                      travellerController.phoneController.text
                                    ], emails: [
                                      travellerController.emailController.text
                                    ])),
                              );

                              final RazorpayGateway razorpayGateway =
                                  RazorpayGateway(context, bookTicketModel);
                              razorpayGateway.makePayment(
                                  amount: ((bookingController
                                                  .reviewedDetail
                                                  ?.value
                                                  .totalPriceInfo
                                                  ?.totalFareDetail
                                                  ?.fC
                                                  ?.tf ??
                                              0) +
                                          travellerController
                                              .addOnsprice.value +
                                          (bookingController.markupPrice.value))
                                      .toDouble(),
                                  description: 'payment to MyAirDeal',
                                  email: 'testemail@gmail.com',
                                  phone: '+91 9876543210');
                            },
                          ),
                        );
                }),
              ],
            ),
          ),
        ],
      );
    });
  }
}
