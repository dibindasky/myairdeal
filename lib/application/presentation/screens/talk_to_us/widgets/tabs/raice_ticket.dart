import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/talkto_us/talk_to_us_controller.dart';
import 'package:myairdeal/application/presentation/screens/talk_to_us/widgets/dropdown_bookingid.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';

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
          child: Obx(
            () => Column(
              children: [
                kHeight10,
                controller.selectedTicketRaisingType.value == 'Booking'
                    ? BookingIdDropDown()
                    : kEmpty,
                controller.selectedTicketRaisingType.value == 'Booking'
                    ? kHeight15
                    : kEmpty,
                CustomTextField(
                  controller: controller.headingController,
                  validate: Validate.notNull,
                  isBorder: true,
                  borderRadius: 9,
                  textCapitalization: TextCapitalization.words,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: .3),
                      borderRadius: kRadius15),
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: 'Heading',
                  fillColor: kWhite,
                ),
                kHeight10,
                CustomTextField(
                  controller: controller.ticketRisingdescriptionController,
                  validate: Validate.notNullAndLength15,
                  isBorder: true,
                  maxLines: 6,
                  borderRadius: 9,
                  textCapitalization: TextCapitalization.words,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: .3),
                      borderRadius: kRadius15),
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: 'Description',
                  fillColor: kWhite,
                ),
              ],
            ),
          ),
        ),
        kHeight30,
        EventButton(
          width: 400.w,
          text: 'Submit',
          onTap: () {
            if (controller.globalRaiceTicketFormKey.currentState!.validate()) {
              controller.globalTicketRaising();
            }
          },
        )
      ],
    );
  }
}
