import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_up/widgets/facebook_google_button.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_up/widgets/pinput_feild.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class ScreenOTP extends StatelessWidget {
  const ScreenOTP({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = Get.find<AuthController>();
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Padding(
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
              const Text('Enter OTP'),
              kHeight5,
              const PinEnterField(),
              kHeight30,
              kHeight50,
              EventButton(
                text: 'Verify',
                onTap: () {
                  loginController.verifyOTP();
                },
              ),
              kHeight20,
              const Center(child: Text('Or Sign Up With')),
              kHeight20,
              const LoginGoogleOrFaceBook(),
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
              kHeight10,
            ],
          ),
        ),
      ),
    );
  }
}
