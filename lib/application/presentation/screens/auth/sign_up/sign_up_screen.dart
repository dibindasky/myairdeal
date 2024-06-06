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

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final loginContrller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              kHeight40,
              Text(
                'Sign Up',
                style: textHeadStyle1.copyWith(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              kHeight10,
              Text(
                'You will be sent a code on this number to verify if you are the owner of the number. ',
                style: textThinStyle1.copyWith(color: kGrey),
              ),
              kHeight50,
              kHeight30,
              const Text('Mobile Number'),
              kHeight5,
              InternationalPhoneNumberInput(
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
                inputBorder: OutlineInputBorder(
                  borderRadius: kRadius10,
                  borderSide: const BorderSide(
                    color: kGrey,
                    width: 1.0,
                  ),
                ),
                onSaved: (PhoneNumber number) {},
              ),
              kHeight50,
              EventIconButton(
                color: kGrey,
                text: 'Send Code',
                onTap: () {
                  Get.offAllNamed(Routes.otp);
                },
              ),
              kHeight20,
              const Center(child: Text('Or Sign Up With')),
              kHeight30,
              const LoginGoogleOrFaceBook(),
              kHeight30,
              EventIconButton(
                prefixIcon: const Icon(
                  Icons.person_2_outlined,
                  color: kWhite,
                  size: 14,
                ),
                text: 'Login as Guest',
                onTap: () {},
              ),
              kHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  kWidth5,
                  TextButton(
                    onPressed: () => Get.toNamed(Routes.signIn),
                    child: Text(
                      'Sign In',
                      style: textThinStyle1.copyWith(color: kBlue),
                    ),
                  )
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
