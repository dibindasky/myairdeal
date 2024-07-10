import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/dotted_line.dart';

class TravelersInfo extends StatelessWidget {
  const TravelersInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BookingController>();
    final travelersData = controller.retrieveSingleBookingresponceModel.value
        .itemInfos?.air?.travellerInfos;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        border: Border.all(color: kBlue),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Travelers info',
              style: textStyle1.copyWith(fontWeight: FontWeight.w700)),
          kHeight10,
          ...List.generate(
            (travelersData?.length ?? 0),
            (index) => Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${travelersData?[index].ti}  ${travelersData?[index].fN} ${travelersData?[index].lN}  (${travelersData?[index].pt})',
                        style: textThinStyle1.copyWith(
                            fontWeight: FontWeight.w600),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: kBlueLight,
                          radius: 10.w,
                          child: Icon(
                            Icons.check,
                            size: 16.w,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Total Fare'),
                            Text('Amendment Charges'),
                            Text('Refund Amount'),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text('='),
                          Text('='),
                          Text('='),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('534'),
                            Text('6475'),
                            Text('767'),
                          ],
                        ),
                      )
                    ],
                  ),
                  DottedLines(height: 10.h)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
