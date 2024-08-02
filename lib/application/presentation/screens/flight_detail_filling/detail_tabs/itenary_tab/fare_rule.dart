import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class FareRulesScreen extends StatelessWidget {
  const FareRulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const DetailAppBar(heading: 'Check Fare Rule'),
            Padding(
              padding: EdgeInsets.all(10.w),
              child: GetBuilder<BookingController>(builder: (controller) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: kBlueThinLIght),
                        color: klightWhite,
                        boxShadow: boxShadow1,
                      ),
                      padding: EdgeInsets.all(8.w),
                      child: Text(controller.fareRuleKeysList.last,
                          style: textThinStyle1),
                    ),
                    kHeight20,
                    Text(
                      'Mentioned fees are Per Pax Per Sector\nApart from airline charges, GST + RAF + applicable charges if any, will be charged.',
                      style: textThinStyle1.copyWith(color: kRed),
                    ),
                    kHeight20,
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 10.0),
                      padding: EdgeInsets.all(10.w),
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: kRadius10,
                        boxShadow: boxShadow1,
                      ),
                      child: Column(
                          children: List.generate(
                        controller.fareRuleSection.value.tfr?.cancellation
                                ?.length ??
                            0,
                        (index) => buildFareRuleContainer(
                            title:
                                controller.fareRuleSection.value.tfr?.noShow !=
                                        null
                                    ? 'NO SHOW'
                                    : '',
                            content: 'Policy Info',
                            subTiitle: controller.fareRuleSection.value.tfr
                                    ?.noShow?[index].policyInfo
                                    ?.replaceAll('__nls__', '')
                                    .toString() ??
                                "",
                            amountSecond: controller.fareRuleSection.value.tfr
                                    ?.noShow?[index].et ??
                                ""),
                      )),
                    ),
                    kHeight5,
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 10.0),
                      padding: EdgeInsets.all(10.w),
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: kRadius10,
                        boxShadow: boxShadow1,
                      ),
                      child: Column(
                          children: List.generate(
                        controller.fareRuleSection.value.tfr?.cancellation
                                ?.length ??
                            0,
                        (index) => buildFareRuleContainer(
                          title: controller
                                      .fareRuleSection.value.tfr?.datechange !=
                                  null
                              ? 'DATECHANGE'
                              : '',
                          content: 'Policy Info',
                          subTiitle: controller.fareRuleSection.value.tfr
                                  ?.datechange?[index].policyInfo
                                  ?.replaceAll('__nls__', '')
                                  .toString() ??
                              "",
                          amountSecond: controller.fareRuleSection.value.tfr
                                  ?.datechange?[index].et
                                  .toString() ??
                              "",
                        ),
                      )),
                    ),
                    kHeight5,
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 10.0),
                      padding: EdgeInsets.all(10.w),
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: kRadius10,
                        boxShadow: boxShadow1,
                      ),
                      child: Column(
                          children: List.generate(
                        controller.fareRuleSection.value.tfr?.cancellation
                                ?.length ??
                            0,
                        (index) => buildFareRuleContainer(
                          title: controller.fareRuleSection.value.tfr
                                      ?.cancellation !=
                                  null
                              ? 'CANCELLATION'
                              : '',
                          content: 'Policy Info',
                          subTiitle: controller.fareRuleSection.value.tfr
                                  ?.cancellation?[index].policyInfo
                                  ?.replaceAll('__nls__', '')
                                  .toString() ??
                              "",
                          amountSecond: controller.fareRuleSection.value.tfr
                              ?.cancellation?[index].et
                              .toString(),
                        ),
                      )),
                    ),
                    kHeight5,
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 10.0),
                      padding: EdgeInsets.all(10.w),
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: kRadius10,
                        boxShadow: boxShadow1,
                      ),
                      child: Column(
                          children: List.generate(
                        controller.fareRuleSection.value.tfr?.cancellation
                                ?.length ??
                            0,
                        (index) => buildFareRuleContainer(
                          title: controller.fareRuleSection.value.tfr
                                      ?.seatChargeable !=
                                  null
                              ? 'SEAT CHARGEABLE'
                              : '',
                          content: 'Policy Info',
                          subTiitle: controller.fareRuleSection.value.tfr
                                  ?.seatChargeable?[index].policyInfo
                                  .toString() ??
                              "",
                          amountSecond: controller.fareRuleSection.value.tfr
                                  ?.seatChargeable?[index].et
                                  ?.replaceAll('__nls__', '')
                                  .toString() ??
                              "",
                        ),
                      )),
                    ),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFareRuleContainer({
    String? title,
    String? content,
    String? subTiitle,
    String? amountSecond,
    String? contentTwo,
    String? contentThree,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title != null && title != '' ? Text(title, style: textStyle1) : kEmpty,
        title != null && title != '' ? kHeight5 : kEmpty,
        content != null || subTiitle != null && subTiitle != ''
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    content ?? 'N/A',
                    style: textThinStyle1.copyWith(
                        fontSize: 13.sp, fontWeight: FontWeight.w700),
                    maxLines: 4,
                  ),
                  kWidth20,
                  Expanded(
                    child: Text(subTiitle ?? 'N/A',
                        style: textThinStyle1, maxLines: 4),
                  ),
                ],
              )
            : kEmpty,
        subTiitle != null &&
                subTiitle != '' &&
                (title != null && title != '') &&
                amountSecond != null &&
                amountSecond != 'null' &&
                amountSecond != ''
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Amount',
                      style: textThinStyle1.copyWith(
                          fontSize: 13.sp, fontWeight: FontWeight.w700)),
                  kWidth20,
                  Text('₹ $amountSecond.', style: textThinStyle1),
                ],
              )
            : kEmpty,
        // content != null && title != null && title != '' && contentTwo != null
        //     ? Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Text('Ammout',
        //               style: textThinStyle1.copyWith(
        //                   fontSize: 13.sp, fontWeight: FontWeight.w700)),
        //           kWidth20,
        //           Text(contentTwo, style: textThinStyle1),
        //         ],
        //       )
        //     : kEmpty,
      ],
    );
  }
}
