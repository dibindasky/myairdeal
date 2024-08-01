import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class ReviewNameBottomSheet extends StatelessWidget {
  const ReviewNameBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      width: double.infinity,
      height: 265.h,
      child: Column(
        children: [
          Container(
            height: 5.h,
            width: 100.w,
            decoration: const BoxDecoration(color: kGrey),
          ),
          kHeight15,
          Expanded(
            child: ListView(
              children: [
                Text('Review your Name', style: textHeadStyle1),
                kHeight10,
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took',
                  style: textThinStyle1.copyWith(color: kGrey, fontSize: 12.sp),
                ),
                kHeight15,
                ClipRRect(
                  borderRadius: kRadius10,
                  child: const ColoredBox(
                    color: kBlueLightShade,
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Passengers'),
                                Text('Adult 1'),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('First and Middle Name'),
                                Text('Adult 1'),
                              ],
                            ),
                          ),
                          VerticalDivider(
                            color: kBlack,
                            thickness: 3,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Mobile Num'),
                                Text('Adult 1'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                kHeight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: EventButton(
                        hieght: 38.h,
                        borderColor: kBlue,
                        textColr: kBlue,
                        color: kWhite,
                        isBorder: true,
                        text: 'Edit Name',
                        onTap: () {
                          Get.back();
                        },
                      ),
                    ),
                    kWidth20,
                    Expanded(
                      child: EventButton(
                        hieght: 38.h,
                        text: 'Confirm',
                        onTap: () {
                          Get.offNamed(Routes.seatSelection);
                        },
                      ),
                    )
                  ],
                ),
                kHeight15,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
