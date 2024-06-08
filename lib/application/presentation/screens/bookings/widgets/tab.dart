import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class BookingsTab extends StatelessWidget {
  const BookingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookingController>(builder: (controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: kBlack),
                borderRadius: const BorderRadius.all(Radius.circular(24))),
            height: 30.h,
            width: 330.w,
            child: Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(24),
                        bottomLeft: Radius.circular(24)),
                    child: ColoredBox(
                      color: controller.selectedBookingTab.value == 1
                          ? kBluePrimary
                          : kGreylowLight,
                      child: TextButton(
                        onPressed: () {
                          controller.changeTab(1);
                        },
                        child: Text(
                          'Completed',
                          style: textThinStyle1.copyWith(
                            color: controller.selectedBookingTab.value == 1
                                ? kWhite
                                : kGreyDark,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const VerticalDivider(
                  color: kBlack,
                  thickness: 1,
                  width: 1,
                ),
                Expanded(
                  child: ColoredBox(
                    color: controller.selectedBookingTab.value == 2
                        ? kBluePrimary
                        : kGreylowLight,
                    child: TextButton(
                      onPressed: () {
                        controller.changeTab(2);
                      },
                      child: Text(
                        'Cancelled',
                        style: textThinStyle1.copyWith(
                          color: controller.selectedBookingTab.value == 2
                              ? kWhite
                              : kGreyDark,
                        ),
                      ),
                    ),
                  ),
                ),
                const VerticalDivider(
                  color: kBlack,
                  thickness: 2,
                  width: 1,
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(24),
                        bottomRight: Radius.circular(24)),
                    child: ColoredBox(
                      color: controller.selectedBookingTab.value == 3
                          ? kBluePrimary
                          : kGreylowLight,
                      child: TextButton(
                        onPressed: () {
                          controller.changeTab(3);
                        },
                        child: Text(
                          'Upcoming',
                          style: textThinStyle1.copyWith(
                            color: controller.selectedBookingTab.value == 3
                                ? kWhite
                                : kGreyDark,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          kHeight5,
        ],
      );
    });
  }
}
