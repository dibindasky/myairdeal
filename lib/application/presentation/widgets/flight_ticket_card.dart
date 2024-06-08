import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class FlightTicketCard extends StatelessWidget {
  const FlightTicketCard({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: kWhite,
              borderRadius: kRadius15,
              boxShadow: boxShadow3,
              border: Border.all(width: .4)),
          child: Column(
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
                          'TML',
                          style: textHeadStyle1,
                        ),
                        kHeight5,
                        Text(
                          'Temale',
                          style: textThinStyle1.copyWith(
                              color: kGrey, fontSize: 10.sp),
                        ),
                        kHeight15,
                        Text(
                          'Depart',
                          style: textThinStyle1.copyWith(
                              color: kBlack, fontSize: 9.sp),
                        ),
                        kHeight5,
                        Text(
                          '07:00 AM',
                          style: textThinStyle1.copyWith(
                            color: kBlack,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          flightDetailIcon,
                          height: 20.h,
                        ),
                        kHeight10,
                        Text(
                          'Asky Airlines',
                          style: textStyle1.copyWith(fontSize: 12.sp),
                        ),
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
                            // const DottedLineBuilder(),
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
                          'KMS',
                          style: textHeadStyle1,
                        ),
                        kHeight5,
                        Text(
                          'Kumasi',
                          style: textThinStyle1.copyWith(
                              color: kGrey, fontSize: 10.sp),
                        ),
                        kHeight15,
                        Text('Arrival',
                            style: textThinStyle1.copyWith(
                                color: kBlack, fontSize: 9.sp)),
                        kHeight5,
                        Text(
                          '08:45 AM',
                          style: textThinStyle1.copyWith(
                            color: kBlack,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w800,
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
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                child: ColoredBox(
                  color: kBluePrimary,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        kWidth20,
                        const Text(
                          'Ticket Price\nGHS 800',
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 16,
                          ),
                        ),
                        const Spacer(),
                        EventButton(
                          fontSize: 10.sp,
                          width: 80.w,
                          hieght: 25.h,
                          borderRadius: 29,
                          color: kIndigo,
                          text: 'Book Now',
                          onTap: onTap,
                        ),
                        kWidth10
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: .5,
          bottom: 45,
          child: Container(
            decoration: const BoxDecoration(
              color: kGreyLight,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(13),
                  bottomRight: Radius.circular(10)),
            ),
            width: 20.w,
            height: 18.h,
          ),
        ),
        Positioned(
          bottom: 45,
          right: 0.5,
          child: Container(
            decoration: const BoxDecoration(
              color: kGreyLight,
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
