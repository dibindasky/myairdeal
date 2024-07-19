import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/widgets/bottom_button..dart';
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
                    siIndex: siIndex,
                    tripIndex: tripIndex,
                  ),
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
                    style: textThinStyle1.copyWith(color: kBlueDark)),
                Text(
                    'on ${DateFormating.formatDate(bookingController.reviewedDetail?.value.tripInfos?[tripIndex].sI?[siIndex].dt ?? '')}',
                    style: textThinStyle1.copyWith(color: kBlueDark))
              ],
            ),
          ],
        ),
        Column(
          children: List.generate(
              travellerController.passengerLength.value -
                  searchController.infantCount.value,
              (travellerIndex) => CustomExpansionTile(
                    isBorder: false,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 6.w),
                      height: 50.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: kRadius10,
                        border: Border.all(color: kBlue),
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
                          border: Border.all(color: kBlue),
                          borderRadius: kRadius10,
                          color: kBlueLightShade,
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
                                        boxShadow: boxShadow4,
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
                                        ? null
                                        : DropdownButton<SsrInfo?>(
                                            icon: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 8.0),
                                              child: RotatedBox(
                                                quarterTurns: 1,
                                                child: Icon(
                                                  Icons.arrow_forward_ios_sharp,
                                                  size: 17.w,
                                                  color: kBluePrimary,
                                                ),
                                              ),
                                            ),
                                            isDense: false,
                                            isExpanded: true,
                                            value: null,
                                            hint: const Text('Select Meal'),
                                            items: (bookingController
                                                        .reviewedDetail
                                                        ?.value
                                                        .tripInfos?[tripIndex]
                                                        .sI?[siIndex]
                                                        .ssrInfo
                                                        ?.meal ??
                                                    <SsrInfo?>[])
                                                .map((SsrInfo? value) {
                                              return DropdownMenuItem<SsrInfo?>(
                                                value: SsrInfo(),
                                                child: Text(value?.desc ?? ''),
                                              );
                                            }).toList(),
                                            onChanged: (SsrInfo? newValue) {},
                                          ),
                                  ),
                                )
                              ],
                            ),
                            kHeight15,
                            // Row(
                            //   children: [
                            //     const Expanded(child: Text('Baggage')),
                            //     kWidth10,
                            //     Expanded(
                            //       flex: 3,
                            //       child: Container(
                            //         padding: EdgeInsets.only(left: 10.w),
                            //         decoration: BoxDecoration(
                            //             boxShadow: boxShadow4,
                            //             color: kWhite,
                            //             borderRadius: kRadius15),
                            //         child: DropdownButton<SsrInfo>(
                            //           icon: Padding(
                            //             padding:
                            //                 const EdgeInsets.only(right: 8.0),
                            //             child: RotatedBox(
                            //               quarterTurns: 1,
                            //               child: Icon(
                            //                 Icons.arrow_forward_ios_sharp,
                            //                 size: 17.w,
                            //                 color: kBluePrimary,
                            //               ),
                            //             ),
                            //           ),
                            //           isDense: false,
                            //           isExpanded: true,
                            //           value: null,
                            //           hint: const Text('Add extra baggage'),
                            //           items: <SsrInfo>[SsrInfo()]
                            //               .map((SsrInfo value) {
                            //             return DropdownMenuItem<SsrInfo>(
                            //               value: value,
                            //               child: Text(value.desc ?? ''),
                            //             );
                            //           }).toList(),
                            //           onChanged: (SsrInfo? newValue) {},
                            //         ),
                            //       ),
                            //     )
                            //   ],
                            // ),
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
