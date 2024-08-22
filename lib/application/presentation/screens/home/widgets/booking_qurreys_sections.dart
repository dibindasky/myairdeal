import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/navbar/navbar_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class BookingIssuesQuerySection extends StatelessWidget {
  const BookingIssuesQuerySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    List<IconData> icons = [
      // Iconsax.repeat,
      // Iconsax.global,
      // Iconsax.close_circle,
      // Iconsax.close_circle
      Iconsax.activity,
      Iconsax.close_square,
      Iconsax.check,
      Iconsax.headphone,
    ];
    List<String> text = [
      // 'Check Refund',
      // 'Web Check in',
      // 'Cancellation',
      // 'YTD 1'
      'Upcoming',
      'Cancelled',
      'Completed',
      'Support'
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: List.generate(
          text.length,
          (index) => Expanded(
            child: Row(
              children: [
                index != 0 ? kWidth5 : kEmpty,
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (index == 3) {
                        Get.find<NavBarController>().chageIndex(2);
                      } else {
                        Get.find<NavBarController>().chageIndex(1);
                        Get.find<BookingController>().changeTab(index);
                      }
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                      decoration: BoxDecoration(
                          color:
                              themeController.secondaryLightColor,
                          border: Border.all(
                              color: themeController.secondaryColor
                                  .withOpacity(0.3)),
                          borderRadius: kRadius10),
                      child: Column(
                        children: [
                          kHeight5,
                          Icon(icons[index], color: kIndigo),
                          kHeight5,
                          FittedBox(
                            child: Text(text[index],
                                style: textThinStyle1.copyWith(color: kIndigo)),
                          ),
                          kHeight5
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
