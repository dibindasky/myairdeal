import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myairdeal/application/controller/talkto_us/talk_to_us_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/widgets/tab/contact_us.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/widgets/tab/mail.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/custom_appbar_shape.dart';

class ScreenTab extends StatelessWidget {
  const ScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    final talkToUsController = Get.find<TalkToUsController>();
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          AppBarCustomShape(
            bottomGap: kHeight10,
            topGap: kHeight30,
            backGroundImage: false,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      talkToUsController.changetab(-2);
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back_ios, color: kWhite)),
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
          kHeight30,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                ColoredBox(
                  color: kBlueLightShade,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.w),
                    child: Row(
                      children: List.generate(
                        3,
                        (index) {
                          List<IconData> icons = [
                            Iconsax.personalcard4,
                            Iconsax.ticket,
                            Icons.headset,
                          ];
                          List<String> text = [
                            'Mails',
                            'Raise a ticket',
                            'Support',
                          ];
                          return Expanded(
                            child: Row(
                              children: [
                                index != 0 ? kWidth5 : kEmpty,
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      talkToUsController.changetab(index);
                                    },
                                    child: Obx(
                                      () => Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 5.h, horizontal: 5.w),
                                        decoration: BoxDecoration(
                                            color: index ==
                                                    talkToUsController
                                                        .selectedtab.value
                                                ? kWhite
                                                : kBlueLightShade,
                                            border:
                                                Border.all(color: kBluePrimary),
                                            borderRadius: kRadius10),
                                        child: Column(
                                          children: [
                                            kHeight5,
                                            Icon(icons[index], color: kIndigo),
                                            kHeight5,
                                            FittedBox(
                                              child: Text(text[index],
                                                  style:
                                                      textThinStyle1.copyWith(
                                                          color: kIndigo)),
                                            ),
                                            kHeight5
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                kHeight15,
                GetBuilder<TalkToUsController>(
                  builder: (controller) {
                    if (talkToUsController.selectedtab.value == 2) {
                      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                        Get.toNamed(Routes.chatPage);
                      });
                    }
                    if (talkToUsController.selectedtab.value == 0) {
                      return const EmailListScreen();
                    } else if (talkToUsController.selectedtab.value == 1) {
                      return ContactUsFrom();
                    } else {
                      return Container();
                    }
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
