import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myairdeal/application/controller/raice_ticket/raice_ticket_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class YouCouldAlso extends StatelessWidget {
  YouCouldAlso({super.key});

  final raiceController = Get.find<RaiceTicketController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You could also',
          style:
              textStyle1.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
        kHeight5,
        Row(
          children: List.generate(
            raiceController.youCouldAlsoTexts.length,
            (index) {
              List<IconData> icons = [
                Iconsax.personalcard4,
                Icons.report_problem_outlined,
                Icons.call
              ];
              return Expanded(
                child: Row(
                  children: [
                    index != 0 ? kWidth5 : kEmpty,
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          raiceController.changeSelectedYouCouldAlsoTab(index);
                        },
                        child: Obx(
                          () => Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.h, horizontal: 5.w),
                            decoration: BoxDecoration(
                                color: index ==
                                            raiceController
                                                .selectedYouCouldAlsoTab
                                                .value &&
                                        raiceController.selectedYouCouldAlsoTab
                                                .value !=
                                            2
                                    ? kWhite
                                    : kBlueLightShade,
                                border: Border.all(
                                    color: kBluePrimary.withOpacity(0.3)),
                                borderRadius: kRadius10),
                            child: raiceController.youCouldAlsoTexts[index] ==
                                        'Reports' &&
                                    raiceController.isLoading.value
                                ? SizedBox(
                                    width: 50.h,
                                    height: 50.h,
                                    child: const Center(
                                      child: CircularProgressIndicator(
                                          color: kBlueLight),
                                    ))
                                : Column(
                                    children: [
                                      kHeight5,
                                      Icon(icons[index], color: kIndigo),
                                      kHeight5,
                                      FittedBox(
                                        child: Text(
                                            raiceController
                                                .youCouldAlsoTexts[index],
                                            style: textThinStyle1.copyWith(
                                                color: kIndigo)),
                                      ),
                                      kHeight5
                                    ],
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        kHeight5,
      ],
    );
  }
}
