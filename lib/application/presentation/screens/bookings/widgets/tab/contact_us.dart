import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:myairdeal/application/controller/raice_ticket/raice_ticket_controller.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/file_picker.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/product_drop_dwn.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';
import 'package:myairdeal/domain/models/ticket_raice/raice_ticket/raice_ticket.dart';

class ContactUsFrom extends StatelessWidget {
  ContactUsFrom({super.key, this.bookingId});
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
            () => Padding(
              padding: const EdgeInsets.all(8.0),
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
        kHeight15,
        const Text('Add Description'),
        kHeight5,
        CustomTextField(
          controller: ticketRaiceController.descriptionController,
          maxLines: 7,
          isBorder: true,
          borderRadius: 7,
          textCapitalization: TextCapitalization.words,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: .3),
          ),
          onTapOutside: () => FocusScope.of(context).unfocus(),
          fillColor: kGreyLightBackground,
          hintText: 'Description',
        ),
        const BookingFilePicker(),
        kHeight10,
        const ImageBuilder(),
        kHeight10,
        BookingProductdropoDownBuilder(),
        kHeight15,
        EventButton(
          width: 400.w,
          text: 'Submit',
          onTap: () {
            RaiceTicket raiceTicket = RaiceTicket(
              bookingId: bookingId,
              description: ticketRaiceController.descriptionController.text,
              heading: ticketRaiceController.selectedheding.value,
              product: ticketRaiceController.selectedProduct?.value ?? 'Flight',
            );
            Get.find<RaiceTicketController>()
                .addRaiceTicket(raiceTicket: raiceTicket);
          },
        ),
        kHeight20
      ],
    );
  }
}

class ImageBuilder extends StatelessWidget {
  const ImageBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: ListView.builder(
        itemCount: 0,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(right: 10.w),
          decoration:
              BoxDecoration(color: kBlueLightShade, borderRadius: kRadius5),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              flightDetailIcon,
            ),
          ),
        ),
      ),
    );
  }
}
