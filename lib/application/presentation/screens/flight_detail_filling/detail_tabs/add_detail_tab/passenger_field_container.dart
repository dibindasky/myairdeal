import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';

class DetailContainer extends StatelessWidget {
  const DetailContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final travelController = Get.find<TravellerController>();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
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
                    fontSize: 15.sp, fontWeight: FontWeight.w500),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.w),
                decoration: BoxDecoration(
                    border: Border.all(color: kBlue), borderRadius: kRadius10),
                child: Text(
                  'Select From history',
                  style: textThinStyle1.copyWith(color: kBlue),
                ),
              ),
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
                    selected: index == travelController.genderType.value,
                    onChanged: () {
                      travelController.changeGenderType(index);
                    },
                    text: travelController.genderList[index],
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
          Text('Mail id', style: textThinStyle1),
          kHeight5,
          CustomTextField(
            isBorder: true,
            borderRadius: 14,
            textCapitalization: TextCapitalization.words,
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: .3),
                borderRadius: kRadius15),
            onTapOutside: () => FocusScope.of(context).unfocus(),
            hintText: 'Enter Your Mail id',
            fillColor: kWhite,
          ),
          kHeight15
        ],
      ),
    );
  }
}
