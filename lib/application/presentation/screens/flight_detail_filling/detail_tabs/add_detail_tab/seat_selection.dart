import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class SelectSeatContainer extends StatelessWidget {
  const SelectSeatContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TravellerController>();
    return Obx(() {
      return controller.seatIsLoading.value
          ? const Center(
              child: CircularProgressIndicator(color: kBluePrimary),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Select seat', style: textStyle1),
                kHeight15,
                Wrap(
                  children: [
                    ...List.generate(
                      5,
                      (index) => Column(
                        children: [
                          kHeight5,
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 6.w),
                            decoration: BoxDecoration(
                              borderRadius: kRadius10,
                              color: kRed.withOpacity(.2),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18.w, vertical: 3.w),
                              child: const Text('200'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
                          style: textThinStyle1.copyWith(color: kBluePrimary)),
                      Text('Economy',
                          style: textStyle1.copyWith(color: kBlueDark)),
                      kHeight10,
                      Obx(
                        () {
                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: List.generate(
                                controller.row.value,
                                (row) {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                      controller.col.value,
                                      (col) {
                                        final seat =
                                            controller.seatList[row][col];
                                        return Container(
                                          margin: EdgeInsets.only(
                                              left: seat.freeSpace ?? false
                                                  ? 0
                                                  : 5,
                                              right: seat.freeSpace ?? false
                                                  ? 0
                                                  : 5,
                                              top: seat.freeSpace ?? false
                                                  ? 0
                                                  : 5,
                                              bottom: seat.freeSpace ?? false
                                                  ? 0
                                                  : 5),
                                          height: seat.freeSpace ?? false
                                              ? 0
                                              : seat.isLegroom ?? false
                                                  ? 30.h
                                                  : 25.h,
                                          width: 25.w,
                                          decoration: BoxDecoration(
                                            color: seat.freeSpace ?? false
                                                ? knill
                                                : (seat.isBooked ?? true)
                                                    ? kGrey
                                                    : kWhite,
                                            border: seat.isBooked ?? true
                                                ? null
                                                : Border.all(
                                                    color:
                                                        seat.freeSpace ?? false
                                                            ? knill
                                                            : kBlueDark),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: (seat.freeSpace ??
                                                  false ||
                                                      (seat.isBooked ?? true))
                                              ? kEmpty
                                              : Column(
                                                  children: [
                                                    seat.isLegroom ?? false
                                                        ? Container(
                                                            height: 5.h,
                                                            decoration:
                                                                const BoxDecoration(
                                                              color: kIndigo,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        4),
                                                                topRight: Radius
                                                                    .circular(
                                                                        4),
                                                              ),
                                                            ),
                                                          )
                                                        : kEmpty,
                                                    const Spacer(),
                                                    FittedBox(
                                                        child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 2,
                                                          vertical: 3),
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                            seat.amount ==
                                                                        null ||
                                                                    seat.amount ==
                                                                        0
                                                                ? 'Free'
                                                                : '₹ ${seat.amount ?? '0'}',
                                                            style: textThinStyle1
                                                                .copyWith(
                                                                    fontSize:
                                                                        7.sp),
                                                          ),
                                                        ],
                                                      ),
                                                    ))
                                                  ],
                                                ),
                                        );
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
                kHeight10,
                kHeight20,
                // const BottomButton(),
                kHeight15
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
                  border: Border.all(color: kBluePrimary),
                  borderRadius: const BorderRadius.all(Radius.circular(2)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 4.h,
                      width: 12.w,
                      decoration: const BoxDecoration(
                        color: kIndigo,
                        borderRadius: BorderRadius.only(
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
                  border: Border.all(color: kBluePrimary),
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
                decoration: const BoxDecoration(
                  color: kBluePrimary,
                  borderRadius: BorderRadius.all(Radius.circular(2)),
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
                  border: Border.all(color: kBlueDark),
                  color: kGreen,
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

//  AnimatedContainer(
//                                   duration: const Duration(milliseconds: 300),
//                                   margin: EdgeInsets.only(
//                                       left: col == 3 ? 20 : 10,
//                                       right: col == 2 ? 20 : 10,
//                                       top: 5,
//                                       bottom: 5),
//                                   height: 35.h,
//                                   width: 30.w,
//                                   decoration: BoxDecoration(
//                                     color: controller.getSeatColor(row, col),
//                                     border: controller.seatLayout[row][col] ==
//                                             'free'
//                                         ? Border.all(color: kBlueDark)
//                                         : null,
//                                     borderRadius: BorderRadius.circular(5),
//                                   ),
//                                   child: controller.selectedSeats[row][col]
//                                       ? Center(
//                                           child: Text(
//                                             '${String.fromCharCode(65 + col)}${row + 1}',
//                                             style: textThinStyle1.copyWith(
//                                                 color: controller
//                                                         .selectedSeats[row][col]
//                                                     ? kWhite
//                                                     : kBlack),
//                                           ),
//                                         )
//                                       : null,
//                                 )
