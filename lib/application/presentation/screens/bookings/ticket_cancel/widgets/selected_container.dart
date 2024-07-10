import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class SelectedContainers extends StatelessWidget {
  const SelectedContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 0,
      right: 120,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            10,
            (index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              decoration: BoxDecoration(
                color: kGreyLightBackground,
                border: Border.all(color: kBlack),
                borderRadius: kRadius10,
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 4.w),
                    child: Image.asset(
                      flightDetailIcon,
                      height: 13.h,
                    ),
                  ),
                  kWidth5,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('From - To',
                          style:
                              textStyle1.copyWith(fontWeight: FontWeight.bold)),
                      Text('Passengers count',
                          style: textThinStyle1.copyWith(fontSize: 10.sp)),
                      Text(('Amount'),
                          style: textThinStyle1.copyWith(fontSize: 10.sp))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
