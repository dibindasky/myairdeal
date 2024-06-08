import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/traveler_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/traveler_widgets/review_name_bootom_sheet.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';

class ScreenTravelerDetails extends StatelessWidget {
  ScreenTravelerDetails({super.key});

  final controller = Get.find<TravelerController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DetailAppBar(heading: 'Traveler Details'),
          kHeight15,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            margin: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              border: Border.all(color: kBlue),
              borderRadius: kRadius10,
              color: kBlueLightShade,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight15,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Traveler Name',
                      style: textStyle1.copyWith(
                          fontSize: 15.sp, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Save travellers',
                      style: textThinStyle1.copyWith(color: kBlue),
                    )
                  ],
                ),
                kHeight10,
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    border: Border.all(color: kBlue),
                    borderRadius: kRadius10,
                    color: kWhite,
                  ),
                  child: Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        3,
                        (index) => CustomRadioButton(
                          selected: index == controller.genderType.value,
                          onChanged: () {
                            controller.changeGenderType(index);
                          },
                          text: controller.genderList[index],
                        ),
                      ),
                    ),
                  ),
                ),
                kHeight15,
                Text('First Name', style: textThinStyle1),
                kHeight5,
                CustomTextField(
                  isBorder: true,
                  borderRadius: 14,
                  textCapitalization: TextCapitalization.words,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: .3),
                      borderRadius: kRadius15),
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: 'Enter Your First Name',
                  fillColor: kWhite,
                ),
                Text('Last Name', style: textThinStyle1),
                kHeight5,
                CustomTextField(
                  isBorder: true,
                  borderRadius: 14,
                  textCapitalization: TextCapitalization.words,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: .3),
                      borderRadius: kRadius15),
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: 'Enter Your Last Name',
                  fillColor: kWhite,
                ),
                kHeight15
              ],
            ),
          ),
          Container(
            padding:  EdgeInsets.symmetric(horizontal: 15.w),
            width: double.infinity,
            margin: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              border: Border.all(color: kBlue),
              borderRadius: kRadius10,
              color: kBlueLightShade,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight15,
                Text(
                  'Contact Details',
                  style: textStyle1.copyWith(
                      fontSize: 15.sp, fontWeight: FontWeight.w700),
                ),
                kHeight10,
                Text('Mail ID', style: textThinStyle1),
                kHeight5,
                CustomTextField(
                  isBorder: true,
                  borderRadius: 14,
                  textCapitalization: TextCapitalization.words,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: .3),
                      borderRadius: kRadius15),
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: '@gmail.com',
                  fillColor: kWhite,
                ),
                Text('Phone Number', style: textThinStyle1),
                kHeight5,
                CustomTextField(
                  isBorder: true,
                  borderRadius: 14,
                  textCapitalization: TextCapitalization.words,
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: .3),
                      borderRadius: kRadius15),
                  onTapOutside: () => FocusScope.of(context).unfocus(),
                  hintText: 'Enter Your Phone Number',
                  fillColor: kWhite,
                ),
                kHeight15
              ],
            ),
          ),
          kHeight15,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: EventButton(
              hieght: 40.h,
              text: 'Proceed',
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: knill,
                  context: context,
                  builder: (context) => const ReviewNameBottomSheet(),
                );
              },
            ),
          ),
          kHeight30,
        ],
      ),
    );
  }
}
