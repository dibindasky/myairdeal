import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/widgets/bottom_button..dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';

class InsurenceTab extends StatefulWidget {
  const InsurenceTab({super.key});

  @override
  State<InsurenceTab> createState() => _InsurenceTabState();
}

class _InsurenceTabState extends State<InsurenceTab> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TravellerController>();
    return Form(
      key: controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight10,
          // const TravelInsurenceContainer(),
          // traveller contact information
          Container(
            decoration: BoxDecoration(
              color: kBlueLightShade,
              boxShadow: boxShadow1,
              borderRadius: kRadius15,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(child: Text('Contact Information', style: textStyle1)),
                kHeight5,
                const Text('Contact Number'),
                CustomTextField(
                  maxLength: 10,
                  controller: controller.phoneController,
                  validate: Validate.phone,
                  keyboardType: TextInputType.number,
                  isBorder: true,
                  borderRadius: 14,
                  textCapitalization: TextCapitalization.words,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: .3),
                      borderRadius: kRadius15),
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: 'Contact Number',
                  fillColor: kWhite,
                ),
                const Text('Email Id'),
                CustomTextField(
                  controller: controller.emailController,
                  validate: Validate.email,
                  keyboardType: TextInputType.emailAddress,
                  isBorder: true,
                  borderRadius: 14,
                  textCapitalization: TextCapitalization.none,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: .3),
                      borderRadius: kRadius15),
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: 'Email',
                  fillColor: kWhite,
                ),
              ],
            ),
          ),
          kHeight20,
          // gst details
          Container(
            decoration: BoxDecoration(
              color: kBlueLightShade,
              boxShadow: boxShadow1,
              borderRadius: kRadius15,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.w),
            child: Column(
              children: [
                Align(
                    child: Text('GST Number for Business Travel (Optional)',
                        style: textStyle1)),
                kHeight10,
                CustomTextField(
                  controller: controller.gstNumberController,
                  keyboardType: TextInputType.text,
                  validate: Validate.noneOrGst,
                  isBorder: true,
                  borderRadius: 14,
                  maxLength: 15,
                  textCapitalization: TextCapitalization.characters,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: .3),
                      borderRadius: kRadius15),
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: 'Registration Number',
                  fillColor: kWhite,
                ),
                CustomTextField(
                  controller: controller.gstCompanyNameController,
                  validate: Validate.noneOrNotNull,
                  isBorder: true,
                  borderRadius: 14,
                  textCapitalization: TextCapitalization.characters,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: .3),
                      borderRadius: kRadius15),
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: 'Registered Company Name',
                  fillColor: kWhite,
                ),
                CustomTextField(
                  controller: controller.gstEmailController,
                  validate: Validate.noneOrEmail,
                  keyboardType: TextInputType.emailAddress,
                  isBorder: true,
                  borderRadius: 14,
                  textCapitalization: TextCapitalization.none,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: .3),
                      borderRadius: kRadius15),
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: 'Registered Email',
                  fillColor: kWhite,
                ),
                CustomTextField(
                  controller: controller.gstPhoneController,
                  validate: Validate.noneOrPhone,
                  keyboardType: TextInputType.number,
                  isBorder: true,
                  borderRadius: 14,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: .3),
                      borderRadius: kRadius15),
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: 'Registered Phone',
                  fillColor: kWhite,
                ),
                CustomTextField(
                  controller: controller.gstAddressController,
                  keyboardType: TextInputType.emailAddress,
                  validate: Validate.noneOrNotNull,
                  isBorder: true,
                  borderRadius: 14,
                  textCapitalization: TextCapitalization.words,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: .3),
                      borderRadius: kRadius15),
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: 'Registered Address',
                  fillColor: kWhite,
                ),
              ],
            ),
          ),
          kHeight30,
          BottomButton(
            onTap: () {
              if (controller.formKey.currentState!.validate()) {
                controller.addGstDetails();
                controller.changeDetailEnterTab(2);
              }
            },
          ),
          kHeight15
        ],
      ),
    );
  }
}
