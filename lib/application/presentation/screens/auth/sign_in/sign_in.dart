import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/screens/auth/sign_up/widgets/facebook_google_button.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_icon_button.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';

class ScreenSignIn extends StatelessWidget {
  const ScreenSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight40,
                Text(
                  'Sign In',
                  style: textHeadStyle1.copyWith(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                kHeight10,
                Text('Start Your Journey with affordable price',
                    style: textThinStyle1.copyWith(color: kGreyDark)),
                kHeight30,
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 13.sp,
                  ),
                ),
                kHeight5,
                CustomTextField(
                  isBorder: true,
                  borderRadius: 14,
                  textCapitalization: TextCapitalization.words,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: .3),
                      borderRadius: kRadius15),
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: 'Email',
                  fillColor: kWhite,
                ),
                kHeight10,
                Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 13.sp,
                  ),
                ),
                kHeight5,
                CustomTextField(
                  obscureText: true,
                  password: TextEditingController(),
                  isBorder: true,
                  borderRadius: 14,
                  textCapitalization: TextCapitalization.words,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: .3),
                      borderRadius: kRadius15),
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: 'Enter Your Password',
                  fillColor: kWhite,
                ),
                kHeight50,
                EventIconButton(
                  width: 380.w,
                  suffixIcon: SizedBox(
                    height: 15.h,
                    width: 15.w,
                    child: Image.asset(tickIcon),
                  ),
                  text: 'Sign in',
                  onTap: () {},
                ),
                kHeight10,
                const Align(
                  alignment: Alignment.center,
                  child: Text('Or Sign In With'),
                ),
                kHeight40,
                const LoginGoogleOrFaceBook(),
                kHeight30,
                EventIconButton(
                  color: kBlueDark,
                  width: 380.w,
                  text: 'Login as Guest',
                  prefixIcon: const Icon(
                    Icons.person_2_outlined,
                    size: 19,
                    color: kWhite,
                  ),
                  onTap: () {},
                ),
                kHeight20,
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       'Already have an account?',
                //       style: textThinStyle1.copyWith(color: kGreyDark),
                //     ),
                //     TextButton(
                //         onPressed: () => Get.offNamed(Routes.signUp),
                //         child: Text(
                //           'Sign Up',
                //           style: textThinStyle1.copyWith(color: kBlue),
                //         )),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
