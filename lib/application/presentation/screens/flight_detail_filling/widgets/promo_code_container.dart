import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';

class PromoCodeContainer extends StatelessWidget {
  const PromoCodeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BookingController>();
    return Container(
      decoration: BoxDecoration(
          color: kWhite, boxShadow: boxShadow1, borderRadius: kRadius15),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Promo code',
              style: textStyle1,
            ),
            kHeight5,
            Obx(() => Align(
                alignment: Alignment.topLeft,
                child: AnimatedContainer(
                  height: controller.promoResponse.value.value != null &&
                          !controller.promoLoading.value
                      ? 15.h
                      : 0,
                  duration: const Duration(milliseconds: 300),
                  child: FittedBox(
                    child: Text(
                      '${controller.promoResponse.value.value ?? 0} has been successfully applied',
                      style: textThinStyle1.copyWith(color: kGreen),
                    ),
                  ),
                ))),
            Row(
              children: [
                Obx(() {
                  return Expanded(
                    child: CupertinoTextField(
                      onTapOutside: (event) => FocusScope.of(context).unfocus(),
                      controller: controller.promoController,
                      decoration: BoxDecoration(
                        color: Get.find<ThemeController>().secondaryLightColor,
                        borderRadius: kRadius5,
                        border: Border.all(
                            color: Get.find<ThemeController>().secondaryColor),
                      ),
                      placeholder: 'Enter Promo code',
                    ),
                  );
                }),
                kWidth10,
                Obx(() {
                  return controller.promoLoading.value
                      ? Center(
                          child: CircularProgressIndicator(
                            color: Get.find<ThemeController>().primaryColor,
                          ),
                        )
                      : EventButton(
                          hieght: 31.h,
                          width: 70.w,
                          text: 'Apply',
                          fontSize: 12.sp,
                          onTap: () {
                            controller
                                .checkPromo(controller.promoController.text);
                          },
                        );
                })
              ],
            ),
            Obx(() => Align(
                  alignment: Alignment.topLeft,
                  child: AnimatedContainer(
                    height: controller.promoErrorCode.value != '' ? 15.h : 0,
                    duration: const Duration(milliseconds: 300),
                    child: FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            '* ',
                            style: TextStyle(color: kRed),
                          ),
                          Text(
                            controller.promoErrorCode.value,
                            style: textThinStyle1.copyWith(color: kRed),
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
            // ListView.builder(
            //   padding: const EdgeInsets.all(0),
            //   physics: const NeverScrollableScrollPhysics(),
            //   itemCount: 0,
            //   shrinkWrap: true,
            //   itemBuilder: (context, index) {
            //     return CustomRadioButton(
            //       onChanged: () {},
            //       selected: true,
            //       child:
            //           GetBuilder<FlightSortController>(builder: (controller) {
            //         return ListTile(
            //           title: Row(
            //             mainAxisSize: MainAxisSize.min,
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             children: [
            //               DashedBorder(
            //                 color: kOrangeLight,
            //                 child: Padding(
            //                   padding: const EdgeInsets.symmetric(
            //                       horizontal: 7, vertical: 2),
            //                   child: Text(
            //                     'YRICICICC',
            //                     style: textThinStyle1,
            //                   ),
            //                 ),
            //               ),
            //               kWidth5,
            //               Text(
            //                 'Save ₹ 224',
            //                 style: textThinStyle1,
            //               ),
            //             ],
            //           ),
            //           subtitle: Text(
            //             'Upto 13% OFF on using ICICI Bank Credit card',
            //             style: textThinStyle1.copyWith(
            //                 color: kGreyDark, fontSize: 9.sp),
            //           ),
            //           leading: index == 0
            //               ? const Icon(Icons.radio_button_checked, color: kBlue)
            //               : const Icon(Icons.radio_button_unchecked),
            //         );
            //       }),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
