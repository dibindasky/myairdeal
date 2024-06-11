import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/animations/splash_animation.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class GoTOHOmeScreen extends StatelessWidget {
  const GoTOHOmeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF007EC4),
      body: AnimatedGrowShrinkContainer(
        end: 10,
        begin: 1,
        onTap: (controller) {
          controller.forward().then((value) => Get.toNamed(Routes.bottomBar));
        },
        child: Column(
          children: [
            Image.asset('asset/image/plane_image.png'),
            Text(
              'Ready to fly!',
              style: textHeadStyle1.copyWith(
                  fontSize: 23.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              'Your Account has been created Sucessfully',
              style: textStyle1.copyWith(fontSize: 13, color: kWhite),
            ),
            kHeight50,
            kHeight50,
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: EventButton(
                hieght: 40.h,
                width: 400.w,
                color: kWhite,
                style: textStyle1.copyWith(color: kBlack, fontSize: 12.sp),
                text: 'Go to homepage',
                onTap: () {
                  Get.toNamed(Routes.bottomBar);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
