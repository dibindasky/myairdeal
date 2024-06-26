import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class TravelerTabs extends StatelessWidget {
  const TravelerTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TravellerController>(builder: (controller) {
      return Row(
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
                      color: controller.travelerTab == 'Add Details'
                          ? kBluePrimary
                          : kWhite,
                      child: TextButton(
                        onPressed: () {
                          controller.changeTab('Add Details');
                        },
                        child: Text(
                          'Add Details',
                          style: textThinStyle1.copyWith(
                            color: controller.travelerTab == 'Add Details'
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
                      color: controller.travelerTab == 'Saved details'
                          ? kBluePrimary
                          : kWhite,
                      child: TextButton(
                        onPressed: () {
                          controller.changeTab('Saved details');
                        },
                        child: Text(
                          'Saved details',
                          style: textThinStyle1.copyWith(
                            color: controller.travelerTab == 'Saved details'
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
      );
    });
  }
}
