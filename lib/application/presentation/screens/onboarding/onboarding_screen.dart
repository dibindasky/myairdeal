import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/event_icon_button.dart';

class ScreenOnBoard extends StatelessWidget {
  const ScreenOnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(onBoardImage),
                    Positioned(
                      top: 23.h,
                      left: 0,
                      right: 0,
                      child: Hero(
                        tag: 'onbaordImage',
                        child: Image.asset(
                          splashImage,
                          height: 30.h,
                        ),
                      ),
                    )
                  ],
                ),
                kHeight40,
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      strutStyle: const StrutStyle(leading: 2, height: 1),
                      '''Get the Best \nFlight Tickets \nfor You..''',
                      style: textHeadStyle1.copyWith(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                kHeight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    EventButton(
                      color: kGrey,
                      text: 'Skip',
                      onTap: () {
                        authController.skipOnBoard();
                        Get.offAllNamed(Routes.bottomBar);
                      },
                    ),
                    EventIconButton(
                      suffixIcon: const Icon(
                        Icons.arrow_circle_right_outlined,
                        color: kWhite,
                        size: 18,
                      ),
                      onTap: () {
                        authController.skipOnBoard();
                        Get.offAllNamed(Routes.signUp);
                      },
                      text: 'Next',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
