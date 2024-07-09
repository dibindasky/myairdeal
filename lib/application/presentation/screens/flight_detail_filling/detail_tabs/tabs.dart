import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    final travelController = Get.find<TravellerController>();
    return FittedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              4,
              (index) => GestureDetector(
                onTap: () {
                  travelController.changeDetailEnterTab(index);
                },
                child: Obx(
                  () => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      index != 0
                          ? StepConnector(
                              isComplete:
                                  travelController.selectedMainTab.value >=
                                      index,
                            )
                          : kEmpty,
                      Step(
                        isActive:
                            travelController.selectedMainTab.value == index
                                ? true
                                : false,
                        label: travelController.detailList[index],
                        isComplete:
                            travelController.selectedMainTab.value > index,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Step extends StatelessWidget {
  final bool isActive;
  final String label;
  final bool isComplete;

  const Step(
      {super.key,
      required this.isActive,
      required this.label,
      required this.isComplete});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.radio_button_checked,
          size: 24.w,
          color: isComplete || isActive ? kBluePrimary : kGreyDark,
        ),
        kHeight5,
        Text(
          label,
          style: textStyle1.copyWith(
            color: isComplete || isActive ? kBluePrimary : kGreyDark,
          ),
        ),
      ],
    );
  }
}

class StepConnector extends StatelessWidget {
  const StepConnector({super.key, required this.isComplete});

  final bool isComplete;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.w),
      width: 50.0.w,
      height: 3.0.h,
      color: isComplete ? kBluePrimary : kGrey,
    );
  }
}
