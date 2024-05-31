import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class LogInOrSignUpCard extends StatelessWidget {
  const LogInOrSignUpCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      decoration: BoxDecoration(
          boxShadow: boxShadow,
          borderRadius: kRadius15,
          color: kBlueLightShade),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Login or Sign up', style: textStyle1),
                    kHeight5,
                    Text(
                        'Log in to get more details, and payment informations',
                        style: textThinStyle1),
                  ],
                ),
              ),
              Container(
                width: 80.w,
                height: 80.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageSecureLogin),
                  ),
                ),
              )
            ],
          ),
          EventButton(
              text: 'Sign Up',
              onTap: () {},
              width: double.infinity)
        ],
      ),
    );
  }
}