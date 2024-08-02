import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_icon_button.dart';

class ScreenSignUp extends StatelessWidget {
  const ScreenSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AuthController>();
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Obx(
          () => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                kHeight50,
                kHeight20,
                Image.asset(myAirDealLogo, height: 150.w),
                kHeight50,
                Text(controller.changeLogin.value ? 'Sign up' : 'Login',
                    style: textHeadStyle1.copyWith(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w700,
                    )),
                kHeight10,
                Text('Enter Mobile Number',
                    style: textStyle1.copyWith(
                        fontSize: 12.sp, fontWeight: FontWeight.w700)),
                kHeight5,
                InternationalPhoneNumberInput(
                  selectorButtonOnErrorPadding: 0,
                  spaceBetweenSelectorAndTextField: 0,
                  hintText: 'Mobile Number',
                  onInputChanged: (PhoneNumber number) {
                    controller.updateMaxLength(number.isoCode ?? 'IN');
                    controller.countryCode?.value = number.isoCode ?? '';
                    controller.dialCode?.value = number.dialCode ?? '';
                  },
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
                  textFieldController: controller.loginNumber,
                  formatInput: true,
                  keyboardType: const TextInputType.numberWithOptions(
                      signed: true, decimal: false),
                  inputDecoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: kGrey,
                        width: 1.0,
                      ),
                    ),
                    hintText: 'Enter Mobile Number',
                  ),
                  maxLength: controller.maxLength.value + 1,
                  onSaved: (PhoneNumber number) {},
                ),
                kHeight10,
                Text(
                  'You will receive a verification code on this number.',
                  style: textThinStyle1.copyWith(color: kbuttonGrey),
                ),
                kHeight50,
                controller.changeLogin.value
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already have an account  '),
                          GestureDetector(
                            onTap: () {
                              controller.changeLoginBool();
                            },
                            child: Text(
                              'Login',
                              style: textThinStyle1.copyWith(color: kBlue),
                            ),
                          )
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Dont\t have an account?  '),
                          GestureDetector(
                            onTap: () {
                              controller.changeLoginBool();
                            },
                            child: Text(
                              'Sign up',
                              style: textThinStyle1.copyWith(color: kBlue),
                            ),
                          )
                        ],
                      ),
                kHeight50,
                GetBuilder<AuthController>(builder: (cont) {
                  return Column(
                    children: [
                      controller.isLoading.value
                          ? const Center(
                              child: CircularProgressIndicator(
                                  color: kBluePrimary),
                            )
                          : EventIconButton(
                              width: 400.w,
                              suffixIcon: controller.loginNumber.text.length >=
                                      controller.maxLength.value + 1
                                  ? Image.asset(
                                      tickIcon,
                                      height: 13.h,
                                    )
                                  : null,
                              color: controller.loginNumber.text.length >=
                                      controller.maxLength.value + 1
                                  ? kBluePrimary
                                  : kbuttonGrey,
                              text: 'Send OTP',
                              onTap: () {
                                if (controller.loginNumber.text.length >=
                                    controller.maxLength.value + 1) {
                                  controller.sendSMS();
                                } else {
                                  Get.snackbar(
                                    'Failed',
                                    'Mobile Number is not valid',
                                    backgroundColor: kRed,
                                  );
                                }
                              },
                            ),
                    ],
                  );
                }),
                kHeight20,
                // const Center(child: Text('OR')),
                // const Center(child: Text('Or Sign Up With')),
                kHeight10,
                kHeight10,
                // const LoginGoogleOrFaceBook(),

                // EventIconButton(
                //   prefixIcon: const Icon(
                //     Icons.person_2_outlined,
                //     color: kWhite,
                //     size: 20,
                //   ),
                //   text: 'Login as Guest',
                //   onTap: () {
                //     Get.offNamed(Routes.bottomBar);
                //   },
                // ),
                kHeight10,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
