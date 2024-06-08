import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class CurrentOffersSection extends StatelessWidget {
  const CurrentOffersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Current offer', style: textHeadStyle1),
        SizedBox(
          height: 108.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => kWidth10,
            itemCount: 10,
            itemBuilder: (context, index) => Container(
              height: 90.h,
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: kRadius10,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: kBlue.withOpacity(0.5),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 20.w,
                          width: 50.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(imageGlobalMap),
                            ),
                          ),
                        ),
                        kHeight10,
                        Text('25%OFF', style: textHeadStyle1)
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    child: SizedBox(
                      width: 150.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('25% discount with mastercard',
                              style: textStyle1.copyWith(
                                  fontWeight: FontWeight.bold)),
                          kHeight5,
                          Text('Get a discount when you use this.',
                              style: textThinStyle1.copyWith(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w100,
                                  color: kGreyDark))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
