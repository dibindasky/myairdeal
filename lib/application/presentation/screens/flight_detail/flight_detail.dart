import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class ScreenFlightDetail extends StatelessWidget {
  const ScreenFlightDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const DetailAppBar(heading: 'Flight Details'),
          kHeight15,
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              boxShadow: boxShadow2,
              color: kWhite,
              borderRadius: kRadius10,
            ),
            child: Column(
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
                      style: textThinStyle1.copyWith(
                        fontSize: 7.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
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
                                    10,
                                    (index) => Text(
                                      '-',
                                      style: TextStyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w800,
                                          color: kBlack),
                                    ),
                                  ),
                                  const Icon(Icons.flight_rounded,
                                      size: 16, color: kBlue),
                                  ...List.generate(
                                    10,
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
                    RichText(
                      text: TextSpan(
                        text: '* Refundable (',
                        style:
                            textStyle1.copyWith(fontSize: 12.sp, color: kBlack),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Penalty rules Applies',
                            style: textStyle1.copyWith(
                                color: kBlue, fontSize: 12.sp),
                          ),
                          TextSpan(
                            text: ').',
                            style: textStyle1.copyWith(
                                color: kBlack, fontSize: 12.sp),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}

