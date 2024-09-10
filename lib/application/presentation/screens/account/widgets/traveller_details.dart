import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/traveler_widgets/saved_detailcard.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import '../../../utils/shimmer/horizontal_shimmer.dart';

class TravellerDetails extends StatelessWidget {
  const TravellerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final travelerController = Get.find<TravellerController>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      travelerController.getAllPAssengers();
    });
    return Scaffold(
      body: Column(
        children: [
          DetailAppBar(
              heading: 'Saved Passengers',
              backButton: true,
              backOntap: () {
                Get.back();
                travelerController.clearTextFields();
              },
              topGap: kHeight10),
          kHeight5,
          Obx(() {
            // Check if passengers list is null
            if (travelerController.isLoading.value) {
              return HorizontalShimmerSkeleton(
                paddingHorizontal: 15.h,
                scrollDirection: Axis.vertical,
                itemCount: 3,
              );
            }
            // Check if passengers list is empty
            if (travelerController.allPassengers.isEmpty) {
              return SizedBox(
                  height: 400.h,
                  child: const Center(
                    child: Text('No Passengers Found.'),
                  ));
            }
            // Build the ListView with passengers data
            return Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  travelerController.getAllPAssengers();
                },
                child: ListView.separated(
                  padding: EdgeInsets.only(bottom: 14.w),
                  itemCount: travelerController.allPassengers.length,
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, index) => kHeight10,
                  itemBuilder: (BuildContext context, int index) {
                    return Dismissible(
                      key: Key(
                          travelerController.allPassengers[index].toString()),
                      direction: DismissDirection.startToEnd,
                      onDismissed: (direction) {
                        travelerController.deletePassenger(
                            travellerID:
                                travelerController.allPassengers[index].id ??
                                    '');
                      },
                      background: const Icon(Icons.delete, color: kRed),
                      child: GestureDetector(
                        onTap: () {
                          travelerController.addPassengerDetail(
                              index,
                              travelerController
                                  .allPassengersBasedOnType[index],
                              false);
                          Get.back();
                          Get.back();
                        },
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.addUpdateTravellerDetails,
                                arguments:
                                    travelerController.allPassengers[index]);
                          },
                          child: SavedDetailsCard(
                              passengers:
                                  travelerController.allPassengers[index]),
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}