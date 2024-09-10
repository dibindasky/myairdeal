import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/widgets/nationality_drop_down.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/utils/formating/text_input_formating.dart';
import 'package:myairdeal/application/presentation/utils/show_dailog/show_dailog.dart';
import 'package:myairdeal/application/presentation/utils/validators/validators.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/traveller_info.dart';

class AddOrUpdatePassenger extends StatefulWidget {
  const AddOrUpdatePassenger({super.key, this.passengers});
  final TravellerInfo? passengers;
  @override
  State<AddOrUpdatePassenger> createState() => _AddOrUpdatePassengerState();
}

class _AddOrUpdatePassengerState extends State<AddOrUpdatePassenger> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController passportNumberController = TextEditingController();
  TextEditingController expiryDController = TextEditingController();
  TextEditingController pIDController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  TravellerInfo? passengers;
  @override
  void initState() {
    passengers = Get.arguments as TravellerInfo?;
    super.initState();
    final travelerController = Get.find<TravellerController>();
    travelerController.genderType.value = passengers?.pt == 'ADULT'
        ? travelerController.genderList.indexWhere(
            (element) => element.toLowerCase() == passengers?.ti?.toLowerCase())
        : travelerController.genderListchild.indexWhere((element) =>
            element.toLowerCase() == passengers?.ti?.toLowerCase());
    travelerController.selectedCoutryCode.value =
        passengers != null && passengers!.pN != null
            ? passengers!.pN!.toUpperCase()
            : 'IN';
    log('id ${passengers?.id}');
    firstNameController.text = passengers?.fN ?? '';
    lastNameController.text = passengers?.lN ?? '';
    dateOfBirthController.text = passengers?.dob ?? '';
    passportNumberController.text = passengers?.pNum ?? '';
    expiryDController.text = passengers?.eD ?? '';
    pIDController.text = passengers?.pid ?? '';
  }

  bool showError = false;
  bool showPassportExpiryError = false;
  final bookigController = Get.find<BookingController>();
  DateTime selectedIssueDate = DateTime.now();
  bool isAdult = true;
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
    final travelerController = Get.find<TravellerController>();
    final themeController = Get.find<ThemeController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailAppBar(
              heading: 'Update Passenger',
              backButton: true,
              backOntap: () {
                Get.back();
                travelerController.clearTextFields();
              },
              topGap: kHeight10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    kHeight15,
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: themeController.secondaryDarkColor),
                        borderRadius: kRadius10,
                        color: kWhite,
                      ),
                      child: Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            passengers?.pt == 'ADULT' ? 3 : 2,
                            (index) => CustomRadioButton(
                              selected:
                                  index == travelerController.genderType.value,
                              onChanged: () {
                                travelerController.changeGenderType(index);
                              },
                              text: passengers?.pt == 'ADULT'
                                  ? travelerController.genderList[index]
                                  : travelerController.genderListchild[index],
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Date Of Birth', style: textThinStyle1),
                        kHeight5,
                        GestureDetector(
                          onTap: () async {
                            FocusScope.of(context).unfocus();

                            // Parse the date from the controller or set a default if it's empty
                            DateTime? currentDate =
                                dateOfBirthController.text.isEmpty
                                    ? DateTime.now()
                                    : DateFormating.convertStringToDateTime(
                                        dateOfBirthController.text);

                            // Define age limits for ADULT and child
                            const adultAge = 18;
                            const childAge = 12;

                            // Set the starting date based on passenger type (adult or child)
                            final DateTime firstDate = passengers?.pt == 'ADULT'
                                ? DateTime.now().subtract(const Duration(
                                    days: 365 * adultAge)) // 18 years back
                                : DateTime.now().subtract(const Duration(
                                    days: 365 * childAge)); // 12 years back

                            // Set last date as current date
                            final DateTime lastDate = DateTime.now();

                            // Show the date picker
                            final DateTime? selectedDate = await showDatePicker(
                              context: context,
                              initialDate: currentDate ??
                                  lastDate, // Default to current date if no selection
                              firstDate:
                                  firstDate, // Start at either 18 or 12 years ago
                              lastDate: lastDate, // Limit to today's date
                            );

                            // If a date is selected, update the text in the controller
                            if (selectedDate != null) {
                              dateOfBirthController.text =
                                  DateFormating.getDateApi(selectedDate);
                              setState(() {}); // Trigger UI update
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 10.h),
                            decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: kRadius15,
                              border: Border.all(color: kGrey, width: 0.5),
                            ),
                            child: Row(
                              children: [
                                Text(dateOfBirthController.text.isEmpty
                                    ? 'DOB'
                                    : dateOfBirthController.text),
                                const Spacer(),
                                const Icon(Icons.calendar_month),
                              ],
                            ),
                          ),
                        ),
                        kHeight5,
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Passport Number', style: textThinStyle1),
                        kHeight5,
                        CustomTextField(
                          validator: (value) {
                            if (value != null && value.isNotEmpty) {
                              if (!isValidIndianPassportNumber(value)) {
                                return 'Passport number is not valid';
                              }
                            }
                            return null;
                          },
                          controller: passportNumberController,
                          validate: Validate.passportNumber,
                          textCapitalization: TextCapitalization.characters,
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
                          onTapOutside: () => FocusScope.of(context).unfocus(),
                          hintText: 'Passport Number',
                          fillColor: kWhite,
                        ),
                        kHeight5,
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Passport Issue Date', style: textThinStyle1),
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
                                border: Border.all(color: kGrey, width: 0.5)),
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
                        showEmptyError(showError && pIDController.text == ''),
                        kHeight5,
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Passport Expiry Date', style: textThinStyle1),
                        kHeight5,
                        GestureDetector(
                          onTap: () async {
                            final date = bookigController.reviewedDetail?.value
                                        .tripInfos?.last.sI?.last.at ==
                                    null
                                ? DateFormating.convertStringToDateTime(
                                    pIDController.text)
                                : DateTime.parse(bookigController.reviewedDetail
                                        ?.value.tripInfos?.last.sI?.last.at ??
                                    pIDController.text);
                            final selectedDate = await showDatePicker(
                              context: context,
                              initialDate: expiryDController.text == ''
                                  ? null
                                  : DateFormating.convertStringToDateTime(
                                      expiryDController.text),
                              firstDate: date == null
                                  ? DateTime.now()
                                  : date.add(const Duration(days: 30)),
                              lastDate: DateTime(
                                  selectedIssueDate.year + (isAdult ? 10 : 5),
                                  selectedIssueDate.month,
                                  selectedIssueDate.day),
                            );
                            if (selectedDate != null) {
                              expiryDController.text =
                                  DateFormating.getDateByDayMonthYear(
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
                                border: Border.all(color: kGrey, width: 0.5)),
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
                                (showError && expiryDController.text == ''),
                            showPassportExpiryError
                                ? 'Passport should not expire within a months from travel date. '
                                : null),
                        kHeight5,
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nationality (Country code)',
                            style: textThinStyle1),
                        kHeight5,
                        NationalityCodeDropDown()
                      ],
                    ),
                    kHeight20,
                    Center(
                      child: Obx(() => !travelerController.updateLoading.value
                          ? EventButton(
                              text: 'Update',
                              onTap: () {
                                if (dateOfBirthController.text.isEmpty) {
                                  showSnackbar(context,
                                      message: 'Please Fill Date of Birth');
                                  return;
                                }
                                if (formKey.currentState!.validate()) {
                                  travelerController.updatePassenger(
                                      travellerID: passengers?.id ?? '',
                                      traveller: TravellerInfo(
                                        dob: dateOfBirthController.text == ''
                                            ? null
                                            : dateOfBirthController.text,
                                        fN: firstNameController.text,
                                        lN: lastNameController.text,
                                        ti: passengers?.pt == 'ADULT'
                                            ? travelerController.genderList[
                                                travelerController
                                                    .genderType.value]
                                            : travelerController
                                                    .genderListchild[
                                                travelerController
                                                    .genderType.value],
                                        pt: passengers?.pt,
                                        eD: expiryDController.text == ''
                                            ? null
                                            : DateFormating.getDateApi(
                                                DateTime.parse(
                                                    expiryDController.text)),
                                        pNum:
                                            passportNumberController.text == ''
                                                ? null
                                                : passportNumberController.text,
                                        pid: pIDController.text == ''
                                            ? null
                                            : DateFormating.getDateApi(
                                                DateTime.parse(
                                                    pIDController.text)),
                                        pN: travelerController
                                                    .selectedCoutryCode.value ==
                                                ''
                                            ? null
                                            : travelerController
                                                .selectedCoutryCode.value,
                                      ));
                                }
                              })
                          : CircularProgressIndicator(
                              color: themeController.secondaryColor)),
                    ),
                    kHeight20
                  ],
                ),
              ),
            ),
          ],
        ),
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
