import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:myairdeal/application/controller/talkto_us/talk_to_us_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/utils/formating/text_input_formating.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';

class EnquiryBox extends StatelessWidget {
  const EnquiryBox({super.key});

  @override
  Widget build(BuildContext context) {
    final talkToUsController = Get.find<TalkToUsController>();
    return Container(
      decoration: const BoxDecoration(),
      child: Form(
        // key: talkToUsController.enquiryGlobalKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              hintText: 'Enter Your Email',
              controller: talkToUsController.enquiryEmailController,
              isBorder: true,
              borderRadius: 7,
              textCapitalization: TextCapitalization.words,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: .3),
                borderRadius: kRadius10,
              ),
              onTapOutside: () => FocusScope.of(context).unfocus(),
              fillColor: kWhite,
            ),
            CustomTextField(
              inputFormatters: [AlphabeticInputFormatter()],
              hintText: 'Enter Your Name',
              controller: talkToUsController.enquiryNameController,
              isBorder: true,
              borderRadius: 7,
              textCapitalization: TextCapitalization.words,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: .3),
                borderRadius: kRadius10,
              ),
              onTapOutside: () => FocusScope.of(context).unfocus(),
              fillColor: kWhite,
            ),
            kHeight5,
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: kBlack, width: 0.3),
                borderRadius: const BorderRadius.all(Radius.circular(7)),
              ),
              child: InternationalPhoneNumberInput(
                selectorButtonOnErrorPadding: 0,
                spaceBetweenSelectorAndTextField: 0,
                hintText: 'Mobile Number',
                onInputChanged: (PhoneNumber number) {
                  talkToUsController.selecedDailCode.value =
                      number.isoCode ?? '+91';
                },
                selectorConfig: const SelectorConfig(
                  trailingSpace: false,
                  showFlags: false,
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  useBottomSheetSafeArea: true,
                ),
                initialValue: PhoneNumber(isoCode: 'IN'),
                ignoreBlank: false,
                selectorTextStyle: const TextStyle(color: kBlack),
                textFieldController: talkToUsController.enquiryNumberController,
                formatInput: true,
                keyboardType: const TextInputType.numberWithOptions(
                    signed: true, decimal: false),
                inputDecoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: .3, color: kBlack),
                    borderRadius: kRadius5,
                  ),
                ),
              ),
            ),
            kHeight10,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              decoration: BoxDecoration(
                border: Border.all(color: kBlack, width: 0.3),
                borderRadius: const BorderRadius.all(Radius.circular(7)),
              ),
              child: Obx(
                () => DropdownButton<String>(
                  isExpanded: true,
                  value: talkToUsController.selectedEnquiryType.value,
                  hint: const Text('Select an option'),
                  items: talkToUsController.enquiryTypeList
                      .map<DropdownMenuItem<String>>((value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    talkToUsController.changeEnquiryType(newValue ?? '');
                  },
                ),
              ),
            ),
            kHeight10,
            CustomTextField(
              hintText: 'Description',
              isBorder: true,
              borderRadius: 7,
              maxLines: 6,
              validate: Validate.notNullAndLength15,
              controller: talkToUsController.enquiryDescriptionController,
              textCapitalization: TextCapitalization.words,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: .3),
                borderRadius: kRadius10,
              ),
              onTapOutside: () => FocusScope.of(context).unfocus(),
              fillColor: kWhite,
            ),
            kHeight20,
            GetBuilder<TalkToUsController>(builder: (controller) {
              if (controller.isLoading.value) {
                return const Center(
                    child: CircularProgressIndicator(color: kBluePrimary));
              }
              return EventButton(
                width: 400.w,
                text: 'Send',
                color: kBluePrimary,
                onTap: () {
                  talkToUsController.addEnquiry();
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
