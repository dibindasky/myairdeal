import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/traveler_widgets/saved_detailcard.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';

class ScreenSavedPassengers extends StatelessWidget {
  const ScreenSavedPassengers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final travelerController = Get.find<TravellerController>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      travelerController.getAllPassengers(true);
    });

    return Scaffold(
      body: Column(
        children: [
          const DetailAppBar(heading: 'Travellers Lists'),
          Obx(() {
            // Check if passengers list is null
            if (travelerController.allPassengers.value.passengers == null) {
              return SizedBox(
                height: 400.h,
                child: const Center(
                    child: CircularProgressIndicator(color: kBluePrimary)),
              );
            }
            // Check if passengers list is empty
            if (travelerController.allPassengers.value.passengers!.isEmpty) {
              return SizedBox(
                  height: 400.h,
                  child: const Center(
                    child: Text('No passengers found.'),
                  ));
            }
            // Build the ListView with passengers data
            return Expanded(
              child: ListView.builder(
                itemCount:
                    travelerController.allPassengers.value.passengers?.length ??
                        0,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return SavedDetailsCard(
                      index: index,
                      passengers: travelerController
                          .allPassengers.value.passengers?[index]);
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
