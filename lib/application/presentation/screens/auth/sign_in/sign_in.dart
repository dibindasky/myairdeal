import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          Text(
            'Start Your Journey with affordable price',
            style: textThinStyle1.copyWith(color: kGrey),
          ),
          kHeight50,
          const CustomTextField(
              hintText: '',
              fillColor: kGreyLightBackground,
              showUnderline: false,
              validate: Validate.none)
        ],
      ),
    );
  }
}
