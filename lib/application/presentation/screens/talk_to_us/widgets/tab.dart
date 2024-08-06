import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/controller/talkto_us/talk_to_us_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/screens/talk_to_us/widgets/dropdown_bookingid.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/event_icon_button.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';
import 'package:myairdeal/data/features/url_launcher.dart';

class ScreenTab extends StatelessWidget {
  const ScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      authController.getUserInfo(true);
    });
    final talkToUsController = Get.find<TalkToUsController>();
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DetailAppBar(heading: 'Talk To US'),
          kHeight30,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const TabsContainerBuilder(),
                kHeight15,
                GetBuilder<TalkToUsController>(
                  builder: (controller) {
                    if (talkToUsController.selectedtab.value == 0) {
                      return EmailBox(
                          email: authController
                                  .userCreationResponceModel.value.email ??
                              '');
                    } else if (talkToUsController.selectedtab.value == 1) {
                      return const RaiceTicket();
                    } else {
                      return kEmpty;
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RaiceTicket extends StatelessWidget {
  const RaiceTicket({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TalkToUsController>();
    return Column(
      children: [
        ...List.generate(
          controller.globalTicketRaisingProducts.length,
          (index) => Obx(
            () => ColoredBox(
              color: klightWhite,
              child: Padding(
                padding: EdgeInsets.all(8.w),
                child: CustomRadioButton(
                  width: kWidth20,
                  onChanged: () {
                    controller.typeChange(
                        controller.globalTicketRaisingProducts[index]);
                  },
                  selected: controller.globalTicketRaisingProducts[index] ==
                      controller.selectedTicketRaisingType.value,
                  text: controller.globalTicketRaisingProducts[index],
                ),
              ),
            ),
          ),
        ),
        Form(
          key: controller.globalRaiceTicketFormKey,
          child: Column(
            children: [
              kHeight15,
              BookingIdDropDown(),
              kHeight10,
              CustomTextField(
                controller: controller.descriptionController,
                maxLines: 1,
                borderRadius: 7,
                textCapitalization: TextCapitalization.words,
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: .3),
                ),
                validate: Validate.notNullAndLength15,
                onTapOutside: () => FocusScope.of(context).unfocus(),
                fillColor: kGreyLightBackground,
                hintText: 'Heading',
              ),
              CustomTextField(
                controller: controller.descriptionController,
                maxLines: 5,
                borderRadius: 7,
                textCapitalization: TextCapitalization.words,
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: .3),
                ),
                validate: Validate.notNullAndLength15,
                onTapOutside: () => FocusScope.of(context).unfocus(),
                fillColor: kGreyLightBackground,
                hintText: 'Description',
              ),
            ],
          ),
        ),
        EventButton(
          text: 'Submit',
          onTap: () {},
        )
      ],
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
        3,
        (index) {
          List<IconData> icons = [
            Iconsax.personalcard4,
            Iconsax.ticket,
            Icons.headset,
          ];
          List<String> text = ['Mails', 'Raise a ticket', 'Support'];
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

class EmailBox extends StatelessWidget {
  const EmailBox({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    final talkToUsController = Get.find<TalkToUsController>();
    return Container(
      decoration: const BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: kGreen,
              child: Text(email.isNotEmpty ? email[0].toUpperCase() : 'M',
                  style: textThinStyle1),
            ),
            title: Text('Sender', style: textStyle1),
            subtitle: Text(email),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_horiz)),
          ),
          CustomTextField(
            hintText: 'Enter Your Subject',
            controller: talkToUsController.headingController,
            isBorder: true,
            borderRadius: 10,
            textCapitalization: TextCapitalization.words,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: .3),
              borderRadius: kRadius10,
            ),
            onTapOutside: () => FocusScope.of(context).unfocus(),
            fillColor: kWhite,
          ),
          kHeight10,
          CustomTextField(
            hintText: 'Description',
            isBorder: true,
            borderRadius: 10,
            maxLines: 7,
            textCapitalization: TextCapitalization.words,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: .3),
              borderRadius: kRadius10,
            ),
            onTapOutside: () => FocusScope.of(context).unfocus(),
            fillColor: kWhite,
          ),
          kHeight20,
          EventIconButton(
            width: 400.w,
            textColr: kBlack,
            text: 'Send',
            color: knill,
            border: Border.all(
              color: kBlack.withOpacity(.3),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
