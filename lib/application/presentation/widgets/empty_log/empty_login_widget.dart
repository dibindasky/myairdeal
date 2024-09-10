import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class AskToLogin extends StatelessWidget {
  const AskToLogin({
    super.key,required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DetailAppBar(
              heading: title, backButton: false, topGap: kHeight10),
          Container(
            decoration: BoxDecoration(
                color: Get.find<ThemeController>().secondaryColor,
                borderRadius: kRadius15,
                border: Border.all(
                    color: Get.find<ThemeController>().primaryColor)),
            margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 15.h),
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 15.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Log in to get more details, and payment informations',
                  style: textThinStyle1,
                ),
                kHeight10,
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offAndToNamed(Routes.signUpSignIn);
                    },
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(
                            color: Get.find<ThemeController>().secondaryColor),
                        backgroundColor:
                            Get.find<ThemeController>().primaryColor,
                        foregroundColor:
                            Get.find<ThemeController>().secondaryColor),
                    child: Text(
                      'Login',
                      style: textStyle1.copyWith(
                          color: Get.find<ThemeController>().secondaryColor,
                          fontSize: 12.sp),
                    ),
                  ),
                ),
              ],
            ),
          ),
          kEmpty
        ],
      );
    });
  }
}
