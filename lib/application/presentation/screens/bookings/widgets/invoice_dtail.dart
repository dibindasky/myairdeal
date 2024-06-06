import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

import '../../home/widgets/curent_offers_section.dart';

class ScreenInvoiceDetail extends StatelessWidget {
  const ScreenInvoiceDetail({super.key});

  @override
  Widget build(BuildContext context) {
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
                Text(
                  'Rate this trip',
                  style: textHeadStyle1,
                ),
                Row(
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
