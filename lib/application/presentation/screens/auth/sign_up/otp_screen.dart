import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_up/widgets/count_down.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_up/widgets/pinput_feild.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_icon_button.dart';

class ScreenOTP extends StatefulWidget {
  const ScreenOTP({super.key});

  @override
  State<ScreenOTP> createState() => _ScreenOTPState();
}

class _ScreenOTPState extends State<ScreenOTP> {
  late Timer _timer;

  bool _canResend = false;

  Color resendButtonColor = kGrey;

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startCountdown() {
    _timer = Timer(const Duration(seconds: 60), () {
      setState(() {
        _canResend = true;
        resendButtonColor = kBlack;
      });
    });
  }

  void _startResendCooldown() {
    setState(() {
      _canResend = false;
      resendButtonColor = kGrey;
    });
    startCountdown();
  }

  @override
  Widget build(BuildContext context) {
    final loginController = Get.find<AuthController>();
    final themeController = Get.find<ThemeController>();
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: GetBuilder<AuthController>(builder: (contr) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                kHeight50,
                kHeight20,
                Image.asset(myAirDealLogo, height: 150.w),
                kHeight40,
                Text(
                  'OTP Verification',
                  style: textHeadStyle1.copyWith(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                kHeight10,
                Text(
                  'Enter the verification code we just send to your number +91 ${loginController.loginNumber.text}.',
                  style: textThinStyle1.copyWith(color: kGrey),
                ),
                GestureDetector(
                  onTap: () => Get.offNamed(Routes.signUpSignIn),
                  child: Text(
                    'Change Number',
                    style: textThinStyle1.copyWith(color: kBlue),
                  ),
                ),
                kHeight20,
                GetBuilder<AuthController>(builder: (controller) {
                  if (controller.isLoading.value) {
                    return const Center(
                        child: CircularProgressIndicator(color: kBluePrimary));
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Enter OTP',
                          style: textStyle1.copyWith(
                              fontSize: 12.sp, fontWeight: FontWeight.w700)),

                      kHeight5,
                      const Center(child: PinEnterField()),
                      kHeight20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("I didn't receive any OTP. ",
                              style: textThinStyle1),
                          TextButton(
                            onPressed: _canResend
                                ? () {
                                    _startResendCooldown();
                                    Get.find<AuthController>().sendSMS();
                                  }
                                : null,
                            child: Text(
                              'RESEND',
                              style: textThinStyle1.copyWith(
                                  color: resendButtonColor),
                            ),
                          ),
                        ],
                      ),
                      if (!_canResend)
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Please wait for '),
                            CountdownTimer(duration: Duration(seconds: 60)),
                            Text(' before resending OTP')
                          ],
                        ),
                      kHeight50,
                      EventIconButton(
                        suffixIcon: controller.otpNumber.text.length >=
                                controller.maxOTPLength.value
                            ? Image.asset(
                                tickIcon,
                                height: 13.h,
                              )
                            : null,
                        color: controller.otpNumber.text.length >=
                                controller.maxOTPLength.value
                            ? themeController.primaryColor
                            : kbuttonGrey,
                        width: 400.w,
                        text: 'Verify',
                        onTap: () {
                          if (loginController.otpNumber.text.length >=
                              loginController.maxOTPLength.value) {
                            loginController.verifyOTP();
                          } else {
                            Get.snackbar('Failed', 'OTP number is not Valid');
                          }
                        },
                      ),
                      kHeight20,
                      kHeight20,
                      kHeight10,
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     const Text('Already have an account?'),
                      //     kWidth5,
                      //     TextButton(
                      //       onPressed: () {
                      //         Get.offNamed(Routes.signIn);
                      //       },
                      //       child: Text('Sign In',
                      //           style: textThinStyle1.copyWith(color: kBlue)),
                      //     ),
                      //   ],
                      // ),
                    ],
                  );
                }),
                kHeight10,
              ],
            ),
          );
        }),
      ),
    );
  }
}
