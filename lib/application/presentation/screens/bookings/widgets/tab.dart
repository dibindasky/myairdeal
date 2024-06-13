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
            // height: 30.h,
            width: 330.w,
            child: Row(
              children: [
                TabChildIcon(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(24),
                        bottomLeft: Radius.circular(24)),
                    text: 'Completed',
                    onTap: () {
                      controller.changeTab(1);
                    },
                    selected: controller.selectedBookingTab.value == 1),
                ColoredBox(
                  color: kBlack,
                  child: SizedBox(width: 2, height: 20.h),
                ),
                TabChildIcon(
                    borderRadius: const BorderRadius.only(),
                    text: 'Cancelled',
                    onTap: () {
                      controller.changeTab(2);
                    },
                    selected: controller.selectedBookingTab.value == 2),
                ColoredBox(
                  color: kBlack,
                  child: SizedBox(width: 2, height: 20.h),
                ),
                TabChildIcon(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(24),
                        bottomRight: Radius.circular(24)),
                    text: 'Upcoming',
                    onTap: () {
                      controller.changeTab(3);
                    },
                    selected: controller.selectedBookingTab.value == 3),
              ],
            ),
          )
        ],
      );
    });
  }
}

class TabChildIcon extends StatelessWidget {
  const TabChildIcon(
      {super.key,
      required this.selected,
      required this.onTap,
      required this.text,
      required this.borderRadius});

  final bool selected;
  final VoidCallback onTap;
  final String text;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: borderRadius,
        child: ColoredBox(
          color: selected ? kBluePrimary : kGreylowLight,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 7.h),
            child: GestureDetector(
              onTap: onTap,
              child: Center(
                child: Text(
                  text,
                  style: textThinStyle1.copyWith(
                    color: selected ? kWhite : kGreyDark,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
