import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/screens/home/widgets/search_card_flight_section.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/custom_appbar_shape.dart';

class SortScreenHeaderSection extends StatelessWidget {
  const SortScreenHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return SizedBox(
      height: controller.comboTrip.value ? null : 220.h,
      child: AppBarCustomShape(
        child: Obx(() {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              kHeight30,
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back(id: 1);
                    },
                    child: const Icon(Icons.arrow_back_ios, color: kWhite),
                  ),
                  Text(
                    controller.comboTrip.value
                        ? '${controller.comboList.length} Results'
                        : '${controller.searchList[controller.selectedTripListIndex.value].length} Results',
                    style:
                        textThinStyle1.copyWith(fontSize: 20.sp, color: kWhite),
                  ),
                  const Spacer(),
                  GestureDetector(
                      onTap: () {
                        // edit selections for search api
                        showModalBottomSheet(
                          isScrollControlled: true,
                          constraints: BoxConstraints.tight(Size(
                              MediaQuery.of(context).size.width,
                              MediaQuery.of(context).size.height * 0.75)),
                          context: context,
                          builder: (context) =>
                              const FlightSearchCardHome(fromEdit: true),
                        );
                      },
                      child: const Icon(Icons.edit_note_sharp, color: kWhite))
                ],
              ),
              kHeight10,
              controller.comboTrip.value
                  ? kEmpty
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller
                                        .airportSelected[controller
                                            .selectedTripListIndex.value][0]
                                        .city ??
                                    '',
                                style: textHeadStyle1.copyWith(color: kWhite),
                              ),
                              Text(
                                controller
                                        .airportSelected[controller
                                            .selectedTripListIndex.value][0]
                                        .name ??
                                    '',
                                style: textThinStyle1.copyWith(color: kWhite),
                              ),
                              // Text(
                              //   'Airport',
                              //   style: textThinStyle1.copyWith(color: kWhite),
                              // ),
                            ],
                          ),
                        ),
                        const Column(
                          children: [
                            RotatedBox(
                                quarterTurns: 1,
                                child: Icon(Icons.flight_sharp, color: kWhite)),
                            // Container(
                            //   height: 50.h,
                            //   width: 50.w,
                            //   decoration: BoxDecoration(
                            //       image: DecorationImage(
                            //           image: AssetImage(imageFlightTrip))),
                            // ),
                            // Text(
                            //   controller
                            //           .sortingVariables[controller
                            //               .selectedTripListIndex.value]![2]
                            //           .isEmpty
                            //       ? ''
                            //       : DateFormating.convertMinutesToHoursMinutes(
                            //           controller
                            //               .sortingVariables[controller
                            //                   .selectedTripListIndex.value]![2]
                            //               .first),
                            //   style: textThinStyle1.copyWith(color: kWhite),
                            // )
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                controller
                                        .airportSelected[controller
                                            .selectedTripListIndex.value][1]
                                        .city ??
                                    '',
                                style: textHeadStyle1.copyWith(color: kWhite),
                              ),
                              Text(
                                controller
                                        .airportSelected[controller
                                            .selectedTripListIndex.value][1]
                                        .name ??
                                    '',
                                textAlign: TextAlign.end,
                                style: textThinStyle1.copyWith(color: kWhite),
                              ),
                              // Text(
                              //   'Airport',
                              //   style: textThinStyle1.copyWith(color: kWhite),
                              // ),
                            ],
                          ),
                        )
                      ],
                    )
            ],
          );
        }),
      ),
    );
  }
}
