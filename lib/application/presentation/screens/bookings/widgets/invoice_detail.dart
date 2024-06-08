import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/contact_us.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/mail.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/quick_links.container.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/you_could_also.dart';
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
                      ),
                    ),
                  ],
                ),
                kHeight10,
                Text(
                  'Ticket : Confirmed      Completed ',
                  style: textHeadStyle1,
                ),
                kHeight10,
                Image.asset('asset/image/invoice_image.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quick links',
                      style: textStyle1.copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w600),
                    ),
                    QuickLinksContainer(
                      onTap: () {},
                      text: 'Flight cancellation',
                    ),
                    QuickLinksContainer(
                      onTap: () {},
                      text: 'Check refunds & Refund status',
                    ),
                    QuickLinksContainer(
                      onTap: () {},
                      text: 'CFlight cancellation',
                    ),
                  ],
                ),
                kHeight10,
                YouCouldAlso(),
                GetBuilder<BookingController>(builder: (controller) {
                  if (controller.selectedYouCouldAlsoTab.value == 0) {
                    return const ComplaintForm();
                  }
                  if (controller.selectedYouCouldAlsoTab.value == 1) {
                    return EmailListScreen();
                  } else {
                    return Container();
                  }
                }),
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
