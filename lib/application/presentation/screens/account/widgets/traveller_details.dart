import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/widgets/nationality_drop_down.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/traveler_widgets/saved_detailcard.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/utils/formating/text_input_formating.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/traveller_info.dart';
import '../../../utils/shimmer/horizontal_shimmer.dart';

class TravellerDetails extends StatelessWidget {
  const TravellerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    final travelerController = Get.find<TravellerController>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      travelerController.getAllPAssengers();
    });
    return Scaffold(
      body: Column(
        children: [
          DetailAppBar(
              heading: 'Saved Passengers',
              backButton: true,
              backOntap: () {
                Get.back();
                travelerController.clearTextFields();
              },
              topGap: kHeight10),
          kHeight5,
          Obx(() {
            // Check if passengers list is null
            if (travelerController.isLoading.value) {
              return HorizontalShimmerSkeleton(
                paddingHorizontal: 15.h,
                scrollDirection: Axis.vertical,
                itemCount: 3,
              );
            }
            // Check if passengers list is empty
            if (travelerController.allPassengers.isEmpty) {
              return SizedBox(
                  height: 400.h,
                  child: const Center(
                    child: Text('No Passengers Found.'),
                  ));
            }
            // Build the ListView with passengers data
            return Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  travelerController.getAllPAssengers();
                },
                child: ListView.separated(
                  padding: EdgeInsets.only(bottom: 14.w),
                  itemCount: travelerController.allPassengers.length,
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, index) => kHeight10,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        travelerController.addPassengerDetail(
                            index,
                            travelerController.allPassengersBasedOnType[index],
                            false);
                        Get.back();
                        Get.back();
                      },
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.addUpdateTravellerDetails,
                              arguments:
                                  travelerController.allPassengers[index]);
                        },
                        child: SavedDetailsCard(
                            passengers:
                                travelerController.allPassengers[index]),
                      ),
                    );
                  },
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  kHeight15,
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: themeController.secondaryDarkColor),
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
                          final selectedDate = await showDatePicker(
                            context: context,
                            initialDate: dateOfBirthController.text == ''
                                ? null
                                : DateFormating.convertStringToDateTime(
                                    dateOfBirthController.text),
                            firstDate: DateTime.now(),
                            lastDate: DateTime.now(),
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
                              borderRadius: kRadius15,
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
                    ],
                  ),
                  Column(
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
                            onTapOutside: () =>
                                FocusScope.of(context).unfocus(),
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
                              final date = bookigController.reviewedDetail
                                          ?.value.tripInfos?.last.sI?.last.at ==
                                      null
                                  ? DateFormating.convertStringToDateTime(
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
                    ],
                  ),
                  kHeight20,
                  Center(
                    child: Obx(() => !travelerController.updateLoading.value
                        ? EventButton(
                            text: 'Update',
                            onTap: () {
                              travelerController.updatePassenger(
                                  traveller: TravellerInfo(
                                dob: dateOfBirthController.text == ''
                                    ? null
                                    : dateOfBirthController.text,
                                fN: firstNameController.text,
                                lN: lastNameController.text,
                                ti: passengers?.pt == 'ADULT'
                                    ? travelerController.genderList[
                                        travelerController.genderType.value]
                                    : travelerController.genderListchild[
                                        travelerController.genderType.value],
                                pt: passengers?.pt,
                                eD: expiryDController.text == ''
                                    ? null
                                    : DateFormating.getDateApi(
                                        DateTime.parse(expiryDController.text)),
                                pNum: passportNumberController.text == ''
                                    ? null
                                    : passportNumberController.text,
                                pid: pIDController.text == ''
                                    ? null
                                    : DateFormating.getDateApi(
                                        DateTime.parse(pIDController.text)),
                                pN: travelerController
                                            .selectedCoutryCode.value ==
                                        ''
                                    ? null
                                    : travelerController
                                        .selectedCoutryCode.value,
                              ));
                            })
                        : CircularProgressIndicator(
                            color: themeController.secondaryColor)),
                  ),
                  kHeight20
                ],
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
