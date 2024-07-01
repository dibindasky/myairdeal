import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/total_price_list.dart';

class TicketDetailExpansionChild extends StatelessWidget {
  const TicketDetailExpansionChild({super.key, required this.totalPriceList});

  final TotalPriceList totalPriceList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
      margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      width: double.infinity,
      decoration: BoxDecoration(
          color: kWhite, borderRadius: kRadius15, boxShadow: boxShadow2),
      child: Column(children: [
        kHeight10,
        Row(
          children: [
            Text(
              totalPriceList.fareIdentifier ?? '',
              style: textStyle1.copyWith(fontWeight: FontWeight.w900),
            ),
            const Spacer(),
            Text(
              '₹ ${totalPriceList.fd!.adult!.fC!.tf}',
              style: textThinStyle1.copyWith(fontWeight: FontWeight.w900),
            ),
            kWidth10,
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.flightDetailFillling);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                decoration:
                    BoxDecoration(borderRadius: kRadius50, color: kBlueDark),
                child: Text(
                  'Book Now',
                  style: textThinStyle1.copyWith(
                      fontWeight: FontWeight.w900, color: kWhite),
                ),
              ),
            )
          ],
        ),
        const Divider(color: kBluePrimary),
        TicketDetailTile(
            first: 'Seat Remaining',
            second: '${totalPriceList.fd!.adult!.sR ?? 0} Seats Remaining'),
        TicketDetailTile(
            first: 'Checked bag',
            second: totalPriceList.fd!.adult!.bI!.iB ?? ''),
        TicketDetailTile(
            first: 'Hand Bag', second: totalPriceList.fd!.adult!.bI!.cB ?? ''),
        TicketDetailTile(
            first: 'Meal',
            second: totalPriceList.fd!.adult!.mI! ? 'Free' : 'Chargable'),
        // TicketDetailTile(
        //     first: 'Cancelation', second: 'INR 3250 with in 72 hours'),
        // TicketDetailTile(
        //     first: 'Date change', second: 'INR 3250 with in 72 hours'),
      ]),
    );
  }
}

class TicketDetailTile extends StatelessWidget {
  const TicketDetailTile({
    super.key,
    required this.first,
    required this.second,
  });

  final String first;
  final String second;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Text(first, style: textThinStyle1)),
        Expanded(
          flex: 2,
          child: Text(second,
              style: textThinStyle1.copyWith(fontSize: 9.sp, color: kGreyDark)),
        ),
      ],
    );
  }
}
