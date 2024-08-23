import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:pinput/pinput.dart';

class PinEnterField extends StatelessWidget {
  const PinEnterField({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    final themeController = Get.find<ThemeController>();
    return Pinput(
      animationCurve: Curves.bounceIn,
      onChanged: (value) {},
      onLongPress: () {},
      onCompleted: (value) {},
      controller: authController.otpNumber,
      submittedPinTheme: PinTheme(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          color: themeController.secondaryLightColor,
          border: Border.all(color: themeController.secondaryColor, width: 2),
          borderRadius: kRadius5,
        ),
      ),
      length: 4,
      showCursor: true,
      focusedPinTheme: PinTheme(
        width: 55,
        height: 55,
        textStyle: textHeadStyle1,
        decoration: BoxDecoration(
          border: Border.all(color: kBlue),
          borderRadius: kRadius5,
        ),
      ),
      defaultPinTheme: PinTheme(
        width: 55,
        height: 55,
        textStyle: textHeadStyle1,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: kBlue.withOpacity(0.03),
              offset: const Offset(0, 6),
              blurRadius: 6,
              spreadRadius: 2,
            ),
          ],
          border: Border.all(color: kBlueDark),
          borderRadius: kRadius5,
        ),
      ),
    );
  }
}
