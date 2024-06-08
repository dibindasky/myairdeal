import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card.dart';

class ScreenPaymentMethods extends StatelessWidget {
  const ScreenPaymentMethods({super.key});

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
                FlightTicketCard(onTap: () {}),
                kHeight20,
                const Text(
                  'Digital payment method(s)',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                kHeight10,
                const Text('Swipe left to set your default method'),
                kHeight15,
                Obx(
                  () => Column(
                    children: [
                      ...List.generate(
                        2,
                        (index) => const PaymentMethodCard(
                          icon: Icons.credit_card,
                          title: '***8976',
                          subtitle: 'Get 10\$ Discount',
                          isSelected: true,
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(thickness: 1, height: 32),
                const Text(
                  'Add methods',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const AddMethodCard(
                  icon: Icons.credit_card,
                  title: 'Credit or debit card',
                  subtitle: 'Visa, Mastercard, AMEX and JCB',
                ),
                const AddMethodCard(
                  icon: Icons.account_balance,
                  title: 'Transfer',
                  subtitle:
                      'Transferring via ATM, Internet Banking & Mobile Banking',
                ),
                //  const Spacer(),
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
                      child: EventButton(
                        text: 'Proceed The Payment',
                        onTap: () {},
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

class PaymentMethodCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final bool isSelected;

  const PaymentMethodCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 40),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: isSelected
          ? const Icon(Icons.radio_button_checked, color: kBlue)
          : const Icon(Icons.radio_button_unchecked),
      contentPadding: const EdgeInsets.symmetric(vertical: 8),
    );
  }
}

class AddMethodCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const AddMethodCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 40),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: TextButton(
        onPressed: () {},
        child: const Text('Add'),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 8),
    );
  }
}
