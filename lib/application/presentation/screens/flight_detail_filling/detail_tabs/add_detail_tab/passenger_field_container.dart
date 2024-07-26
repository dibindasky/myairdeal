import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/widgets/custom_check_box.dart';
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
  final formKey = GlobalKey<FormState>();
  int gender = 0;
  bool savePassenger = false;
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
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            margin: const EdgeInsets.only(top: 5, right: 5),
            decoration: BoxDecoration(
              border: Border.all(color: kBlue),
              borderRadius: kRadius10,
              color: kBlueLightShade,
            ),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  kHeight15,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Traveler Name',
                          style: textStyle1.copyWith(
                              fontSize: 15.sp, fontWeight: FontWeight.w500),
                        ),
                      ),
                      kWidth10,
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.savedPassengers, arguments: {
                              'index': widget.index,
                              'type': widget.travellerType
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 2.w),
                            decoration: BoxDecoration(
                                border: Border.all(color: kBlue),
                                borderRadius: kRadius10),
                            child: Text(
                              'Select From history',
                              style: textThinStyle1.copyWith(color: kBlue),
                            ),
                          ),
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
                          widget.travellerType == 'ADULT' ? 3 : 2,
                          (index) => CustomRadioButton(
                            selected: gender == index,
                            onChanged: () {
                              // travelController.changeGenderType(index);
                              setState(() {
                                gender = index;
                              });
                            },
                            text: widget.travellerType == 'ADULT'
                                ? travelController.genderList[index]
                                : travelController.genderListchild[index],
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
                    validate: Validate.notNull,
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
                    validate: Validate.notNull,
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
                  GestureDetector(
                    onTap: () async {
                      final date = Get.find<FlightSortController>()
                          .multiCityDepartureDate
                          .first!;
                      final selectedDate = await showDatePicker(
                        context: context,
                        firstDate: date.subtract(widget.travellerType == 'ADULT'
                            ? const Duration(days: 365 * 150)
                            : widget.travellerType == 'CHILD'
                                ? const Duration(days: 365 * 12)
                                : const Duration(days: 365 * 2)),
                        lastDate: date.subtract(widget.travellerType == 'ADULT'
                            ? Get.find<FlightSortController>()
                                        .passengerFareType
                                        .value ==
                                    2
                                ? const Duration(days: 365 * 60)
                                : const Duration(days: 365 * 12)
                            : widget.travellerType == 'CHILD'
                                ? const Duration(days: 365 * 2)
                                : const Duration(days: 365 * 0)),
                      );
                      dateOfBirthController.text =
                          DateFormating.getDateApi(selectedDate);
                      setState(() {});
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: kRadius10,
                          border: Border.all(color: kGrey, width: 0.5)),
                      child: Row(
                        children: [
                          Text(dateOfBirthController.text == ''
                              ? 'DOB'
                              : dateOfBirthController.text),
                          const Spacer(),
                          const Icon(Icons.calendar_month)
                        ],
                      ),
                    ),
                  ),
                  kHeight5,
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomCheckbox(
                          value: savePassenger,
                          onChanged: (value) {
                            setState(() {
                              savePassenger = value ?? false;
                            });
                          },
                          activeColor: kBluePrimary,
                        ),
                        const Text('Save Details'),
                        kWidth20,
                        GestureDetector(
                          onTap: () {
                            // add passenger details
                            if (formKey.currentState!.validate()) {
                              travelController.addPassengerDetail(
                                  widget.index,
                                  TravellerInfo(
                                      dob: dateOfBirthController.text,
                                      fN: firstNameController.text,
                                      lN: lastNameController.text,
                                      ti: widget.travellerType == 'ADULT'
                                          ? travelController.genderList[gender]
                                          : travelController
                                              .genderListchild[gender],
                                      pt: widget.travellerType),
                                  savePassenger);
                              Get.back();
                            }
                          },
                          child: Obx(() {
                            return Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 5.h),
                              decoration: BoxDecoration(
                                  boxShadow: boxShadow3,
                                  color: travelController
                                              .passengerDetails[widget.index] !=
                                          null
                                      ? kBluePrimary
                                      : kWhite,
                                  border: Border.all(
                                      color: travelController.passengerDetails[
                                                  widget.index] !=
                                              null
                                          ? kWhite
                                          : kBluePrimary),
                                  borderRadius: kRadius10),
                              child: Text(
                                travelController
                                            .passengerDetails[widget.index] !=
                                        null
                                    ? 'Update'
                                    : 'Add',
                                style: textStyle1.copyWith(
                                    color: travelController.passengerDetails[
                                                widget.index] !=
                                            null
                                        ? kWhite
                                        : kBluePrimary),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                  kHeight15
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: kRadius50,
                    color: kWhite,
                    boxShadow: boxShadow2Blue),
                child: const Icon(Icons.close, color: kBluePrimary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
