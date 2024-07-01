import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/seat/seat_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class SelectSeatContainer extends StatelessWidget {
  const SelectSeatContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Select seat', style: textHeadStyle1),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 18.w, vertical: 3.w),
                      child: const Text('200'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        kHeight15,
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
          decoration: BoxDecoration(
              borderRadius: kRadius50,
              border: Border.all(color: kBlueLight),
              boxShadow: boxShadow3),
          child: Row(
            children: [
              kWidth10,
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
              const Spacer(),
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
              const Spacer(),
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
              kWidth10
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          //margin: EdgeInsets.symmetric(horizontal: 15.w),
          decoration: BoxDecoration(
              boxShadow: boxShadow1, color: kWhite, borderRadius: kRadius10),
          child: Column(
            children: [
              kHeight10,
              Text('Class',
                  style: textThinStyle1.copyWith(color: kBluePrimary)),
              Text('Economy', style: textStyle1.copyWith(color: kBlueDark)),
              GetBuilder<SeatController>(
                builder: (controller) => FittedBox(
                  child: Column(
                    children: List.generate(controller.seatLayout.length + 1,
                        (index) {
                      // set row as index -1 because need to display seat number and row in first index
                      int row = index - 1;
                      return Row(
                        children: List.generate(
                          controller.seatLayout[row == -1 ? 0 : row].length + 1,
                          (index) {
                            // set col as index -1 because need to display seat number and row in first index
                            int col = index - 1;
                            if (col == -1 || row == -1) {
                              // while row and column is in the first index show number and alphabet
                              return Container(
                                margin: EdgeInsets.only(
                                    left: col == 3 ? 20 : 10.w,
                                    right: col == 2 ? 20 : 10.w,
                                    top: 5.h,
                                    bottom: 5.h),
                                height: col == -1 && row == -1
                                    ? 0
                                    : row == -1
                                        ? 15.h
                                        : 35.h,
                                width: col == -1 && row == -1
                                    ? 15.w
                                    : col == -1
                                        ? 15.w
                                        : 30.w,
                                child: Center(
                                  child: Text(row == -1 && col == -1
                                      ? ''
                                      : row == -1
                                          ? String.fromCharCode(65 + col)
                                          : col == -1
                                              ? '${row + 1}'
                                              : ''),
                                ),
                              );
                            } else {
                              // show seats
                              return GestureDetector(
                                onTap: () {
                                  controller.onSeatTap(row, col);
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  margin: EdgeInsets.only(
                                      left: col == 3 ? 20 : 10,
                                      right: col == 2 ? 20 : 10,
                                      top: 5,
                                      bottom: 5),
                                  height: 35.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                    color: controller.getSeatColor(row, col),
                                    border: controller.seatLayout[row][col] ==
                                            'free'
                                        ? Border.all(color: kBlueDark)
                                        : null,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: controller.selectedSeats[row][col]
                                      ? Center(
                                          child: Text(
                                            '${String.fromCharCode(65 + col)}${row + 1}',
                                            style: textThinStyle1.copyWith(
                                                color: controller
                                                        .selectedSeats[row][col]
                                                    ? kWhite
                                                    : kBlack),
                                          ),
                                        )
                                      : null,
                                ),
                              );
                            }
                          },
                        ),
                      );
                    }),
                  ),
                ),
              ),
              kHeight10
            ],
          ),
        ),
        kHeight10,
      ],
    );
  }
}
