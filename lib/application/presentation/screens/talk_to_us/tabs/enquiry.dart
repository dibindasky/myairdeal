import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/controller/talkto_us/talk_to_us_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/utils/show_dailog/show_dailog.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';

class EnquiryBox extends StatefulWidget {
  const EnquiryBox({super.key, this.fromHome});
  final bool? fromHome;

  @override
  State<EnquiryBox> createState() => _EnquiryBoxState();
}

class _EnquiryBoxState extends State<EnquiryBox> {
  final GlobalKey<FormState> enquiryForm = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    final talkToUsController = Get.find<TalkToUsController>();
    final themeController = Get.find<ThemeController>();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        final authController = Get.find<AuthController>();
        final name =
            '${authController.userCreationResponceModel.value.firstName} ${authController.userCreationResponceModel.value.lastName}';
        talkToUsController.enquiryEmailController.text.isEmpty
            ? authController.userCreationResponceModel.value.email
            : talkToUsController.enquiryEmailController.text;
        talkToUsController.enquiryNameController.text.isEmpty
            ? name
            : talkToUsController.enquiryNameController.text;
        talkToUsController.enquiryNumberController.text.isEmpty
            ? authController.userCreationResponceModel.value.phone
            : talkToUsController.enquiryNumberController.text;
      },
    );

    return Form(
      key: enquiryForm,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            lebelText: 'Email',
            hintText: 'Enter Your Email',
            controller: talkToUsController.enquiryEmailController,
            isBorder: true,
            validate: Validate.email,
            borderRadius: 7,
            keyboardType: TextInputType.emailAddress,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: .3),
              borderRadius: kRadius10,
            ),
            onTapOutside: () => FocusScope.of(context).unfocus(),
            fillColor: kWhite,
          ),
          CustomTextField(
            lebelText: 'Name',
            hintText: 'Enter Your Name',
            controller: talkToUsController.enquiryNameController,
            isBorder: true,
            validate: Validate.notNull,
            borderRadius: 7,
            textCapitalization: TextCapitalization.characters,
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
              color: kWhite,
              border: Border.all(color: kBlack, width: 0.3),
              borderRadius: const BorderRadius.all(Radius.circular(7)),
            ),
            child: InternationalPhoneNumberInput(
              selectorButtonOnErrorPadding: 0,
              spaceBetweenSelectorAndTextField: 0,
              hintText: 'Mobile Number',
              onInputChanged: (PhoneNumber number) {
                talkToUsController.selecedDailCode.value =
                    number.dialCode ?? '+91';
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
              inputDecoration: const InputDecoration(
                fillColor: kWhite,
                filled: true,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: .3, color: kBlack),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
            ),
          ),
          kHeight10,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            decoration: BoxDecoration(
              color: kWhite,
              border: Border.all(color: kBlack, width: 0.3),
              borderRadius: const BorderRadius.all(Radius.circular(7)),
            ),
            child: Obx(
              () => DropdownButton<String>(
                dropdownColor: themeController.secondaryLightColor,
                isExpanded: true,
                value: talkToUsController.selectedEnquiryType?.value,
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
            hintText: 'Enquiry ...',
            isBorder: true,
            borderRadius: 7,
            maxLines: 5,
            validate: Validate.notNullAndLength10,
            controller: talkToUsController.enquiryDescriptionController,
            textCapitalization: TextCapitalization.sentences,
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
              onTap: () {
                if (controller.enquiryDescriptionController.text.isEmpty ||
                    controller.selecedDailCode.value.isEmpty ||
                    controller.enquiryEmailController.text.isEmpty ||
                    controller.enquiryNumberController.text.isEmpty ||
                    controller.selectedEnquiryType == null) {
                  showSnackbar(context,
                      message: 'Fill the Missing Feilds',
                      backgroundColor: kRed);
                }
                if (enquiryForm.currentState!.validate()) {
                  talkToUsController.addEnquiry(
                      fromHome: widget.fromHome ?? false);
                }
              },
            );
          }),
          kHeight30,
        ],
      ),
    );
  }
}
