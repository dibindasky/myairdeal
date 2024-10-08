import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/bottom_calender_date_picker.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/choose_person_class_bottom_Sheet.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/place_selection.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/widgets/custom_check_box.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/radio_button_custom.dart';
import 'package:myairdeal/application/presentation/widgets/text_icon_button_custom.dart';

class FlightSearchCardHome extends StatelessWidget {
  const FlightSearchCardHome({
    super.key,
    this.fromEdit = false,
  });

  final bool fromEdit;

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return AnimatedContainer(
      margin:fromEdit?null: EdgeInsets.symmetric(horizontal: 16.w),
      duration: const Duration(milliseconds: 300),
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      decoration: BoxDecoration(
          borderRadius: kRadius15, color: kWhite, boxShadow: boxShadow1),
      child: Obx(() {
        final controller = Get.find<FlightSortController>();
        return SingleChildScrollView(
          child: Column(
            children: [
              // fromEdit
              //     ? kEmpty
              //     : 
                  FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          3,
                          (index) => Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.h),
                            child: CustomRadioButton(
                              selected: index == controller.tripType.value,
                              onChanged: () {
                                controller.changeTripType(index);
                              },
                              text: controller.tripTypes[index],
                            ),
                          ),
                        ),
                      ),
                    ),
              kHeight10,
              controller.tripType.value == 2
                  ? // multi city
                  const MultiCitySelection()
                  : // one way and round trip
                  const OneWayAndRoundTrip(),
              kHeight10,
              // date selection index 0 is departure and index 1 is return
              Obx(() {
                return Column(
                  children: List.generate(
                    controller.tripType.value != 2
                        ? controller.tripType.value + 1
                        : 0,
                    (index) => TextIconButtonOutlinedCustom(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => DatePickingBottomSheet(
                            focusedDay: index == 0
                                ? DateTime.now()
                                : controller.depatureDate.value,
                            initialDate: index == 0
                                ? DateTime.now()
                                : controller.depatureDate.value,
                            onPressed: (value) {
                              if (index == 1) {
                                controller.changeRetunDate(value);
                              } else {
                                controller.changeDepartureDate(value);
                              }
                            },
                          ),
                        );
                      },
                      texthead: index == 0 ? 'Departure Date' : 'Return Date',
                      spacer: kWidth10,
                      mainAxisAlignment: MainAxisAlignment.start,
                      first: Icon(Icons.calendar_month_rounded,
                          color: themeController.secondaryColor),
                      second: Obx(() {
                        return Text(DateFormating.getDate(index == 0
                            ? controller.depatureDate.value
                            : controller.returnDate.value));
                      }),
                    ),
                  ),
                );
              }),
              kHeight10,
              // travellers and class selection
              Obx(() {
                return TextIconButtonOutlinedCustom(
                    mainAxisAlignment: MainAxisAlignment.start,
                    first: Icon(Iconsax.personalcard,
                        color: themeController.secondaryColor),
                    second: Row(
                      children: [
                        Text(
                            '${controller.adultCount.value + controller.childrenCount.value + controller.infantCount.value},',
                            style: textHeadStyle1),
                        kWidth5,
                        Text(controller.classType.value, style: textThinStyle1)
                      ],
                    ),
                    spacer: kWidth10,
                    onTap: () {
                      showBottomSheet(
                        context: context,
                        builder: (context) => const PersonClassBottomSheet(),
                      );
                    },
                    texthead: 'Travellers & Class');
              }),
              kHeight10,
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Passenger Fare Type', style: textStyle1)),
              Obx(() {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    controller.passengerFareTypes.length - 1,
                    (index) => Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomCheckbox(
                              value: controller.passengerFareType.value ==
                                  index + 1,
                              onChanged: (value) {
                                controller.changePassengerFareType(index + 1);
                              }),
                          Text(controller.passengerFareTypes[index + 1])
                        ]),
                  ),
                );
              }),
              Obx(() {
                return Align(
                  alignment: Alignment.topLeft,
                  child: AnimatedContainer(
                    height: controller.passengerFareType.value != 0 ? 15.h : 0,
                    duration: const Duration(milliseconds: 300),
                    child: FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            '* ',
                            style: TextStyle(color: kRed),
                          ),
                          Text(
                            'Can\'t add Child or Infant with special fare',
                            style: textThinStyle1.copyWith(color: kGreyDark),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
              kHeight5,
              Obx(() {
                return EventButton(
                    color: controller.searchValidated.value
                        ? ((themeController.theme.value == AppTheme.blue)
                            ? themeController.secondaryColor
                            : themeController.primaryColor)
                        : kGrey,
                    text: 'Search Flights',
                    onTap: () {
                      if (controller.searchValidated.value) {
                        controller.searchFlights(false, context, fromEdit);
                        Get.find<BookingController>().endTimer();
                      }
                    },
                    width: double.infinity);
              })
            ],
          ),
        );
      }),
    );
  }
}
