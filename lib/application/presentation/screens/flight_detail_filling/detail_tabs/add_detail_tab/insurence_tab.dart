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
                  controller:controller. emailController,
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
          kHeight50,
          BottomButton(
            onTap: () {
              if (controller.formKey.currentState!.validate()) {
                Get.find<TravellerController>().changeDetailEnterTab(2);
              }
              // showModalBottomSheet(
              //   enableDrag: true,
              //   context: context,
              //   builder: (context) => const ConfrimBottomSheet(),
              // );
            },
          ),
          kHeight15
        ],
      ),
    );
  }
}
