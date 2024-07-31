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
import 'package:myairdeal/domain/models/booking/review_flight_detail_price/dob.dart';
import 'package:myairdeal/domain/models/booking/review_flight_detail_price/pcs.dart';

class DetailContainer extends StatefulWidget {
  const DetailContainer(
      {super.key,
      required this.index,
      required this.travellerType,
      this.pcs,
      this.dob});

  final int index;
  final String travellerType;
  final Pcs? pcs;
  final Dob? dob;

  @override
  State<DetailContainer> createState() => _DetailContainerState();
}

class _DetailContainerState extends State<DetailContainer> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController passportNumberController = TextEditingController();
  TextEditingController passengerNationalityController =
      TextEditingController();
  TextEditingController expiryDController = TextEditingController();
  TextEditingController pIDController = TextEditingController();
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
      passportNumberController.text = model.pNum ?? '';
      passengerNationalityController.text = model.pN ?? '';
      expiryDController.text = model.eD ?? '';
      pIDController.text = model.pid ?? '';
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
                  (widget.pcs != null && widget.pcs!.dobe == true) ||
                          (widget.dob != null &&
                              ((widget.dob!.adobr == true &&
                                      widget.travellerType == 'ADULT') ||
                                  ((widget.dob!.cdobr == true &&
                                          widget.travellerType == 'CHILD') ||
                                      (widget.dob!.idobr == true &&
                                          widget.travellerType == 'INFANT'))))
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Date Of Birth', style: textThinStyle1),
                            kHeight5,
                            GestureDetector(
                              onTap: () async {
                                final date = Get.find<FlightSortController>()
                                    .multiCityDepartureDate
                                    .first!;
                                final selectedDate = await showDatePicker(
                                  context: context,
                                  firstDate: date
                                      .subtract(widget.travellerType == 'ADULT'
                                          ? const Duration(days: 365 * 150)
                                          : widget.travellerType == 'CHILD'
                                              ? const Duration(days: 365 * 12)
                                              : const Duration(days: 365 * 2)),
                                  lastDate: date.subtract(
                                      widget.travellerType == 'ADULT'
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
                                    border:
                                        Border.all(color: kGrey, width: 0.5)),
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
                          ],
                        )
                      : kEmpty,
                  widget.pcs != null
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            widget.pcs!.pm == true
                                ? Column(
                                    children: [
                                      Text('Passport Number',
                                          style: textThinStyle1),
                                      kHeight5,
                                      CustomTextField(
                                        maxLength: 8,
                                        controller: passportNumberController,
                                        validate: Validate.passportNumber,
                                        isBorder: true,
                                        borderRadius: 14,
                                        enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                const BorderSide(width: .3),
                                            borderRadius: kRadius15),
                                        onTapOutside: () =>
                                            FocusScope.of(context).unfocus(),
                                        hintText: 'Enter Your Passport Number',
                                        fillColor: kWhite,
                                      ),
                                      kHeight5,
                                    ],
                                  )
                                : kEmpty,
                            widget.pcs!.pid == true
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Passport Issue Date',
                                          style: textThinStyle1),
                                      kHeight5,
                                      GestureDetector(
                                        onTap: () async {
                                          final date = DateTime.now();
                                          final selectedDate =
                                              await showDatePicker(
                                            context: context,
                                            firstDate: date.subtract(
                                                const Duration(
                                                    days: 365 * 150)),
                                            lastDate: date.subtract(
                                                const Duration(days: 365 * 0)),
                                          );
                                          pIDController.text =
                                              DateFormating.getDateApi(
                                                  selectedDate);
                                          setState(() {});
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.w, vertical: 10.h),
                                          decoration: BoxDecoration(
                                              color: kWhite,
                                              borderRadius: kRadius10,
                                              border: Border.all(
                                                  color: kGrey, width: 0.5)),
                                          child: Row(
                                            children: [
                                              Text(pIDController.text == ''
                                                  ? 'PID'
                                                  : pIDController.text),
                                              const Spacer(),
                                              const Icon(Icons.calendar_month)
                                            ],
                                          ),
                                        ),
                                      ),
                                      kHeight5,
                                    ],
                                  )
                                : kEmpty,
                            widget.pcs!.pped == true
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Passport Expiry Date',
                                          style: textThinStyle1),
                                      kHeight5,
                                      GestureDetector(
                                        onTap: () async {
                                          final date = DateTime.now();
                                          final selectedDate =
                                              await showDatePicker(
                                            context: context,
                                            firstDate: date,
                                            lastDate: date.add(
                                                const Duration(days: 365 * 10)),
                                          );

                                          if (selectedDate != null) {
                                            expiryDController.text =
                                                DateFormating.getDateApi(
                                                    selectedDate);
                                            setState(() {});
                                          }
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.w, vertical: 10.h),
                                          decoration: BoxDecoration(
                                              color: kWhite,
                                              borderRadius: kRadius10,
                                              border: Border.all(
                                                  color: kGrey, width: 0.5)),
                                          child: Row(
                                            children: [
                                              Text(expiryDController.text == ''
                                                  ? 'PED'
                                                  : expiryDController.text),
                                              const Spacer(),
                                              const Icon(Icons.calendar_month)
                                            ],
                                          ),
                                        ),
                                      ),
                                      kHeight5,
                                    ],
                                  )
                                : kEmpty,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Passenger Nationality',
                                    style: textThinStyle1),
                                kHeight5,
                                CustomTextField(
                                  controller: passengerNationalityController,
                                  validate: Validate.notNull,
                                  isBorder: true,
                                  borderRadius: 14,
                                  textCapitalization:
                                      TextCapitalization.characters,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(width: .3),
                                      borderRadius: kRadius15),
                                  onTapOutside: () =>
                                      FocusScope.of(context).unfocus(),
                                  hintText: 'Enter Your Nationality',
                                  fillColor: kWhite,
                                ),
                              ],
                            ),
                          ],
                        )
                      : kEmpty,
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
                                  dob: dateOfBirthController.text == ''
                                      ? null
                                      : dateOfBirthController.text,
                                  fN: firstNameController.text,
                                  lN: lastNameController.text,
                                  ti: widget.travellerType == 'ADULT'
                                      ? travelController.genderList[gender]
                                      : travelController
                                          .genderListchild[gender],
                                  pt: widget.travellerType,
                                  eD: expiryDController.text,
                                  pNum: passportNumberController.text,
                                  pid: pIDController.text,
                                  pN: passengerNationalityController.text,
                                ),
                                savePassenger,
                              );
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
