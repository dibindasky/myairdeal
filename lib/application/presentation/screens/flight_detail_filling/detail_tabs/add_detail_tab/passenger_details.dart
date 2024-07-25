import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/passenger_field_container.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/widgets/bottom_button..dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

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
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Get.dialog(
                  Dialog(
                    backgroundColor: knill,
                    surfaceTintColor: knill,
                    child: DetailContainer(
                        index: index,
                        travellerType: (searchController.adultCount.value) >
                                index
                            ? "ADULT"
                            : (searchController.adultCount.value +
                                        searchController.childrenCount.value) >
                                    index
                                ? 'CHILD'
                                : (searchController.adultCount.value +
                                            searchController
                                                .childrenCount.value +
                                            searchController
                                                .infantCount.value) >
                                        index
                                    ? 'INFANT'
                                    : ''),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 6.w),
                // height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: kRadius10,
                  border: Border.all(color: kBlue),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => controller.passengerDetails[index] != null
                            ? Expanded(
                                child: Text(
                                    '${controller.passengerDetails[index]!.ti ?? ''} ${controller.passengerDetails[index]!.fN ?? ''} ${controller.passengerDetails[index]!.lN ?? ''}'),
                              )
                            : Text((searchController.adultCount.value) > index
                                ? "Adult ${index + 1}"
                                : (searchController.adultCount.value +
                                            searchController
                                                .childrenCount.value) >
                                        index
                                    ? 'Child ${index - searchController.adultCount.value + 1}'
                                    : (searchController.adultCount.value +
                                                searchController
                                                    .childrenCount.value +
                                                searchController
                                                    .infantCount.value) >
                                            index
                                        ? 'Infant ${index - searchController.adultCount.value - searchController.childrenCount.value + 1}'
                                        : ''),
                      ),
                      kWidth10,
                      Obx(
                        () => controller.passengerDetails[index] == null
                            ? const Icon(Icons.add_chart_sharp)
                            : const CircleAvatar(
                                radius: 15,
                                backgroundColor: kGreen,
                                child: Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Icon(Icons.check,
                                      size: 15, color: kWhite),
                                ),
                              ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          kHeight20,
          const BottomButton(),
        ],
      );
    });
  }
}
