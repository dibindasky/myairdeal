import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/traveler_widgets/saved_detailcard.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ScreenSavedPassengers extends StatelessWidget {
  const ScreenSavedPassengers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments as Map<String, dynamic>;
    final travellerIndex = arguments['index'] as int;
    final travellerType = arguments['type'] as String;
    final travelerController = Get.find<TravellerController>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      travelerController.getAllPassengers(travellerType);
    });

    return Scaffold(
      body: Column(
        children: [
          const DetailAppBar(heading: 'Travellers Lists'),
          Obx(() {
            // Check if passengers list is null
            if (travelerController.isLoading.value) {
              return SizedBox(
                height: 400.h,
                child: const Center(
                    child: CircularProgressIndicator(color: kBluePrimary)),
              );
            }
            // Check if passengers list is empty
            if (travelerController.allPassengers.isEmpty) {
              return SizedBox(
                  height: 400.h,
                  child: const Center(
                    child: Text('No passengers found.'),
                  ));
            }
            // Build the ListView with passengers data
            return Expanded(
              child: ListView.separated(
                itemCount: travelerController.allPassengers.length,
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) => kHeight10,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      travelerController.addPassengerDetail(travellerIndex,
                          travelerController.allPassengers[index], false);
                      Get.back();
                      Get.back();
                    },
                    child: SavedDetailsCard(
                        passengers: travelerController.allPassengers[index]),
                  );
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
