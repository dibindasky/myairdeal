import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/empty_log/empty_login_widget.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class ScreenTalkToUsPage extends StatelessWidget {
  const ScreenTalkToUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return !Get.find<AuthController>().loginOrNot.value
            ? const AskToLogin(
                title: 'Talk To US',
              )
            : Column(
                children: [
                  DetailAppBar(
                      heading: 'Talk To US',
                      bottomgap: kHeight30,
                      topGap: kHeight20,
                      backButton: false),
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
              );
      }),
    );
  }
}
