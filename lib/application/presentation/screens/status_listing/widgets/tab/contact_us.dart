import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:myairdeal/application/controller/raice_ticket/raice_ticket_controller.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/widgets/product_drop_dwn.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';
import 'package:myairdeal/domain/models/ticket_raice/raice_ticket/raice_ticket.dart';

class RaiceTickets extends StatelessWidget {
  RaiceTickets({super.key, this.bookingId});
  final String? bookingId;

  final ticketRaiceController = Get.find<RaiceTicketController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
          3,
          (index) => Obx(
            () => ColoredBox(
              color: klightWhite,
              child: Padding(
                padding: EdgeInsets.all(8.w),
                child: CustomRadioButton(
                  width: kWidth20,
                  onChanged: () {
                    ticketRaiceController.headingChange(
                      ticketRaiceController.contactusRadioItems[index],
                    );
                  },
                  selected: ticketRaiceController.contactusRadioItems[index] ==
                      ticketRaiceController.selectedheding.value,
                  text: ticketRaiceController.contactusRadioItems[index],
                ),
              ),
            ),
          ),
        ),
        kHeight15,
        const Text('Add Description'),
        kHeight5,
        Form(
          key: ticketRaiceController.raiceTicketFormKey,
          child: CustomTextField(
            controller: ticketRaiceController.descriptionController,
            maxLines: 1,
            isBorder: true,
            borderRadius: 7,
            textCapitalization: TextCapitalization.sentences,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: .3),
            ),
            validate: Validate.notNull,
            onTapOutside: () => FocusScope.of(context).unfocus(),
            fillColor: kGreyLightBackground,
            hintText: 'Description',
          ),
        ),
        kHeight10,
        BookingProductdropoDownBuilder(),
        kHeight15,
        Obx(
          () => ticketRaiceController.isLoading.value
              ? CircularProgressIndicator(color: kGoldLightPrimary)
              : EventButton(
                  width: 400.w,
                  text: 'Submit',
                  onTap: () {
                    if (ticketRaiceController.raiceTicketFormKey.currentState!
                        .validate()) {
                      Get.find<RaiceTicketController>()
                          .createRaiceTicket(bookingId: bookingId ?? '');
                    }
                  },
                ),
        ),
        kHeight20
      ],
    );
  }
}
