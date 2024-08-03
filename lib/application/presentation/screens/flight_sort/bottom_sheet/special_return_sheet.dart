import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/network_image_loader.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class SpecialReturnBottomSheet extends StatelessWidget {
  const SpecialReturnBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Obx(() {
        final airlinesKeys = controller.specialRetrunAirlines.keys.toList();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            kHeight5,
            Center(
              child: Container(
                width: 80.w,
                height: 5.h,
                decoration: BoxDecoration(color: kGrey, borderRadius: kRadius5),
              ),
            ),
            kHeight40,
            Text('Special Return', style: textHeadStyle1),
            kHeight10,
            const Divider(color: kGrey),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: airlinesKeys.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          controller.changeSpecialReturnSelection(
                              airlinesKeys[index]);
                        },
                        child: Container(
                          color: kWhite,
                          child: Row(
                            children: [
                              NetworkImageWithLoading(
                                  height: 20.h,
                                  width: 20.h,
                                  margin: EdgeInsets.only(right: 10.h),
                                  imageUrl:
                                      getAirlineLogo(airlinesKeys[index])),
                              Text(
                                  controller.specialRetrunAirlines[
                                      airlinesKeys[index]]!,
                                  style: textStyle1),
                              const Spacer(),
                              Obx(() {
                                return Checkbox(
                                  value: airlinesKeys[index] ==
                                      controller
                                          .selectedSpecialReturnAirline.value,
                                  onChanged: (value) {
                                    controller.changeSpecialReturnSelection(
                                        airlinesKeys[index]);
                                  },
                                  activeColor: kBluePrimary,
                                );
                              })
                            ],
                          ),
                        ),
                      ),
                    ),
                    kHeight5,
                    EventButton(
                        text: 'Search flights',
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        width: double.infinity),
                    kHeight20,
                  ],
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
