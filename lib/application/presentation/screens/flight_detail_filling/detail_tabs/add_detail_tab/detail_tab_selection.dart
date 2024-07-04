import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/add_details_tab.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/baggage_and_meals_selection.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/insurence_tab.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/passenger_details.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/seat_selection.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/widgets/bottom_button..dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/widgets/stack_container.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class PassengerDetailsTabSelection extends StatelessWidget {
  const PassengerDetailsTabSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.w),
      child: Column(
        children: [
          const PassengerDetailsTab(),
          kHeight10,
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GetBuilder<TravellerController>(builder: (cotext) {
                return Stack(
                  children: [
                    GetBuilder<TravellerController>(builder: (controller) {
                      if (controller.selectedAddDetailsStep.value == 0) {
                        return const PassengerDetailsContainer();
                      } else if (controller.selectedAddDetailsStep.value == 1) {
                        return const SelectSeatContainer();
                      } else if (controller.selectedAddDetailsStep.value == 2) {
                        return const BaggageAndMealsSelection();
                      } else if (controller.selectedAddDetailsStep.value == 3) {
                        return const InsurenceTab();
                      } else {
                        return kEmpty;
                      }
                    }),
                    cotext.selectedDetailStepArrow.value
                        ? const StackContainer()
                        : kEmpty,
                  ],
                );
              }),
            ],
          ),
        ],
      ),
    );
  }
}
