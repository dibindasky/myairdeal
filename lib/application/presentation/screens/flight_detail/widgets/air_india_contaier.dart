import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class AirIndiaDetailCard extends StatelessWidget {
  const AirIndiaDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 3,
      shadowColor: kBluePrimary,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  flightDetailIcon,
                  height: 30,
                ),
                kWidth20,
                Text(
                  'Air India',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            kHeight10,
            SizedBox(
              height: 8.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(0),
                itemCount: 500,
                shrinkWrap: true,
                itemBuilder: (context, index) => Text(
                  '_',
                  style: textThinStyle1.copyWith(fontSize: 7.sp),
                ),
              ),
            ),
            kHeight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bangalore',
                      style: textThinStyle1,
                    ),
                    Text(
                      'BNG',
                      style: textStyle1.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'International \nAirport',
                      style: textThinStyle1.copyWith(fontSize: 10.sp),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '01h 45m',
                      style: textThinStyle1.copyWith(fontSize: 9.sp),
                    ),
                    const Icon(Icons.flight_takeoff),
                    Text('0 Stop',
                        style: textThinStyle1.copyWith(fontSize: 9.sp)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Hyderabad',
                      style: textThinStyle1,
                    ),
                    Text(
                      'HYD',
                      style: textStyle1.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'International \nAirport',
                      style: textThinStyle1.copyWith(
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            kHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Date',
                      style: textThinStyle1.copyWith(
                          fontSize: 10.sp, color: kGreyDark),
                    ),
                    Text('Tue, May 06',
                        style: textThinStyle1.copyWith(
                            color: kBlack, fontSize: 10.sp)),
                    Text('Class',
                        style: textThinStyle1.copyWith(
                            fontSize: 10.sp, color: kGreyDark)),
                    Text(
                      'Economy',
                      style: textThinStyle1.copyWith(
                          color: kBlack, fontSize: 10.sp),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Time',
                      style: textThinStyle1.copyWith(
                          fontSize: 10.sp, color: kGreyDark),
                    ),
                    Text(
                      '07:00 AM',
                      style: textThinStyle1.copyWith(
                          color: kBlack, fontSize: 10.sp),
                    ),
                    Text('Hand Baggage',
                        style: textThinStyle1.copyWith(
                            fontSize: 10.sp, color: kGreyDark)),
                    Text(
                      '23Kg',
                      style: textThinStyle1.copyWith(
                          color: kBlack, fontSize: 10.sp),
                    ),
                  ],
                ),
              ],
            ),
            kHeight20,
            SizedBox(
              height: 8.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(0),
                itemCount: 500,
                shrinkWrap: true,
                itemBuilder: (context, index) => Text(
                  '_',
                  style: textThinStyle1.copyWith(fontSize: 7.sp),
                ),
              ),
            ),
            kHeight10,
            RichText(
              text: TextSpan(
                text: '* Refundable (',
                style: textStyle1.copyWith(fontSize: 12.sp, color: kBlack),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Penalty rules Applies',
                    style: textStyle1.copyWith(color: kBlue, fontSize: 12.sp),
                  ),
                  TextSpan(
                    text: ').',
                    style: textStyle1.copyWith(color: kBlack, fontSize: 12.sp),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
