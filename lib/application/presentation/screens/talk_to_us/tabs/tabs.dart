import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/controller/talkto_us/talk_to_us_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/screens/talk_to_us/tabs/enquiry.dart';
import 'package:myairdeal/application/presentation/screens/talk_to_us/tabs/raice_ticket.dart';
import 'package:myairdeal/application/presentation/screens/talk_to_us/tabs/raice_tickets_builder.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/data/features/url_launcher.dart';

class ScreenTab extends StatelessWidget {
  const ScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    final talkToUsController = Get.find<TalkToUsController>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Get.find<AuthController>().getUserInfo(true);
      talkToUsController.getAllBookingIds();
      talkToUsController.getAllTickets();
    });
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          DetailAppBar(
            action: GestureDetector(
              onTap: () =>
                  OpenLauncherFeature.launchPhone(phone: supportContactNumber),
              child: CircleAvatar(
                radius: 15.w,
                child: const Icon(Icons.phone),
              ),
            ),
            heading: 'Talk To US',
            bottomgap: kHeight30,
            topGap: kHeight20,
          ),
          SizedBox(height: height * .02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: GetBuilder<TalkToUsController>(builder: (contro) {
              if (contro.isLoading.value) {
                return const Center(
                    child: CircularProgressIndicator(color: kBluePrimary));
              }
              return Column(
                children: [
                  const TabsContainerBuilder(),
                  SizedBox(height: height * .02),
                  SizedBox(
                    height: height * .7,
                    child: GetBuilder<TalkToUsController>(
                      builder: (controller) {
                        if (talkToUsController
                                .selectedGlobalTalkToUsTab.value ==
                            0) {
                          return const EnquiryBox();
                        } else if (talkToUsController
                                .selectedGlobalTalkToUsTab.value ==
                            1) {
                          return const RaiceTicket();
                        } else if (talkToUsController
                                .selectedGlobalTalkToUsTab.value ==
                            2) {
                          return const RaiceTicketsLists();
                        } else {
                          return kEmpty;
                        }
                      },
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}

class TabsContainerBuilder extends StatelessWidget {
  const TabsContainerBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final talkToUsController = Get.find<TalkToUsController>();
    final themeController = Get.find<ThemeController>();
    return Row(
      children: List.generate(
        3,
        (index) {
          List<IconData> icons = [
            Icons.question_answer,
            Iconsax.ticket,
            Icons.list,
            Iconsax.headphone
          ];
          List<String> text = ['Enquiry', 'Raise a ticket', 'Lists', 'Support'];
          return Expanded(
            child: Row(
              children: [
                index != 0 ? kWidth5 : kEmpty,
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      talkToUsController.changeGlobalTalkToUsTab(index);
                      // if (text[index] == 'Support') {
                      //   OpenLauncherFeature.launchPhone(phone: '7061409421');
                      // }
                    },
                    child: Obx(
                      () => Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.h, horizontal: 5.w),
                        decoration: BoxDecoration(
                            color: index ==
                                    talkToUsController
                                        .selectedGlobalTalkToUsTab.value
                                ? kWhite
                                : themeController.secondaryLightColor,
                            border: Border.all(
                                color: themeController.secondaryLightColor),
                            borderRadius: kRadius10),
                        child: Column(
                          children: [
                            kHeight5,
                            Icon(icons[index], color: kIndigo),
                            kHeight5,
                            FittedBox(
                              child: Text(text[index],
                                  style:
                                      textThinStyle1.copyWith(color: kIndigo)),
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
    );
  }
}
