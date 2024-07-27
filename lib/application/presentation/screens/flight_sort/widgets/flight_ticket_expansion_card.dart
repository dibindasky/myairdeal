import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/total_price_list.dart';

class TicketDetailExpansionChild extends StatelessWidget {
  const TicketDetailExpansionChild(
      {super.key,
      required this.totalPriceList,
      this.isSelected = false,
      this.onTap,
      this.onTapBookNow});

  final TotalPriceList totalPriceList;
  final bool isSelected;
  final VoidCallback? onTap;
  final VoidCallback? onTapBookNow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
        margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
        width: double.infinity,
        decoration: BoxDecoration(
            color: isSelected ? kBlueLightShade : kWhite,
            borderRadius: kRadius15,
            border: isSelected ? Border.all(color: kBlueDark) : null,
            boxShadow: boxShadow2),
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
              onTap != null
                  ? CustomRadioButton(
                      color: kBlueDark,
                      selected: isSelected,
                      onChanged: () {
                        onTap!();
                      })
                  : GestureDetector(
                      onTap: onTapBookNow,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 5.h),
                        decoration: BoxDecoration(
                            borderRadius: kRadius50, color: kBlueDark),
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
              first: 'Checked Bag',
              second: totalPriceList.fd!.adult!.bI!.iB ?? ''),
          TicketDetailTile(
              first: 'Hand Bag',
              second: totalPriceList.fd!.adult!.bI!.cB ?? ''),
          TicketDetailTile(
              first: 'Meal',
              second:
                  totalPriceList.fd?.adult?.mI ?? false ? 'Free' : 'Chargable'),
          TicketDetailTile(
              first: 'Cancelation',
              second: totalPriceList.fd?.adult?.rT == null
                  ? 'NA'
                  : totalPriceList.fd?.adult?.rT == 0
                      ? 'Non Refundable'
                      : totalPriceList.fd?.adult?.rT == 1
                          ? 'Refundable'
                          : 'Partialy Refundable'),
          TicketDetailTile(
              first: 'Cabin Class',
              second: totalPriceList.fd?.adult?.cc ?? 'NA'),
          TicketDetailTile(
              first: 'Seat Remaining',
              second: '${totalPriceList.fd!.adult!.sR ?? 0} Seats Remaining'),
        ]),
      ),
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
        Expanded(flex: 2, child: Text(first, style: textThinStyle1)),
        Expanded(
          flex: 3,
          child: Text(second,
              style: textThinStyle1.copyWith(fontSize: 9.sp, color: kGreyDark)),
        ),
      ],
    );
  }
}
