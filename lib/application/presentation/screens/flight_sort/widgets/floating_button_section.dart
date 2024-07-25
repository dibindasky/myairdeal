import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/domain/models/booking/review_price_detail_id_model/review_price_detail_id_model.dart';

class FloatingButtonSection extends StatelessWidget {
  const FloatingButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Obx(() {
      return controller.comboTrip.value ||
              controller.tripType.value == 0 ||
              controller.searchListLoading.value
          ? kEmpty
          : FloatingActionButton.extended(
              backgroundColor: kBlueDark,
              splashColor: kBluePrimary,
              onPressed: () {
                Get.find<TravellerController>().updatePassengersNumber(
                    controller.adultCount.value +
                        controller.childrenCount.value +
                        controller.infantCount.value,controller.adultCount.value +
                      controller.childrenCount.value);
                if (controller.selectedTripListIndex.value ==
                    controller.searchList.length - 1) {
                  List<String> ids = [];
                  for (int i = 0; i < controller.searchList.length; i++) {
                    final item = controller.searchList[i];
                    ids.add(item[controller.selectedFlights[i]]
                            .totalPriceList![controller.selectedTicketPrices[i]]
                            .id ??
                        '');
                  }
                  Get.find<BookingController>().reviewPriceDetailChecking(
                      reviewPriceDetailIdModel:
                          ReviewPriceDetailIdModel(priceIds: ids));
                } else {
                  controller.nextOrContinue();
                }
              },
              label: Column(
                children: [
                  Text(
                    controller.selectedTripListIndex.value ==
                            controller.searchList.length - 1
                        ? 'Continue'
                        : 'Next',
                    style: textStyle1.copyWith(color: kWhite),
                  ),
                  Text(
                    '₹ ${controller.totalTicketPrice.value}',
                    style: textThinStyle1.copyWith(color: kWhite),
                  )
                ],
              ),
            );
    });
  }
}
