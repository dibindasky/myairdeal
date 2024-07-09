import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/traveller_info.dart';

class DetailContainer extends StatefulWidget {
  const DetailContainer(
      {super.key, required this.index, required this.travellerType});

  final int index;
  final String travellerType;

  @override
  State<DetailContainer> createState() => _DetailContainerState();
}

class _DetailContainerState extends State<DetailContainer> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  final travelController = Get.find<TravellerController>();

  @override
  void initState() {
    final model = travelController.passengerDetails[widget.index];
    if (model != null) {
      firstNameController.text = model.fN ?? '';
      lastNameController.text = model.lN ?? '';
      dateOfBirthController.text = model.dob ?? '';
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            controller: firstNameController,
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
            controller: lastNameController,
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
          Text('Date Of Birth', style: textThinStyle1),
          kHeight5,
          CustomTextField(
            controller: dateOfBirthController,
            isBorder: true,
            borderRadius: 14,
            textCapitalization: TextCapitalization.words,
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: .3),
                borderRadius: kRadius15),
            onTapOutside: () => FocusScope.of(context).unfocus(),
            hintText: 'yyyy-mm-dd',
            fillColor: kWhite,
          ),
          kHeight5,
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                // add passenger details
                final gender = travelController.genderType.value;
                travelController.addPassengerDetail(
                    widget.index,
                    TravellerInfo(
                        dob: dateOfBirthController.text,
                        fN: firstNameController.text,
                        lN: lastNameController.text,
                        ti: widget.travellerType == 'INFANT'
                            ? null
                            : gender == 0
                                ? 'Mr'
                                : gender == 1
                                    ? 'Mrs'
                                    : 'Ms',
                        pt: widget.travellerType));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                decoration: BoxDecoration(
                    boxShadow: boxShadow3,
                    color: kBlueLightShade,
                    border: Border.all(color: kBluePrimary),
                    borderRadius: kRadius10),
                child: Text(
                  '+ Add',
                  style: textStyle1.copyWith(color: kBluePrimary),
                ),
              ),
            ),
          ),
          kHeight15
        ],
      ),
    );
  }
}
