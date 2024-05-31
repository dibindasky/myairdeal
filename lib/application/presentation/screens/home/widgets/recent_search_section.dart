import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class RecentSearchSection extends StatelessWidget {
  const RecentSearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Recent searches', style: textHeadStyle1),
            TextButton(
                onPressed: () {},
                child: Text('See all',
                    style: textStyle1.copyWith(color: kBlack)))
          ],
        ),
        SizedBox(
          height: 70.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => kWidth10,
            itemCount: 10,
            itemBuilder: (context, index) => Container(
              height: 100.h,
              padding: EdgeInsets.symmetric(
                  horizontal: 10.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: kBluePrimary,
                borderRadius: kRadius10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text('Hyderabad',
                              style: textThinStyle1.copyWith(
                                  color: kWhite)),
                          kHeight5,
                          Text('HYD',
                              style: textThinStyle1.copyWith(
                                  color: kWhite)),
                        ],
                      ),
                      kWidth20,
                      const RotatedBox(
                        quarterTurns: 1,
                        child: Icon(Icons.flight, color: kWhite),
                      ),
                      kWidth20,
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.end,
                        children: [
                          Text(
                            'New Delhi',
                            style: textThinStyle1.copyWith(
                                color: kWhite),
                          ),
                          kHeight5,
                          Text(
                            'DEL',
                            style: textThinStyle1.copyWith(
                                color: kWhite),
                          ),
                        ],
                      )
                    ],
                  ),
                  kHeight5,
                  Text(
                    'Tue,7 may',
                    style: textThinStyle1.copyWith(color: kWhite),
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
