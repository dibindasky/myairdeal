import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/controller/home/home_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/detail_tab_selection.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/itenary_tab/itinerary_tab.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/review/review.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/tabs.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/screens/payment/payement.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';

class ScreenFlightDetail extends StatefulWidget {
  const ScreenFlightDetail({super.key});

  @override
  State<ScreenFlightDetail> createState() => _ScreenFlightDetailState();
}

class _ScreenFlightDetailState extends State<ScreenFlightDetail> {
  @override
  void initState() {
    super.initState();
    // BackButtonInterceptor.add(myInterceptor);
    Get.find<HomeController>()
        .changeNavigationChecker(NavigationChecker.itinary);
  }

  // @override
  // void dispose() {
  //   BackButtonInterceptor.remove(myInterceptor);
  //   super.dispose();
  // }

  // bool myInterceptor(bool stopDefaultButtonEvent, RouteInfo info) {
  //   // Custom back button logic here
  //   Get.find<TravellerController>().backButtonPaymetPage();
  //   return false; // Prevent the default back button action
  // }

  @override
  Widget build(BuildContext context) {
    final travelController = Get.find<TravellerController>();
    final bookingController = Get.find<BookingController>();
    return Scaffold(
      body: SingleChildScrollView(
        controller: travelController.travellerScreenScrollController,
        child: Column(
          children: [
            Obx(
              () => DetailAppBar(
                heading: travelController
                    .detailList[travelController.selectedMainTab.value],
                backButton: true,
                backOntap: () {
                  travelController.backButtonPaymetPage(true);
                },
                action: bookingController.bookingLoading.value
                    ? kEmpty
                    : Text(
                        DateFormating.convertSecondsToHoursMinutesSeconds(
                            bookingController.remainingTime.value),
                        style: textStyle1.copyWith(color: kWhite),
                      ),
              ),
            ),
            Obx(() {
              if (bookingController.reviewPriceLoading.value) {
                return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.75,
                    child: const Center(
                      child: CircularProgressIndicator(color: kBluePrimary),
                    ));
              }
              return Column(
                children: [
                  kHeight15,
                  const ProgressBar(),
                  GetBuilder<TravellerController>(
                    builder: (controller) {
                      if (travelController.selectedMainTab.value == 0) {
                        return const ItineraryTab();
                      } else if (travelController.selectedMainTab.value == 1) {
                        return const PassengerDetailsTabSelection();
                      } else if (travelController.selectedMainTab.value == 2) {
                        return const ReveiewTab();
                      } else if (travelController.selectedMainTab.value == 3) {
                        return const PaymentTab();
                      } else {
                        return kEmpty;
                      }
                    },
                  ),
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
