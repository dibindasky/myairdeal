import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';

class SelectedAirlinesSections extends StatelessWidget {
  const SelectedAirlinesSections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Obx(() {
      return Positioned(
        // top: 140.h,
        bottom: 0,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: controller.flightSortController,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                controller.searchList.length,
                (index) {
                  final flightModel = controller.searchList[index]
                      [controller.selectedFlights[index]];
                  return GestureDetector(
                    onTap: (){
                      controller.changeSelectedTripIndex(index);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          // boxShadow: boxShadow2 ,
                          color:index == controller.selectedTripListIndex.value
                            ? kBlueLightShade
                            : kGreyLightBackground,
                          border: Border.all(color: kBlack),
                          borderRadius: kRadius10),
                      margin: EdgeInsets.only(
                          left: index == 0 ? 10.w : 0,
                          top: 10.h,
                          right: index == controller.searchList.length - 1
                              ? 10.w
                              : 2.w),
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 15.h,
                            width: 15.h,
                            margin: EdgeInsets.only(
                              top: 4.h,
                            ),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'asset/image/flight_detail_image.png'),
                              ),
                            ),
                          ),
                          kWidth5,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  '${controller.airportSelected[index][0].citycode ?? ''} - ${controller.airportSelected[index][1].citycode}',
                                  style: textStyle1.copyWith(
                                      fontWeight: FontWeight.bold)),
                              Text(
                                  '${DateFormating.formatTime(flightModel.sI?[0].dt ?? '')} - ${DateFormating.formatTime(flightModel.sI?[(flightModel.sI?.length ?? 1) - 1].at ?? '')}',
                                  style:
                                      textThinStyle1.copyWith(fontSize: 10.sp)),
                              Text(
                                  (controller
                                              .searchList[index][controller
                                                  .selectedFlights[index]]
                                              .totalPriceList![controller
                                                  .selectedTicketPrices[index]]
                                              .fd
                                              ?.adult
                                              ?.fC
                                              ?.tf ??
                                          '')
                                      .toString(),
                                  // '₹ ${flightModel.totalPriceList?[controller.selectedTicketPrices[index]].fd?.adult?.fC?.tf ?? ''}',
                                  style: textThinStyle1.copyWith()),
                              Text(
                                  DateFormating.getDate(controller
                                              .tripType.value ==
                                          1
                                      ? index == 0
                                          ? controller.depatureDate.value
                                          : controller.returnDate.value
                                      : controller.multiCityDepartureDate[index]),
                                  style:
                                      textThinStyle1.copyWith(color: kGreyDark)),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );
    });
  }
}
