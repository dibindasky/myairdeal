import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/widgets/nationality_drop_down.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/utils/formating/text_input_formating.dart';
import 'package:myairdeal/application/presentation/widgets/custom_check_box.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/traveller_info.dart';
import 'package:myairdeal/domain/models/booking/review_flight_detail_price/dob.dart';
import 'package:myairdeal/domain/models/booking/review_flight_detail_price/pcs.dart';

class DetailContainer extends StatefulWidget {
  const DetailContainer({
    super.key,
    required this.index,
    required this.travellerType,
    this.pcs,
    this.dob,
  });

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
  TextEditingController expiryDController = TextEditingController();
  TextEditingController pIDController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  int gender = 0;
  bool savePassenger = false;
  final travelController = Get.find<TravellerController>();
  final bookigController = Get.find<BookingController>();
  String lastTraveldate = '';
  bool showPassportDetails = false;
  bool isAdult = true;
  bool showError = false;
  bool showPassportExpiryError = false;

  @override
  void initState() {
    final model = travelController.passengerDetails[widget.index];
    if (model != null) {
      firstNameController.text = model.fN ?? '';
      lastNameController.text = model.lN ?? '';
      dateOfBirthController.text = model.dob ?? '';
      passportNumberController.text = model.pNum ?? '';
      expiryDController.text = model.eD ?? '';
      pIDController.text = model.pid ?? '';
      travelController.selectedCoutryCode.value = model.pN ?? '';
      if (widget.pcs != null) {
        showPassportDetails = true;
      }
    }
    super.initState();
  }

  DateTime selectedIssueDate = DateTime.now();

  Future<void> selectIssueDate(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: pIDController.text == ''
          ? null
          : DateFormating.convertStringToDateTime(pIDController.text),
      firstDate: DateTime.now().subtract(const Duration(days: 365 * 10)),
      lastDate: DateTime.now(),
    );
    if (selectedDate != null) {
      pIDController.text = DateFormating.getDateApi(selectedDate);
      setState(() {
        selectedIssueDate = selectedDate;
        setExpiryDate();
      });
    }
  }

  void setExpiryDate() {
    expiryDController.text = '';
    // Calculate the expiry date
    final DateTime calculatedExpiryDate = DateTime(
            selectedIssueDate.year + (isAdult ? 10 : 5),
            selectedIssueDate.month,
            selectedIssueDate.day)
        .subtract(const Duration(days: 1));
    // Retrieve and parse the last travel date
    final String lastTravelDateString =
        bookigController.reviewedDetail?.value.tripInfos?.last.sI?.last.at ??
            '';
    if (lastTravelDateString.isEmpty) return;
    DateTime lastTravelDate;
    try {
      lastTravelDate = DateTime.parse(lastTravelDateString);
    } catch (e) {
      return;
    }
    // Calculate the minimum expiry date (30 days after the last travel date)
    final DateTime minExpiryDate = lastTravelDate.add(const Duration(days: 30));
    if (calculatedExpiryDate.isAfter(minExpiryDate)) {
      expiryDController.text = DateFormating.getDateApi(calculatedExpiryDate);
      setState(() {
        showPassportExpiryError = false;
      });
    } else {
      setState(() {
        showPassportExpiryError = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            margin: const EdgeInsets.only(top: 5, right: 5),
            decoration: BoxDecoration(
              border: Border.all(color: kBlue),
              borderRadius: kRadius10,
              color: themeController.secondaryLightColor,
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
                              'type': widget.travellerType,
                              'pcs': (widget.pcs != null &&
                                  widget.pcs!.dobe == true),
                              'use_dob': (widget.pcs != null &&
                                      widget.pcs!.dobe == true) ||
                                  (widget.dob != null &&
                                      ((widget.dob!.adobr == true &&
                                              widget.travellerType ==
                                                  'ADULT') ||
                                          (widget.dob!.cdobr == true &&
                                              widget.travellerType ==
                                                  'CHILD') ||
                                          (widget.dob!.idobr == true &&
                                              widget.travellerType ==
                                                  'INFANT')))
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 2.w),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: themeController.primaryColor),
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
                    inputFormatters: [AlphabeticInputFormatter()],
                    isBorder: true,
                    borderRadius: 14,
                    textCapitalization: TextCapitalization.words,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1.5, color: themeController.primaryColor),
                        borderRadius: kRadius15),
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
                    inputFormatters: [AlphabeticInputFormatter()],
                    borderRadius: 14,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1.5, color: themeController.primaryColor),
                        borderRadius: kRadius15),
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
                                  (widget.dob!.cdobr == true &&
                                      widget.travellerType == 'CHILD') ||
                                  (widget.dob!.idobr == true &&
                                      widget.travellerType == 'INFANT')))
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Date Of Birth', style: textThinStyle1),
                            kHeight5,
                            GestureDetector(
                              onTap: () async {
                                FocusScope.of(context).unfocus();
                                final date = Get.find<FlightSortController>()
                                    .multiCityDepartureDate
                                    .first!;
                                final selectedDate = await showDatePicker(
                                  context: context,
                                  initialDate: dateOfBirthController.text == ''
                                      ? null
                                      : DateFormating.convertStringToDateTime(
                                          dateOfBirthController.text),
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
                                showPassportDetails = true;
                                isAdult = DateFormating.isAdult(
                                    dateOfBirthController.text);
                                setState(() {});
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 10.h),
                                decoration: BoxDecoration(
                                    color: kWhite,
                                    borderRadius: kRadius15,
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
                  widget.pcs != null && showPassportDetails
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // widget.pcs!.pm == true ?
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Passport Number', style: textThinStyle1),
                                kHeight5,
                                CustomTextField(
                                  controller: passportNumberController,
                                  validate: Validate.passportNumber,
                                  textCapitalization:
                                      TextCapitalization.characters,
                                  isBorder: true,
                                  borderRadius: 14,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1.5,
                                          color: themeController.primaryColor),
                                      borderRadius: kRadius15),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: .3,
                                          color: themeController.primaryColor),
                                      borderRadius: kRadius15),
                                  onTapOutside: () =>
                                      FocusScope.of(context).unfocus(),
                                  hintText: 'Passport Number',
                                  fillColor: kWhite,
                                ),
                                kHeight5,
                              ],
                            ),
                            // : kEmpty,
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
                                          selectIssueDate(context);
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.w, vertical: 10.h),
                                          decoration: BoxDecoration(
                                              color: kWhite,
                                              borderRadius: kRadius15,
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
                                      showEmptyError(showError &&
                                          pIDController.text == ''),
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
                                          final date = bookigController
                                                      .reviewedDetail
                                                      ?.value
                                                      .tripInfos
                                                      ?.last
                                                      .sI
                                                      ?.last
                                                      .at ==
                                                  null
                                              ? DateFormating
                                                  .convertStringToDateTime(
                                                      pIDController.text)
                                              : DateTime.parse(bookigController
                                                      .reviewedDetail
                                                      ?.value
                                                      .tripInfos
                                                      ?.last
                                                      .sI
                                                      ?.last
                                                      .at ??
                                                  pIDController.text);
                                          final selectedDate =
                                              await showDatePicker(
                                            context: context,
                                            initialDate: expiryDController
                                                        .text ==
                                                    ''
                                                ? null
                                                : DateFormating
                                                    .convertStringToDateTime(
                                                        expiryDController.text),
                                            firstDate: date == null
                                                ? DateTime.now()
                                                : date.add(
                                                    const Duration(days: 30)),
                                            lastDate: DateTime(
                                                selectedIssueDate.year +
                                                    (isAdult ? 10 : 5),
                                                selectedIssueDate.month,
                                                selectedIssueDate.day),
                                          );
                                          if (selectedDate != null) {
                                            expiryDController.text =
                                                DateFormating
                                                    .getDateByDayMonthYear(
                                                        selectedDate);

                                            setState(() {});
                                          }
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.w, vertical: 10.h),
                                          decoration: BoxDecoration(
                                              color: kWhite,
                                              borderRadius: kRadius15,
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
                                      showEmptyError(
                                          showPassportExpiryError ||
                                              (showError &&
                                                  expiryDController.text == ''),
                                          showPassportExpiryError
                                              ? 'Passport should not expire within a months from travel date. '
                                              : null),
                                      kHeight5,
                                    ],
                                  )
                                : kEmpty,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Nationality (Country code)',
                                    style: textThinStyle1),
                                kHeight5,
                                NationalityCodeDropDown()
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
                          activeColor: themeController.primaryColor,
                        ),
                        const Text('Save Details'),
                        kWidth20,
                        GestureDetector(
                          onTap: () {
                            if (!formKey.currentState!.validate()) {
                              return;
                            } else if (widget.pcs != null &&
                                (((widget.pcs?.pid ?? false) &&
                                        pIDController.text == '') ||
                                    (widget.pcs?.pped ?? false) &&
                                        expiryDController.text == '')) {
                              setState(() {
                                showError = true;
                              });
                              return;
                            }
                            // add passenger details
                            else {
                              setState(() {
                                showError = false;
                              });
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
                                  eD: expiryDController.text == ''
                                      ? null
                                      : DateFormating.getDateApi(DateTime.parse(
                                          expiryDController.text)),
                                  pNum: passportNumberController.text == ''
                                      ? null
                                      : passportNumberController.text,
                                  pid: pIDController.text == ''
                                      ? null
                                      : DateFormating.getDateApi(
                                          DateTime.parse(pIDController.text)),
                                  pN: travelController
                                              .selectedCoutryCode.value ==
                                          ''
                                      ? null
                                      : travelController
                                          .selectedCoutryCode.value,
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
                                      ? themeController.primaryColor
                                      : kWhite,
                                  border: Border.all(
                                      color: travelController.passengerDetails[
                                                  widget.index] !=
                                              null
                                          ? kWhite
                                          : themeController.primaryColor),
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
                                        : themeController.primaryColor),
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
                    boxShadow: boxShadow2),
                child: Icon(Icons.close, color: themeController.primaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer showEmptyError(bool showError, [String? error]) {
    return AnimatedContainer(
      height: !showError ? 0 : null,
      alignment: Alignment.centerLeft,
      duration: const Duration(milliseconds: 300),
      child: Text(error ?? 'This field cannot be empty',
          style: textThinStyle1.copyWith(color: kDarkRed, fontSize: 12.sp)),
    );
  }
}
