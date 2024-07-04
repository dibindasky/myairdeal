import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_sort/widgets/flight_ticket_expansion_card.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/bottom_mini_container.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/card_side_items.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/normal_center_items.dart';

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
        child: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Column(
                      children: List.generate(
                    controller.multiCityCount.value,
                    (index) {
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
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CardSideItems(
                              place: controller.airportSelected[index][0].code??"",
                              airPort: 'Airport',
                              from: 'Departure',
                              time: '07:00 AM',
                            ),
                            NormalCenterItems(),
                            CardSideItems(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              place: controller.airportSelected[index][1].code??"",
                              airPort: 'Airport',
                              from: 'Arrival',
                              time: '07:00 PM',
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
                    price: controller.searchList[0][index].totalPriceList![0].fd
                            ?.adult?.fC?.tf ??
                        0,
                  ),
                ],
              ),
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
        children: [
          TicketDetailExpansionChild(
              onTapBookNow: () {
                // book ticket for international mutli city and round trip
              },
              totalPriceList:
                  controller.searchList[0][index].totalPriceList![0])
        ],
      );
    });
  }
}
