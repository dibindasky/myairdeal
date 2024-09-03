import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/flight_ticket_expansion_card.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/bottom_mini_container.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/card_side_items.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/normal_center_items.dart';
import 'package:myairdeal/domain/models/booking/review_price_detail_id_model/review_price_detail_id_model.dart';

class InternationalMutliComboTile extends StatelessWidget {
  const InternationalMutliComboTile(
      {super.key, required this.index, this.isSelectedTicket = false});

  final int index;
  final bool isSelectedTicket;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Obx(() {
      return CustomExpansionTile(
        whileTap: (open) {
          if (open) {
            Timer(
              const Duration(milliseconds: 300),
              () {
                double position =
                    controller.flightSortScreenController.position.pixels;
                controller.flightSortScreenController.animateTo(position + 100,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn);
              },
            );
          }
        },
        expansionColor: kGrey,
        child: Stack(
          children: [
            Column(
              children: [
                Column(
                    children: List.generate(
                  controller.multiCityCount.value,
                  (jIndex) {
                    return Container(
                      margin: EdgeInsets.only(
                        top: 2.h,
                        bottom: 2,
                        left: 2.w,
                        right: 2.w,
                      ),
                      decoration: BoxDecoration(
                          color: isSelectedTicket ? kBlueLightShade : kWhite,
                          boxShadow: boxShadow3,
                          border: Border.all(width: 0.3),
                          borderRadius: BorderRadius.circular(13)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CardSideItems(
                              place: controller.comboList[index][jIndex].sI![0]
                                      .da?.code ??
                                  '',
                              airPort: controller.comboList[index][jIndex]
                                      .sI![0].da?.name ??
                                  '',
                              from: 'Departure',
                              date: DateFormating.formatDateMonthYear(controller
                                      .comboList[index][jIndex].sI![0].dt ??
                                  ''),
                            ),
                            NormalCenterItems(
                                haveImage: false,
                                airlineCodes: controller
                                    .comboList[index][jIndex].sI!
                                    .map((e) => e.fD?.aI?.code ?? '')
                                    .toList(),
                                stops: controller
                                        .comboList[index][jIndex].sI!.length -
                                    1),
                            CardSideItems(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              place: controller
                                      .comboList[index][jIndex]
                                      .sI![controller.comboList[index][jIndex]
                                              .sI!.length -
                                          1]
                                      .aa
                                      ?.code ??
                                  '',
                              airPort: controller
                                      .comboList[index][jIndex]
                                      .sI![controller.comboList[index][jIndex]
                                              .sI!.length -
                                          1]
                                      .aa
                                      ?.name ??
                                  '',
                              from: 'Arrival',
                              date: DateFormating.formatDateMonthYear(controller
                                      .comboList[index][jIndex]
                                      .sI![controller.comboList[index][jIndex]
                                              .sI!.length -
                                          1]
                                      .at ??
                                  ''),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )),
                BottomMiniContainer(
                    flightTicketCardEnum: FlightTicketCardEnum.homeSort,
                    buttonOnTap: () {},
                    price: controller.comboList[index][0].totalPriceList?[0].fd
                            ?.adult?.fC?.tf ??
                        0),
              ],
            ),
            Positioned(
              left: 0,
              bottom: 45,
              child: Container(
                decoration: BoxDecoration(
                  color: isSelectedTicket ? kWhite : kGreylowLight,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                width: 20.w,
                height: 18.h,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 45,
              child: Container(
                decoration: BoxDecoration(
                  color: isSelectedTicket ? kWhite : kGreylowLight,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                width: 20.w,
                height: 18.h,
              ),
            ),
          ],
        ),
        children: List.generate(
            controller.comboList[index][0].totalPriceList!.length,
            (k) => TicketDetailExpansionChild(
                onTapBookNow: () {
                  Get.find<TravellerController>().updatePassengersNumber(
                      controller.adultCount.value +
                          controller.childrenCount.value +
                          controller.infantCount.value,
                      controller.adultCount.value +
                          controller.childrenCount.value);
                  // book ticket for international mutli city and round trip
                  Get.find<BookingController>().reviewPriceDetailChecking(
                      reviewPriceDetailIdModel:
                          ReviewPriceDetailIdModel(priceIds: [
                    controller.comboList[index][0].totalPriceList?[k].id ?? ''
                  ]));
                  // for update traveller count
                },
                totalPriceList:
                    controller.comboList[index][0].totalPriceList![k])),
      );
    });
  }
}
