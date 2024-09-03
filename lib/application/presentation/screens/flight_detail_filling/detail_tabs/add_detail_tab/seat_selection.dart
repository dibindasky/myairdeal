import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/add_detail_tab/widgets/bottom_button.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/horizontal_shimmer.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/shimmer.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/ssr_info.dart';

class SelectSeatContainer extends StatelessWidget {
  const SelectSeatContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TravellerController>();
    final themeController = Get.find<ThemeController>();
    return Obx(() {
      return controller.seatIsLoading.value || controller.keysList.isEmpty
          ? Column(
              children: [
                kHeight50,
                controller.seatIsLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(color: kBluePrimary))
                    : CircleAvatar(
                        backgroundColor: kRed.withOpacity(0.3),
                        child: const RotatedBox(
                          quarterTurns: 1,
                          child: Icon(Iconsax.check),
                        ),
                      ),
                kHeight10,
                Text(controller.seatIsLoading.value
                    ? 'Checking for Seat Seletion Applicable Or Not'
                    : 'Seat Selection Not Applicable'),
                kHeight50,
                const BottomButton(),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Select seat', style: textStyle1),
                kHeight15,
                const FlightsListForSeatSelection(),
                kHeight15,
                const SeatDemoViewer(),
                const SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width - 30,
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  decoration: BoxDecoration(
                      boxShadow: boxShadow1,
                      color: kWhite,
                      borderRadius: kRadius10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      kHeight10,
                      Text('Class',
                          style: textThinStyle1.copyWith(
                              color: themeController.primaryColor)),
                      Text(
                          Get.find<BookingController>()
                                  .reviewedDetail
                                  ?.value
                                  .searchQuery
                                  ?.cabinClass ??
                              '',
                          style: textStyle1.copyWith(
                              color: themeController.secondaryColor)),
                      kHeight10,
                      Obx(
                        () {
                          return controller.seatLoader.value
                              ? const Skeleton(crossAxisCount: 7, itemCount: 70)
                              : controller
                                          .seatsAvilable[controller
                                              .selectedSeatFlightKey.value]!
                                          .nt !=
                                      null
                                  ? Text(controller
                                      .seatsAvilable[controller
                                          .selectedSeatFlightKey.value]!
                                      .nt!)
                                  : SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      physics: const BouncingScrollPhysics(),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: List.generate(
                                          controller.row.value,
                                          (row) {
                                            return Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: List.generate(
                                                controller.col.value,
                                                (col) {
                                                  return Obx(() {
                                                    final seat = controller
                                                        .seatList[row][col];
                                                    final bool selected =
                                                        (controller.selectedSeats[
                                                                    controller
                                                                        .selectedSeatFlightKey
                                                                        .value] ??
                                                                <SsrInfo?>[])
                                                            .any((element) =>
                                                                element?.code ==
                                                                seat.code);
                                                    return GestureDetector(
                                                      onTap: () {
                                                        if (!(seat.isBooked ??
                                                            true)) {
                                                          controller.selectSeat(
                                                              passengerIndex: 0,
                                                              seat: seat);
                                                        }
                                                      },
                                                      child: AnimatedContainer(
                                                        duration:
                                                            const Duration(
                                                                milliseconds:
                                                                    300),
                                                        margin: EdgeInsets.only(
                                                            left: 5,
                                                            right: 5,
                                                            top:
                                                                seat.freeSpace ??
                                                                        false
                                                                    ? 0
                                                                    : 5,
                                                            bottom:
                                                                seat.freeSpace ??
                                                                        false
                                                                    ? 0
                                                                    : 5),
                                                        height: seat.freeSpace ??
                                                                false
                                                            ? 0
                                                            : seat.isLegroom ??
                                                                    false
                                                                ? 30.h
                                                                : 25.h,
                                                        width: 25.w,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: selected
                                                              ? themeController
                                                                  .secondaryColor
                                                              : seat.freeSpace ??
                                                                      false
                                                                  ? knill
                                                                  : (seat.isBooked ??
                                                                          true)
                                                                      ? kGrey
                                                                      : kWhite,
                                                          border: seat.isBooked ??
                                                                  true
                                                              ? null
                                                              : Border.all(
                                                                  color: seat.freeSpace ??
                                                                          false
                                                                      ? knill
                                                                      : themeController
                                                                          .primaryColor),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                        child:
                                                            (seat.freeSpace ??
                                                                    false)
                                                                ? kEmpty
                                                                : Column(
                                                                    children: [
                                                                      seat.isLegroom ??
                                                                              false
                                                                          ? Container(
                                                                              height: 5.h,
                                                                              decoration: BoxDecoration(
                                                                                color: themeController.primaryColor,
                                                                                borderRadius: const BorderRadius.only(
                                                                                  topLeft: Radius.circular(4),
                                                                                  topRight: Radius.circular(4),
                                                                                ),
                                                                              ),
                                                                            )
                                                                          : kEmpty,
                                                                      const Spacer(),
                                                                      (seat.isBooked ??
                                                                              true)
                                                                          ? kEmpty
                                                                          : FittedBox(
                                                                              child: Padding(
                                                                              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 3),
                                                                              child: Column(
                                                                                children: [
                                                                                  Text(
                                                                                    selected
                                                                                        ? seat.seatNo ?? ''
                                                                                        : seat.amount == null || seat.amount == 0
                                                                                            ? 'Free'
                                                                                            : '₹ ${seat.amount ?? '0'}',
                                                                                    style: textThinStyle1.copyWith(color: selected ? themeController.primaryColor : null, fontSize: 7.sp),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ))
                                                                    ],
                                                                  ),
                                                      ),
                                                    );
                                                  });
                                                },
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    );
                        },
                      ),
                      kHeight10
                    ],
                  ),
                ),
                kHeight20,
                const BottomButton(),
                kHeight15
              ],
            );
    });
  }
}

class FlightsListForSeatSelection extends StatelessWidget {
  const FlightsListForSeatSelection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final travellerController = Get.find<TravellerController>();
    final bookingController = Get.find<BookingController>();
    final themeController = Get.find<ThemeController>();
    return Obx(() {
      return travellerController.seatIsLoading.value
          ? HorizontalShimmerSkeleton(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              height: 30.h,
              width: 60.w,
              totalHeight: 30.h,
            )
          : Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                ...List.generate(
                  travellerController.keysList.length,
                  (index) {
                    final selected =
                        travellerController.selectedSeatFlightKey.value ==
                            travellerController.keysList[index];
                    final si = bookingController.getSegmentInfoUsingId(
                        travellerController.keysList[index]);
                    return GestureDetector(
                      onTap: () {
                        travellerController.chnageSelectedFlightUsingId(
                            travellerController.keysList[index]);
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 6.w),
                        decoration: BoxDecoration(
                            borderRadius: kRadius10,
                            border: Border.all(
                                color: selected
                                    ? themeController.primaryColor
                                    : themeController.secondaryColor),
                            color: selected
                                ? themeController.secondaryColor
                                    .withOpacity(0.6)
                                : kRed.withOpacity(0.3),
                            boxShadow: selected ? boxShadow2 : boxShadow3),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: selected ? 20.w : 18.w,
                              vertical: selected ? 5.w : 3.w),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network(
                                  getAirlineLogo(si?.fD?.aI?.code ?? ''),
                                  height: 20.h,
                                  width: 20.h),
                              kWidth5,
                              Text(si?.da?.code ?? ''),
                              kWidth5,
                              Icon(
                                Icons.arrow_forward,
                                size: 13.sp,
                              ),
                              kWidth5,
                              Text(si?.aa?.code ?? ''),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            );
    });
  }
}

class SeatDemoViewer extends StatelessWidget {
  const SeatDemoViewer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
      decoration: BoxDecoration(
          borderRadius: kRadius10,
          border: Border.all(color: kBlueLight),
          boxShadow: boxShadow3),
      child: Wrap(
        spacing: 10.w,
        runSpacing: 5.h,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 12.w,
                height: 12.h,
                decoration: BoxDecoration(
                  border: Border.all(color: themeController.primaryColor),
                  borderRadius: const BorderRadius.all(Radius.circular(2)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 4.h,
                      width: 12.w,
                      decoration: BoxDecoration(
                        color: themeController.primaryColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(2),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              kWidth5,
              const Text('Extra leg space'),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 12.w,
                height: 12.h,
                decoration: const BoxDecoration(
                  color: kGrey,
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                ),
              ),
              kWidth5,
              const Text('Reserved'),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 12.w,
                height: 12.h,
                decoration: BoxDecoration(
                  border: Border.all(color: themeController.primaryColor),
                  borderRadius: const BorderRadius.all(Radius.circular(2)),
                ),
              ),
              kWidth5,
              const Text('Free'),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 12.w,
                height: 12.h,
                decoration: BoxDecoration(
                  color: themeController.primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(2)),
                ),
              ),
              kWidth5,
              const Text('Paid'),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 12.w,
                height: 12.h,
                decoration: BoxDecoration(
                  border: Border.all(color: themeController.primaryColor),
                  color: themeController.secondaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(2)),
                ),
              ),
              kWidth5,
              const Text('Selected'),
            ],
          ),
        ],
      ),
    );
  }
}
