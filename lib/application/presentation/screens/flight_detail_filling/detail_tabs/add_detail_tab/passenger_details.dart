import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/passenger_field_container.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/widgets/bottom_button..dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';

class PassengerDetailsContainer extends StatelessWidget {
  const PassengerDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = Get.find<FlightSortController>();
    final controller = Get.find<TravellerController>();
    return Obx(() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Passenger details', style: textStyle1),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(5),
            shrinkWrap: true,
            itemCount: searchController.adultCount.value +
                searchController.infantCount.value +
                searchController.childrenCount.value,
            itemBuilder: (context, index) => CustomExpansionTile(
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
                      Text((searchController.adultCount.value) > index
                          ? "Adult ${index + 1}"
                          : (searchController.adultCount.value +
                                      searchController.childrenCount.value) >
                                  index
                              ? 'Child ${index - searchController.adultCount.value + 1}'
                              : (searchController.adultCount.value +
                                          searchController.childrenCount.value +
                                          searchController.infantCount.value) >
                                      index
                                  ? 'Infant ${index - searchController.adultCount.value - searchController.childrenCount.value + 1}'
                                  : ''),
                      const Icon(Icons.check, color: kGreen)
                    ],
                  ),
                ),
              ),
              children: [
                DetailContainer(
                    index: index,
                    travellerType: (searchController.adultCount.value) > index
                        ? "ADULT"
                        : (searchController.adultCount.value +
                                    searchController.childrenCount.value) >
                                index
                            ? 'CHILD'
                            : (searchController.adultCount.value +
                                        searchController.childrenCount.value +
                                        searchController.infantCount.value) >
                                    index
                                ? 'INFANT'
                                : ''),
              ],
            ),
          ),
          kHeight20,
          const BottomButton(),
        ],
      );
    });
  }
}
