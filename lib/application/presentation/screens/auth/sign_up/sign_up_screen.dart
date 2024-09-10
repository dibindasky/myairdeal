import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/controller/home/home_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_icon_button.dart';

class ScreenSignUp extends StatefulWidget {
  const ScreenSignUp({super.key});

  @override
  State<ScreenSignUp> createState() => _ScreenSignUpState();
}

class _ScreenSignUpState extends State<ScreenSignUp> {
  @override
  void initState() {
    Get.find<HomeController>()
        .changeNavigationChecker(NavigationChecker.loginSignup);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    FocusScopeNode focusScopeNode = FocusScope.of(context);
    final controller = Get.find<AuthController>();

    return GestureDetector(
      onTap: () {
        if (!focusScopeNode.hasPrimaryFocus) {
          focusScopeNode.unfocus();
        }
      },
      child: Scaffold(
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
                    kHeight30,
                    Obx(() {
                      return Get.find<AuthController>().logFromBooking.value
                          ? Text('Login Before Making A Booking',
                              style: textStyle1.copyWith(
                                  fontSize: 12.sp, fontWeight: FontWeight.w700))
                          : kEmpty;
                    }),
                    kHeight20,
                    Text(controller.changeLogin.value ? 'Sign Up' : 'Login',
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
                        controller.countryCode?.value = number.isoCode ?? 'IN';
                        controller.dialCode?.value = number.dialCode ?? '+91';
                        controller.countryName?.value = 'India';
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
                              const Text('Already have an account?  '),
                              GestureDetector(
                                onTap: () {
                                  controller.changeLoginBool();
                                  focusScopeNode.unfocus();
                                },
                                child: Text(
                                  'Login',
                                  style: textThinStyle1.copyWith(
                                      color: themeController.secondaryColor,
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          themeController.secondaryColor),
                                ),
                              )
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Don\'t have an account?  '),
                              GestureDetector(
                                onTap: () {
                                  controller.changeLoginBool();
                                  focusScopeNode.unfocus();
                                },
                                child: Text(
                                  'Sign Up',
                                  style: textStyle1.copyWith(
                                      color: themeController.secondaryColor,
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          themeController.secondaryColor),
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
                                  suffixIcon:
                                      controller.loginNumber.text.length >=
                                              controller.maxLength.value + 1
                                          ? Image.asset(
                                              tickIcon,
                                              height: 13.h,
                                            )
                                          : null,
                                  color: controller.loginNumber.text.length >=
                                          controller.maxLength.value + 1
                                      ? themeController.primaryColor
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
                    kHeight10,
                    kHeight10,
                    kHeight10,
                  ],
                ),
              ),
            ),
          ),
          floatingActionButton: Obx(() {
            return FloatingActionButton.extended(
              onPressed: () {
                controller.guestLogin();
              },
              backgroundColor: Get.find<ThemeController>().primaryColor,
              label: Text(
                'Skip > >',
                style: textThinStyle1.copyWith(
                    color: Get.find<ThemeController>().secondaryColor),
              ),
            );
          })),
    );
  }
}
