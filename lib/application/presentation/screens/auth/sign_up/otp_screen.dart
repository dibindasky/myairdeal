import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_up/widgets/pinput_feild.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_icon_button.dart';

class ScreenOTP extends StatelessWidget {
  const ScreenOTP({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = Get.find<AuthController>();
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: GetBuilder<AuthController>(builder: (contr) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
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
                kHeight50,
                kHeight30,
                kHeight50,
                GetBuilder<AuthController>(builder: (controller) {
                  if (controller.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: kBluePrimary,
                      ),
                    );
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Enter OTP'),
                      kHeight15,
                      const Center(child: PinEnterField()),
                      kHeight30,
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
                            ? kBluePrimary
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
                      //const Center(child: Text('Or Sign Up With')),
                      kHeight20,
                      //const LoginGoogleOrFaceBook(),
                      kHeight10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already have an account?'),
                          kWidth5,
                          TextButton(
                            onPressed: () {
                              Get.offNamed(Routes.signIn);
                            },
                            child: Text('Sign In',
                                style: textThinStyle1.copyWith(color: kBlue)),
                          ),
                        ],
                      ),
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
