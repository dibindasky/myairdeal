import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/payment_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/screens/payment/widgets/add_method_card.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/widgets/event_icon_button.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/flight_ticket_card.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';

class ScreenPaymentMethods extends StatelessWidget {
  ScreenPaymentMethods({super.key});

  final paymentController = Get.find<PaymentController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DetailAppBar(heading: 'Payment'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight10,
                FlightTicketCard(
                    buttonOnTap: () {},
                    flightTicketCardEnum: FlightTicketCardEnum.payment),
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
                                onTap: () => paymentController
                                    .changePaymentMethod(index),
                                image: paymentController.itemMap[index]
                                    ['image']!,
                                title: paymentController.itemMap[index]
                                    ['title']!,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Subtotal',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          '₹3500',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    kWidth20,
                    Expanded(
                      child: EventIconButton(
                        suffixIcon: Image.asset(tickIcon, height: 13.h),
                        text: 'Proceed The Payment',
                        onTap: () {
                          Get.toNamed(Routes.paymentSucess);
                        },
                      ),
                    ),
                  ],
                ),
                kHeight20,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
