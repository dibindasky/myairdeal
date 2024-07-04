import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class FlightCard extends StatelessWidget {
  const FlightCard({
    super.key,
    required this.image,
    required this.place,
  });

  final String image;
  final String place;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight20,
        ClipRRect(
          borderRadius: kRadius15,
          child: Stack(
            children: [
              ColorFiltered(
                colorFilter: ColorFilter.mode(
                  kBlack.withOpacity(0.3),
                  BlendMode.srcATop,
                ),
                child: Image.asset(
                  image,
                  height: 270.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 0,
                right: 0.h,
                bottom: 10.h,
                child: Column(
                  children: [
                    Text(
                      '$place TO Banglure',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          color: kWhite),
                    ),
                    kHeight10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '18 Apr - 25 Apr',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp,
                              color: kWhite),
                        ),
                        kWidth10,
                        Text(
                          '+',
                          style: textThinStyle1.copyWith(
                              color: kWhite, fontSize: 20.sp),
                        ),
                        kWidth10,
                        Text(
                          'Round Trip',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp,
                              color: kWhite),
                        ),
                      ],
                    ),
                    kHeight15,
                    Center(
                      child: Container(
                        width: 100.w,
                        height: 30.h,
                        decoration:
                            BoxDecoration(border: Border.all(color: kWhite)),
                        child: Center(
                            child: Text(
                          'Book Now',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp,
                              color: kWhite),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
