import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class PassengerDetailsTab extends StatefulWidget {
  const PassengerDetailsTab({super.key});

  @override
  State<PassengerDetailsTab> createState() => _PassengerDetailsTabState();
}

class _PassengerDetailsTabState extends State<PassengerDetailsTab> {
  late ScrollController scrollController;
  @override
  void initState() {
    scrollController = ScrollController(initialScrollOffset: 0);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  // variable responsible for controller assigning to singlechildscroll and
  // animation start from the second tab
  int check = 0;

  @override
  Widget build(BuildContext context) {
    final travelController = Get.find<TravellerController>();
    return GetBuilder<TravellerController>(builder: (controller) {
      if (check != 0) {
        // auto scroll tab according to the tab index
        final onePotion = scrollController.position.maxScrollExtent /
            controller.totalSubStepLength;
        scrollController.animateTo(
            travelController.selectedAddDetailsStep.value == 0
                ? scrollController.position.minScrollExtent
                : travelController.selectedAddDetailsStep.value ==
                        ((controller.totalSubStepLength) - 1)
                    ? scrollController.position.maxScrollExtent
                    : onePotion * travelController.selectedAddDetailsStep.value,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut);
      }
      check++;
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          kWidth10,
          GestureDetector(
            onTap: () {
              travelController.changeAddDetailsSubStepMinus();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: kBlue,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text(
                //         '${controller.selectedAddDetailsStep.value + 1}/${controller.totalSubStepLength} : Step ${controller.selectedAddDetailsStep.value + 1}'),
                //     InkWell(
                //       onTap: () {
                //         travelController.changeSelectedDetailStepArrow(
                //             !travelController.selectedDetailStepArrow.value);
                //       },
                //       child: Obx(
                //         () => Icon(
                //             travelController.selectedDetailStepArrow.value
                //                 ? Icons.arrow_drop_up_outlined
                //                 : Icons.arrow_drop_down),
                //       ),
                //     ),
                //   ],
                // ),
                // kHeight5,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: scrollController,
                  child: Row(
                    children: List.generate(
                      controller.totalSubStepLength,
                      (index) => GestureDetector(
                        onTap: () {
                          if (travelController.selectedAddDetailsStep.value >
                              index) {
                            travelController.changeAddDetailsSubStep(index);
                          }
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 10.w),
                          width: 1.sw / 7,
                          height: 4.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color:
                                travelController.selectedAddDetailsStep.value >=
                                        index
                                    ? kBlueDark
                                    : kGrey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
