import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/add_details.tab.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/itinerary_tab.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/tabs.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/screens/payment/payement.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ScreenFlightDetail extends StatelessWidget {
  const ScreenFlightDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final travelController = Get.find<TravellerController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
              () => DetailAppBar(
                  heading: travelController
                      .detailList[travelController.selectedMainTab.value]),
            ),
            kHeight15,
            const ProgressBar(),
            GetBuilder<TravellerController>(
              builder: (controller) {
                if (travelController.selectedMainTab.value == 0) {
                  return const ItineraryTab();
                } else if (travelController.selectedMainTab.value == 1) {
                  return PassengerDetailsTab();
                } else if (travelController.selectedMainTab.value == 3) {
                  return const PaymentTab();
                } else {
                  return kEmpty;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
