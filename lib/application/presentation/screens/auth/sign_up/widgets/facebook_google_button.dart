import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_icon_button.dart';

class LoginGoogleOrFaceBook extends StatelessWidget {
  const LoginGoogleOrFaceBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        EventIconButton(
          hieght: 50.h,
          width: 140.w,
          color: kGrey,
          suffixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(faceBookIcon),
          ),
          onTap: () {},
        ),
        kWidth30,
        EventIconButton(
          hieght: 50.h,
          width: 140.w,
          color: kGrey,
          suffixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(googleIcon),
          ),
          onTap: () {},
        )
      ],
    );
  }
}
