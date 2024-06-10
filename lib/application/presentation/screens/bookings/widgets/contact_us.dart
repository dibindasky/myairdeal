import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/file_picker.dart';
import 'package:myairdeal/application/presentation/screens/bookings/widgets/product_drop_dwn.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';

class ContactUsFrom extends StatelessWidget {
  ContactUsFrom({super.key});

  final bookingController = Get.find<BookingController>();

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
                  bookingController.changeContactUsRadioButton(index);
                },
                selected: index ==
                    bookingController.selectedcontactUsradioButton.value,
                text: bookingController.contactusRadioItems[index],
              ),
            ),
          ),
        ),
        kHeight15,
        const Text('Name'),
        kHeight5,
        CustomTextField(
          isBorder: true,
          borderRadius: 10,
          textCapitalization: TextCapitalization.words,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: .3), borderRadius: kRadius5),
          onTapOutside: () => FocusScope.of(context).unfocus(),
          hintText: 'Enter name',
          fillColor: kGreyLightBackground,
        ),
        const Text('Mobile number'),
        kHeight5,
        CustomTextField(
          isBorder: true,
          borderRadius: 10,
          textCapitalization: TextCapitalization.words,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: .3), borderRadius: kRadius5),
          onTapOutside: () => FocusScope.of(context).unfocus(),
          hintText: 'Enter Mobile number',
          fillColor: kGreyLightBackground,
        ),
        const Text('Mail ID'),
        kHeight5,
        CustomTextField(
          isBorder: true,
          borderRadius: 10,
          textCapitalization: TextCapitalization.words,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: .3), borderRadius: kRadius5),
          onTapOutside: () => FocusScope.of(context).unfocus(),
          hintText: 'Enter Mail ID',
          fillColor: kGreyLightBackground,
        ),
        BookingProductdropoDownBuilder(),
        kHeight15,
        const BookingFilePicker(),
        kHeight15,
        const Text('Add Description'),
        kHeight5,
        CustomTextField(
          maxLines: 4,
          isBorder: true,
          borderRadius: 7,
          textCapitalization: TextCapitalization.words,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: .3),
          ),
          onTapOutside: () => FocusScope.of(context).unfocus(),
          hintText: 'Description',
          fillColor: kGreyLightBackground,
        ),
        kHeight15,
        EventButton(
          width: 400.w,
          text: 'Submit',
          onTap: () {},
        ),
      ],
    );
  }
}
