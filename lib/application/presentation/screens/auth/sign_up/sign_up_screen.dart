import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_up/widgets/facebook_google_button.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_icon_button.dart';

class ScreenSignUp extends StatelessWidget {
  const ScreenSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final loginContrller = Get.find<AuthController>();
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: GetBuilder<AuthController>(builder: (controller) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: loginContrller.isLoading
                ? const Center(
                    child: CircularProgressIndicator(
                      color: kBlueLight,
                    ),
                  )
                : ListView(
                    children: [
                      kHeight40,
                      Text(
                        'Create an Account',
                        style: textHeadStyle1.copyWith(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      kHeight10,
                      Text(
                        'You will be sent a code on this number to verify if you are the owner of the number. ',
                        style: textThinStyle1.copyWith(color: kbuttonGrey),
                      ),
                      kHeight50,
                      kHeight30,
                      const Text('Mobile Number'),
                      kHeight5,
                      InternationalPhoneNumberInput(
                        selectorButtonOnErrorPadding: 0,
                        spaceBetweenSelectorAndTextField: 0,
                        maxLength: 11,
                        hintText: 'Mobile Number',
                        onInputChanged: (PhoneNumber number) {},
                        selectorConfig: const SelectorConfig(
                          trailingSpace: false,
                          showFlags: false,
                          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                          useBottomSheetSafeArea: true,
                        ),
                        initialValue: PhoneNumber(isoCode: 'IN'),
                        ignoreBlank: false,
                        autoValidateMode: AutovalidateMode.disabled,
                        selectorTextStyle: const TextStyle(color: kBlack),
                        textFieldController: loginContrller.loginNumber,
                        formatInput: true,
                        keyboardType: const TextInputType.numberWithOptions(
                          signed: true,
                          decimal: false,
                        ),
                        inputDecoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: kGrey,
                              width: 1.0,
                            ),
                          ),
                          hintText: 'Mobile Number',
                        ),
                        onSaved: (PhoneNumber number) {},
                      ),
                      kHeight50,
                      EventIconButton(
                        color: kbuttonGrey,
                        text: 'Send Code',
                        onTap: () {
                          loginContrller.otpSent();
                        },
                      ),
                      kHeight20,
                      const Center(child: Text('Or Sign Up With')),
                      kHeight30,
                      const LoginGoogleOrFaceBook(),
                      kHeight50,
                      EventIconButton(
                        prefixIcon: const Icon(
                          Icons.person_2_outlined,
                          color: kWhite,
                          size: 20,
                        ),
                        text: 'Login as Guest',
                        onTap: () {
                          Get.offNamed(Routes.bottomBar);
                        },
                      ),
                      kHeight10,
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     const Text('Already have an account?'),
                      //     kWidth5,
                      //     TextButton(
                      //       onPressed: () => Get.toNamed(Routes.signIn),
                      //       child: Text(
                      //         'Sign In',
                      //         style: textThinStyle1.copyWith(color: kBlue),
                      //       ),
                      //     )
                      //   ],
                      // ),
                      // kHeight10,
                    ],
                  ),
          );
        }),
      ),
    );
  }
}
