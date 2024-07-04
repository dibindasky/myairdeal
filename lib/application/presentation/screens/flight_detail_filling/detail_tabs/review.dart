import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/itinerary_tab.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ReveiewTab extends StatelessWidget {
  const ReveiewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(14.w),
          decoration: BoxDecoration(
            boxShadow: boxShadow2,
            color: kWhite,
            borderRadius: kRadius10,
          ),
          child: Column(
            children: [
              const InnerContents(),
              Text('*Cabin : 7Kgs (Adult)',
                  style: textStyle1.copyWith(fontSize: 12.sp)),
              kHeight5,
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
                      style:
                          textStyle1.copyWith(color: kBlack, fontSize: 12.sp),
                    ),
                  ],
                ),
              ),
              kHeight10
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Passenger Details',
                  style: textStyle1.copyWith(fontSize: 16.sp)),
              ...List.generate(
                3,
                (index) => Column(
                  children: [
                    kHeight10,
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.w),
                      decoration: BoxDecoration(
                        border: Border.all(color: kBlue),
                        borderRadius: kRadius10,
                        color: kBlueLightShade,
                      ),
                      width: double.infinity,
                      child: const Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text('Traveler Name'),
                                Text('Mobile number'),
                                Text('Mail ID'),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text(':  '),
                              Text(':  '),
                              Text(':  '),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Traveler Name'),
                                Text('Mobile number'),
                                Text('Mail ID'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        kHeight10,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Seat, Baggage & Meal',
                  style: textStyle1.copyWith(fontSize: 16.sp)),
              ...List.generate(
                3,
                (index) => Column(
                  children: [
                    kHeight10,
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.w),
                      decoration: BoxDecoration(
                        border: Border.all(color: kBlue),
                        borderRadius: kRadius10,
                        color: kBlueLightShade,
                      ),
                      width: double.infinity,
                      child: const Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text('Seat ID'),
                                Text('Baggage'),
                                Text('Meal'),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text(':  '),
                              Text(':  '),
                              Text(':  '),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('BS1232#33'),
                                Text('Yes'),
                                Text('Yes'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        kHeight15
      ],
    );
  }
}
