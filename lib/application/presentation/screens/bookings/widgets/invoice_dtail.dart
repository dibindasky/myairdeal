import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

import '../../home/widgets/curent_offers_section.dart';

class InvoiceDetail extends StatelessWidget {
  const InvoiceDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DetailAppBar(id: 2, heading: 'Ticket booking '),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                kHeight10,
                Row(
                  children: [
                    ...List.generate(
                        5,
                        (index) => Row(
                              children: [
                                kWidth10,
                                const Icon(
                                  Icons.star,
                                  color: kGrey,
                                  size: 50,
                                ),
                              ],
                            )),
                  ],
                ),
                kHeight10,
                Text(
                  'Ticket : Confirmed      Completed ',
                  style: textHeadStyle1,
                ),
                kHeight10,
                Image.asset('asset/image/invoice_image.png'),
                const CurrentOffersSection(),
                kHeight15,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
