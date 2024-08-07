import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/controller/talkto_us/talk_to_us_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/screens/talk_to_us/widgets/tabs/enquiry.dart';
import 'package:myairdeal/application/presentation/screens/talk_to_us/widgets/tabs/raice_ticket.dart';
import 'package:myairdeal/application/presentation/screens/talk_to_us/widgets/tabs/raice_tickets_builder.dart';
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
    });
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DetailAppBar(heading: 'Talk To US'),
          kHeight30,
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
                  kHeight15,
                  GetBuilder<TalkToUsController>(
                    builder: (controller) {
                      if (talkToUsController.selectedtab.value == 0) {
                        return const EnquiryBox();
                      } else if (talkToUsController.selectedtab.value == 1) {
                        return const RaiceTicket();
                      } else if (talkToUsController.selectedtab.value == 2) {
                        return const RaiceTicketsLists();
                      } else {
                        return kEmpty;
                      }
                    },
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
    return Row(
      children: List.generate(
        4,
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
                      talkToUsController.changetab(index);
                      if (text[index] == 'Support') {
                        OpenLauncherFeature.launchPhone(phone: '7061409421');
                      }
                    },
                    child: Obx(
                      () => Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.h, horizontal: 5.w),
                        decoration: BoxDecoration(
                            color: index == talkToUsController.selectedtab.value
                                ? kWhite
                                : kBlueLightShade,
                            border: Border.all(color: kBluePrimary),
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
