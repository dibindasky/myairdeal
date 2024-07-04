import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/dotted_line.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class ItineraryTab extends StatelessWidget {
  const ItineraryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        boxShadow: boxShadow2,
        color: kWhite,
        borderRadius: kRadius10,
      ),
      child: Column(
        children: [
          const InnerContents(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                Text(
                  'Fare Summary',
                  style: textStyle1.copyWith(fontWeight: FontWeight.w600),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Passenger(s)',
                          style: textThinStyle1.copyWith(
                              color: kBlack, fontSize: 9.sp),
                        ),
                        Text(
                          'Adult (x1)',
                          style: textThinStyle1.copyWith(
                            color: kBlack,
                            fontSize: 12.sp,
                          ),
                        ),
                        kHeight5,
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Ticket Price',
                          style: textThinStyle1.copyWith(
                              color: kBlack, fontSize: 9.sp),
                        ),
                        Text(
                          '₹ 3500',
                          style: textThinStyle1.copyWith(
                            color: kBlack,
                            fontSize: 12.sp,
                          ),
                        ),
                        kHeight5,
                      ],
                    ),
                  ],
                ),
                const DottedLines(height: 10),
                kHeight15,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: textThinStyle1.copyWith(
                          fontSize: 14.sp, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '₹ 3500',
                      style: textThinStyle1.copyWith(
                          fontSize: 14.sp, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const DottedLines(height: 10),
                kHeight20,
                RichText(
                  text: TextSpan(
                    text: '* Refundable (',
                    style: textStyle1.copyWith(fontSize: 12.sp, color: kBlack),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Penalty rules Applies',
                        style:
                            textStyle1.copyWith(color: kBlue, fontSize: 12.sp),
                      ),
                      TextSpan(
                        text: ').',
                        style:
                            textStyle1.copyWith(color: kBlack, fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
                kHeight20,
                EventButton(
                  text: 'Confirm',
                  onTap: () {
                    Get.toNamed(Routes.reviewFlightDetail);
                  },
                ),
                kHeight10,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InnerContents extends StatelessWidget {
  const InnerContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  flightDetailIcon,
                  height: 20.h,
                ),
                Text('Air India', style: textHeadStyle1),
              ],
            ),
            kHeight10,
            const DottedLines(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bangalore',
                        style: textThinStyle1.copyWith(fontSize: 10.sp),
                      ),
                      Text('TML', style: textHeadStyle1),
                      kHeight5,
                      Text(
                        'Temale',
                        style: textThinStyle1.copyWith(
                            color: kGrey, fontSize: 10.sp),
                      ),
                      kHeight5,
                      Text(
                        'International \nAirport',
                        style: textThinStyle1.copyWith(
                          fontSize: 9.sp,
                          color: kGrey,
                        ),
                      ),
                      kHeight5,
                      Text(
                        'Depart',
                        style: textThinStyle1.copyWith(
                            color: kBlack, fontSize: 9.sp),
                      ),
                      kHeight5,
                      Text(
                        'Tue, May 06',
                        style: textThinStyle1.copyWith(
                          color: kBlack,
                          fontSize: 12.sp,
                        ),
                      ),
                      kHeight5,
                      Text('Class',
                          style: textThinStyle1.copyWith(
                              color: kBlack, fontSize: 9.sp)),
                      kHeight5,
                      Text(
                        'Economy',
                        style: textThinStyle1.copyWith(
                          color: kBlack,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '01h 45m',
                        style: textThinStyle1.copyWith(fontSize: 9.sp),
                      ),
                      kWidth5,
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 3,
                            backgroundColor: kGrey,
                          ),
                          ...List.generate(
                            6,
                            (index) => Text(
                              '-',
                              style: TextStyle(
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w800,
                                  color: kBlack),
                            ),
                          ),
                          RotatedBox(
                            quarterTurns: 1,
                            child: Icon(Icons.flight_rounded,
                                size: 24.w, color: kBlue),
                          ),
                          ...List.generate(
                            6,
                            (index) => Text(
                              '-',
                              style: TextStyle(
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w800,
                                  color: kBlack),
                            ),
                          ),
                          const CircleAvatar(
                            radius: 3,
                            backgroundColor: kGrey,
                          ),
                        ],
                      ),
                      Text(
                        '0 Stop',
                        style: textThinStyle1.copyWith(fontSize: 9.sp),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hyderabad',
                        style: textThinStyle1.copyWith(fontSize: 10.sp),
                      ),
                      Text(
                        'KMS',
                        style: textHeadStyle1,
                      ),
                      kHeight5,
                      Text(
                        'Kumasi',
                        style: textThinStyle1.copyWith(
                          color: kGrey,
                          fontSize: 10.sp,
                        ),
                      ),
                      kHeight5,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'International',
                            style: textThinStyle1.copyWith(
                              fontSize: 9.sp,
                              color: kGrey,
                            ),
                          ),
                          Text(
                            'Airport',
                            style: textThinStyle1.copyWith(
                              fontSize: 9.sp,
                              color: kGrey,
                            ),
                          ),
                        ],
                      ),
                      Text('Time',
                          style: textThinStyle1.copyWith(
                              color: kBlack, fontSize: 9.sp)),
                      kHeight5,
                      Text(
                        '07:00 AM',
                        style: textThinStyle1.copyWith(
                          color: kBlack,
                          fontSize: 12.sp,
                        ),
                      ),
                      kHeight5,
                      Text(
                        'Hand Baggage',
                        style: textThinStyle1.copyWith(
                            color: kBlack, fontSize: 9.sp),
                      ),
                      kHeight5,
                      Text(
                        '23Kg',
                        style: textThinStyle1.copyWith(
                          color: kBlack,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const DottedLines(height: 10),
            kHeight10,
          ],
        ),
        Positioned(
          left: 0,
          bottom: 4,
          child: Container(
            decoration: const BoxDecoration(
              color: kBlue,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(13),
                  bottomRight: Radius.circular(10)),
            ),
            width: 20.w,
            height: 18.h,
          ),
        ),
        Positioned(
          right: 0,
          bottom: 4,
          child: Container(
            decoration: const BoxDecoration(
              color: kBlue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13),
                bottomLeft: Radius.circular(10),
              ),
            ),
            width: 20.w,
            height: 18.h,
          ),
        ),
      ],
    );
  }
}
