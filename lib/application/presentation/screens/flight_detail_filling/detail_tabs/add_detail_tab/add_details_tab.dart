import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class DetailsTab extends StatelessWidget {
  const DetailsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final travelController = Get.find<TravellerController>();
    return Obx(
      () {
        final selectedTab = travelController.selectedAddDetailsStep.value;
        return Row(
          children: [
            const Icon(
              Icons.arrow_back_ios,
              color: kBlue,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${selectedTab + 1}/5 : Step ${selectedTab + 1}'),
                      InkWell(
                        onTap: () {
                          travelController.changeSelectedDetailStepArrow(
                              !travelController.selectedDetailStepArrow.value);
                        },
                        child: Obx(
                          () => Icon(
                              travelController.selectedDetailStepArrow.value
                                  ? Icons.arrow_drop_up_outlined
                                  : Icons.arrow_drop_down),
                        ),
                      ),
                    ],
                  ),
                  kHeight5,
                  Row(
                    children: [
                      ...List.generate(
                        5,
                        (index) => GestureDetector(
                          onTap: () {
                            travelController.changeAddDetailsSubStep(index);
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 10.w),
                            width: 1.sw / 7,
                            height: 3.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: travelController
                                          .selectedAddDetailsStep.value ==
                                      index
                                  ? kBlueDark
                                  : kGrey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
