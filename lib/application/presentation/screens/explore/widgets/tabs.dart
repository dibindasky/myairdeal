import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/explore_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExpolreController>(
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight10,
            Text(
              'Popular Flights',
              style: textHeadStyle1,
            ),
            kHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30.h,
                  width: 330.w,
                  child: Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(24),
                              bottomLeft: Radius.circular(24)),
                          child: ColoredBox(
                            color: controller.selectedTab.value == 'Domestic'
                                ? kBluePrimary
                                : kGreylowLight,
                            child: TextButton(
                              onPressed: () {
                                controller.changeTab('Domestic');
                              },
                              child: Text(
                                'Domestic',
                                style: textThinStyle1.copyWith(
                                  color:
                                      controller.selectedTab.value == 'Domestic'
                                          ? kWhite
                                          : kGreyDark,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(24),
                              bottomRight: Radius.circular(24)),
                          child: ColoredBox(
                            color:
                                controller.selectedTab.value == 'International'
                                    ? kBluePrimary
                                    : kGreylowLight,
                            child: TextButton(
                              onPressed: () {
                                controller.changeTab('International');
                              },
                              child: Text(
                                'International',
                                style: textThinStyle1.copyWith(
                                  color: controller.selectedTab.value ==
                                          'International'
                                      ? kWhite
                                      : kGreyDark,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            kHeight15,
          ],
        );
      },
    );
  }
}
