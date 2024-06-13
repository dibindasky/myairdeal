import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/custom_appbar_shape.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class ScreenTalkToUsPage extends StatelessWidget {
  const ScreenTalkToUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarCustomShape(
            bottomGap: kHeight20,
            topGap: kHeight30,
            backGroundImage: false,
            child: Row(
              children: [
                Text('Talk to us',
                    style: textStyle1.copyWith(color: kWhite, fontSize: 16.sp)),
                const Spacer(),
                ClipRRect(
                  borderRadius: kRadius50,
                  child: const ColoredBox(
                    color: kWhite,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.phone_outlined),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                Text('Let\'s go somewhere', style: textHeadStyle1),
                kHeight15,
                Text(
                  'After book a trip you can manage orders and see E-ticket here.',
                  style: textThinStyle1,
                  textAlign: TextAlign.center,
                ),
                kHeight20,
                EventButton(
                  text: 'Connect with our team',
                  onTap: () {
                    Get.toNamed(Routes.chatTab);
                  },
                  width: double.infinity,
                ),
              ],
            ),
          ),
          kHeight50
        ],
      ),
    );
  }
}
