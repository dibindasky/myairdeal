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
    final paymentController = Get.find<PaymentController>();
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
                    : Align(
                        child: EventButton(
                            text: 'Confirm Booking',
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
                                  amount: (bookingController
                                              .reviewedDetail
                                              ?.value
                                              .totalPriceInfo
                                              ?.totalFareDetail
                                              ?.fC
                                              ?.tf ??
                                          1)
                                      .toDouble(),
                                  description: 'payment to MyAirDeal',
                                  email: 'testemail@gmail.com',
                                  phone: '+91 9876543210');
                            },
                            color: kBlueDark));
              }),
              kHeight20,
              Text(
                'Digital payment method(s)',
                style: textHeadStyle1,
              ),
              kHeight10,
              // Text(
              //   'Swipe left to set your default method',
              //   style: textThinStyle1.copyWith(color: kGreyDark),
              // ),
              //kHeight15,
              Obx(
                () => Column(
                  children: [
                    ...List.generate(
                      paymentController.itemMap.length,
                      (index) {
                        return Column(
                          children: [
                            PaymentMethodSelection(
                              onTap: () =>
                                  paymentController.changePaymentMethod(index),
                              image: paymentController.itemMap[index]['image']!,
                              title: paymentController.itemMap[index]['title']!,
                              subtitle: paymentController.itemMap[index]
                                  ['subtitle']!,
                              isSelected: index ==
                                  paymentController
                                      .selectedPayementmethod.value,
                            ),
                            index != paymentController.itemMap.length - 1
                                ? const Divider()
                                : kEmpty
                          ],
                        );
                      },
                    )
                  ],
                ),
              ),
              kHeight10,
              Text('Add methods', style: textHeadStyle1),
              AddMethodCard(
                icon: Icons.credit_card,
                title: 'Credit or debit card',
                subtitle: 'Visa, Mastercard, AMEX and JCB',
              ),
              AddMethodCard(
                icon: Icons.account_balance,
                title: 'Transfer',
                subtitle:
                    'Transferring via ATM, Internet Banking & Mobile Banking',
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     const Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           'Subtotal',
              //           style: TextStyle(fontSize: 16),
              //         ),
              //         Text(
              //           '₹3500',
              //           style: TextStyle(
              //               fontSize: 16, fontWeight: FontWeight.bold),
              //         ),
              //       ],
              //     ),
              //     kWidth20,
              //     Expanded(
              //       child: EventIconButton(
              //         suffixIcon: Image.asset(tickIcon, height: 13.h),
              //         text: 'Proceed The Payment',
              //         onTap: () {
              //           Get.toNamed(Routes.paymentSucess);
              //         },
              //       ),
              //     ),
              //   ],
              // ),
              kHeight20,
            ],
          ),
        ),
      ],
    );
  }
}
