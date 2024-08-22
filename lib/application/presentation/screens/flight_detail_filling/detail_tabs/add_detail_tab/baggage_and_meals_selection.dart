import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/widgets/bottom_button.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/ssr_info.dart';
import 'package:myairdeal/domain/models/booking/review_flight_detail_price/trip_info.dart';

class BaggageAndMealsSelection extends StatelessWidget {
  const BaggageAndMealsSelection({super.key});

  @override
  Widget build(BuildContext context) {
    final bookingController = Get.find<BookingController>();
    return Obx(() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Add baggage and Meal', style: textStyle1),
          kHeight10,
          Column(
            // generate a list according to the number of trips
            children: List.generate(
              bookingController.reviewedDetail?.value.tripInfos?.length ?? 0,
              (tripIndex) => Column(
                // generate a list of containers according to the numner of flights in the trip
                children: List.generate(
                  bookingController.reviewedDetail?.value.tripInfos?[tripIndex]
                          .sI?.length ??
                      0,
                  // meals andd baggage selection for each passenger
                  (siIndex) => SelectionTileMealsAndBaggage(
                      siIndex: siIndex, tripIndex: tripIndex),
                ),
              ),
            ),
          ),
          kHeight20,
          const BottomButton(),
          kHeight15
        ],
      );
    });
  }
}

class SelectionTileMealsAndBaggage extends StatelessWidget {
  const SelectionTileMealsAndBaggage({
    super.key,
    required this.siIndex,
    required this.tripIndex,
  });

  final int tripIndex;
  final int siIndex;

  @override
  Widget build(BuildContext context) {
    final searchController = Get.find<FlightSortController>();
    final travellerController = Get.find<TravellerController>();
    final bookingController = Get.find<BookingController>();
    final themeController = Get.find<ThemeController>();
    return Column(
      children: [
        kHeight10,
        Row(
          children: [
            Image.asset(flightDetailIcon, height: 20.h),
            kWidth10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    '${bookingController.reviewedDetail?.value.tripInfos?[tripIndex].sI?[siIndex].da?.city ?? ''} to ${bookingController.reviewedDetail?.value.tripInfos?[tripIndex].sI?[siIndex].aa?.city ?? ''}',
                    style: textThinStyle1.copyWith(
                        color: themeController.primaryColor)),
                Text(
                    'on ${DateFormating.formatDate(bookingController.reviewedDetail?.value.tripInfos?[tripIndex].sI?[siIndex].dt ?? '')}',
                    style: textThinStyle1.copyWith(
                        color: themeController.primaryColor))
              ],
            ),
          ],
        ),
        Column(
          children: List.generate(
              travellerController.passengerLength.value -
                  searchController.infantCount.value,
              (travellerIndex) => CustomExpansionTile(
                    whileTap: (open) {
                      int count = 0;
                      for (var e in (bookingController
                              .reviewedDetail?.value.tripInfos ??
                          <TripInfo>[])) {
                        count += (e.sI ?? []).length *
                            travellerController
                                .passengerLengthWithoutInfant.value;
                      }
                      if (open && count > 3) {
                        Timer(
                          const Duration(milliseconds: 300),
                          () {
                            travellerController.travellerScreenScrollController
                                .animateTo(
                                    travellerController
                                            .travellerScreenScrollController
                                            .position
                                            .pixels +
                                        100,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeIn);
                          },
                        );
                      }
                    },
                    isBorder: false,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 6.w),
                      height: 50.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: kRadius10,
                        border: Border.all(color: themeController.primaryColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Row(
                          children: [
                            Text(travellerController
                                    .passengerDetails[travellerIndex]
                                    ?.getName() ??
                                ''),
                            const Spacer(),
                            const Icon(Icons.arrow_drop_down_rounded)
                          ],
                        ),
                      ),
                    ),
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: themeController.primaryColor),
                          borderRadius: kRadius10,
                          color:
                              themeController.secondaryLightColor,
                        ),
                        child: Column(
                          children: [
                            kHeight10,
                            Row(
                              children: [
                                const Expanded(child: Text('Meals')),
                                kWidth10,
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10.w),
                                    decoration: BoxDecoration(
                                        // boxShadow: boxShadow4,
                                        border: Border.all(
                                            color:
                                                themeController.primaryColor),
                                        color: kWhite,
                                        borderRadius: kRadius15),
                                    child: (bookingController
                                                    .reviewedDetail
                                                    ?.value
                                                    .tripInfos?[tripIndex]
                                                    .sI?[siIndex]
                                                    .ssrInfo
                                                    ?.meal
                                                    ?.length ??
                                                0) <
                                            1
                                        ? const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text('Meals not applicable'),
                                          )
                                        : DropDownSsrInfo(
                                            clearSelection: (ssrInfo) {
                                              travellerController.clearMealInfo(
                                                  ssrInfo ?? SsrInfo(),
                                                  travellerIndex);
                                            },
                                            value: (travellerController.passengerDetails[travellerIndex]?.ssrMealInfos ?? <SsrInfo>[]).any((meal) =>
                                                    meal.key ==
                                                    bookingController
                                                        .reviewedDetail
                                                        ?.value
                                                        .tripInfos?[tripIndex]
                                                        .sI?[siIndex]
                                                        .id)
                                                ? (bookingController.reviewedDetail?.value.tripInfos?[tripIndex].sI?[siIndex].ssrInfo?.meal ?? <SsrInfo>[]).firstWhere((meal) =>
                                                    meal.code ==
                                                    (travellerController
                                                                .passengerDetails[
                                                                    travellerIndex]
                                                                ?.ssrMealInfos ??
                                                            <SsrInfo>[])
                                                        .firstWhere((meal) =>
                                                            meal.key ==
                                                            bookingController
                                                                .reviewedDetail
                                                                ?.value
                                                                .tripInfos?[tripIndex]
                                                                .sI?[siIndex]
                                                                .id)
                                                        .code)
                                                : null,
                                            ssrList: (bookingController
                                                    .reviewedDetail
                                                    ?.value
                                                    .tripInfos?[tripIndex]
                                                    .sI?[siIndex]
                                                    .ssrInfo
                                                    ?.meal ??
                                                <SsrInfo?>[]),
                                            hintText: 'Select Meals',
                                            onChanged: (ssrInfo) {
                                              travellerController.addMealsInfo(
                                                  ssrInfo!.copyWith(
                                                      key: bookingController
                                                          .reviewedDetail
                                                          ?.value
                                                          .tripInfos?[tripIndex]
                                                          .sI?[siIndex]
                                                          .id),
                                                  travellerIndex);
                                            },
                                          ),
                                  ),
                                )
                              ],
                            ),
                            kHeight15,
                            Row(
                              children: [
                                const Expanded(child: Text('Baggage')),
                                kWidth10,
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10.w),
                                    decoration: BoxDecoration(
                                        // boxShadow: boxShadow4,
                                        color: kWhite,
                                        border: Border.all(
                                            color:
                                                themeController.primaryColor),
                                        borderRadius: kRadius15),
                                    child: (bookingController
                                                    .reviewedDetail
                                                    ?.value
                                                    .tripInfos?[tripIndex]
                                                    .sI?[siIndex]
                                                    .ssrInfo
                                                    ?.baggage
                                                    ?.length ??
                                                0) <
                                            1
                                        ? const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child:
                                                Text('Baggage not applicable'),
                                          )
                                        : DropDownSsrInfo(
                                            clearSelection: (ssrInfo) {
                                              travellerController
                                                  .clearBaggagesInfo(
                                                      ssrInfo ?? SsrInfo(),
                                                      travellerIndex);
                                            },
                                            value: (travellerController.passengerDetails[travellerIndex]?.ssrBaggageInfos ?? <SsrInfo>[]).any((baggage) =>
                                                    baggage.key ==
                                                    bookingController
                                                        .reviewedDetail
                                                        ?.value
                                                        .tripInfos?[tripIndex]
                                                        .sI?[siIndex]
                                                        .id)
                                                ? (bookingController
                                                            .reviewedDetail
                                                            ?.value
                                                            .tripInfos?[
                                                                tripIndex]
                                                            .sI?[siIndex]
                                                            .ssrInfo
                                                            ?.baggage ??
                                                        <SsrInfo>[])
                                                    .firstWhere((baggage) =>
                                                        baggage.code ==
                                                        (travellerController
                                                                    .passengerDetails[travellerIndex]
                                                                    ?.ssrBaggageInfos ??
                                                                <SsrInfo>[])
                                                            .firstWhere((baggage) => baggage.key == bookingController.reviewedDetail?.value.tripInfos?[tripIndex].sI?[siIndex].id)
                                                            .code)
                                                : null,
                                            ssrList: (bookingController
                                                    .reviewedDetail
                                                    ?.value
                                                    .tripInfos?[tripIndex]
                                                    .sI?[siIndex]
                                                    .ssrInfo
                                                    ?.baggage ??
                                                <SsrInfo?>[]),
                                            hintText: 'Choose baggage',
                                            onChanged: (ssrInfo) {
                                              travellerController
                                                  .addBaggagesInfo(
                                                      ssrInfo!.copyWith(
                                                          key: bookingController
                                                              .reviewedDetail
                                                              ?.value
                                                              .tripInfos?[
                                                                  tripIndex]
                                                              .sI?[siIndex]
                                                              .id),
                                                      travellerIndex);
                                            },
                                          ),
                                  ),
                                )
                              ],
                            ),
                            kHeight10
                          ],
                        ),
                      )
                      //DetailContainer(),
                    ],
                  )),
        )
      ],
    );
  }
}

class DropDownSsrInfo extends StatefulWidget {
  const DropDownSsrInfo({
    super.key,
    required this.ssrList,
    required this.hintText,
    required this.value,
    required this.onChanged,
    required this.clearSelection,
  });

  final List<SsrInfo?> ssrList;
  final String hintText;
  final Function(SsrInfo? ssrInfo) onChanged;
  final SsrInfo? value;
  final Function(SsrInfo? ssrInfo) clearSelection;

  @override
  State<DropDownSsrInfo> createState() => _DropDownSsrInfoState();
}

class _DropDownSsrInfoState extends State<DropDownSsrInfo> {
  SsrInfo? value;
  @override
  void initState() {
    value = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<SsrInfo?>(
      underline: kEmpty,
      icon: Padding(
        padding: EdgeInsets.only(right: 12.w, left: 10.w),
        child: value != null
            ? GestureDetector(
                onTap: () {
                  widget.clearSelection(value);
                  value = null;
                  setState(() {});
                },
                child: Icon(Icons.cancel, color: kRed, size: 18.w))
            : RotatedBox(
                quarterTurns: 1,
                child: Icon(Icons.arrow_forward_ios_sharp, size: 15.w),
              ),
      ),
      isDense: false,
      isExpanded: true,
      value: value,
      dropdownColor: kBlueThinLIght,
      hint: Text(widget.hintText),
      items: widget.ssrList.map((SsrInfo? value) {
        return DropdownMenuItem<SsrInfo?>(
          value: value,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text(value?.desc ?? '')),
              kWidth5,
              Text(value?.amount == null || value?.amount == 0
                  ? 'Free'
                  : '@ ₹${value?.amount ?? ''}'),
            ],
          ),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          this.value = value;
        });
        widget.onChanged(value);
      },
    );
  }
}
