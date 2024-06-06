import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/custom_appbar_shape.dart';

class SortScreenHeaderSection extends StatelessWidget {
  const SortScreenHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200.h,
          child: AppBarCustomShape(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                kHeight30,
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back(id: 1);
                      },
                      child: const Icon(Icons.arrow_back_ios, color: kWhite),
                    ),
                    Text(
                      '100 Results',
                      style: textThinStyle1.copyWith(
                          fontSize: 20.sp, color: kWhite),
                    ),
                    const Spacer(),
                    const Icon(Icons.edit_note_sharp, color: kWhite)
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
                          'Bangalore',
                          style: textHeadStyle1.copyWith(color: kWhite),
                        ),
                        Text(
                          'International',
                          style: textThinStyle1.copyWith(color: kWhite),
                        ),
                        Text(
                          'Airport',
                          style: textThinStyle1.copyWith(color: kWhite),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imageFlightTrip))),
                        ),
                        Text(
                          '01hr 45m',
                          style: textThinStyle1.copyWith(color: kWhite),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hydrabad',
                          style: textHeadStyle1.copyWith(color: kWhite),
                        ),
                        Text(
                          'International',
                          style: textThinStyle1.copyWith(color: kWhite),
                        ),
                        Text(
                          'Airport',
                          style: textThinStyle1.copyWith(color: kWhite),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
