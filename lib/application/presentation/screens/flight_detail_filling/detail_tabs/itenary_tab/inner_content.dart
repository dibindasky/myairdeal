import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/widgets/dotted_line.dart';

class InnerContents extends StatelessWidget {
  const InnerContents({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BookingController>();
    return Obx(() {
      return Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              kHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    controller.reviewPriceLoading.value?
                    flightDetailIcon:flightDetailIcon,
                    height: 20.h,
                  ),kWidth5,
                  Text(
                      controller.reviewedDetail?.value.tripInfos?[0].sI?[0].fD
                              ?.aI?.name ??
                          '',
                      style: textHeadStyle1),
                ],
              ),
              kHeight10,
              const DottedLines(height: 10),
              Column(
                children: List.generate(
                    controller.reviewedDetail?.value.tripInfos?.length ?? 0,
                    (index) {
                  final model =
                      controller.reviewedDetail?.value.tripInfos?[index];
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                model?.sI?[0].da?.city ?? '',
                                style: textThinStyle1.copyWith(fontSize: 10.sp),
                              ),
                              Text(model?.sI?[0].da?.code ?? '',
                                  style: textHeadStyle1),
                              kHeight5,
                              Text(
                                model?.sI?[0].da?.name ?? '',
                                style: textThinStyle1.copyWith(
                                  fontSize: 9.sp,
                                  color: kGrey,
                                ),
                              ),
                              kHeight5,
                              Text(
                                'Depart',
                                style: textThinStyle1.copyWith(
                                    color: kBlack, fontSize: 9.sp),
                              ),
                              kHeight5,
                              Text(
                                DateFormating.formatTime(
                                    model?.sI?[0].dt ?? ''),
                                style: textThinStyle1.copyWith(
                                  color: kBlack,
                                  fontSize: 12.sp,
                                ),
                              ),
                              kHeight5,
                              Text('Class',
                                  style: textThinStyle1.copyWith(
                                      color: kBlack, fontSize: 9.sp)),
                              kHeight5,
                              Text(
                                controller.reviewedDetail?.value.searchQuery
                                        ?.cabinClass ??
                                    '',
                                style: textThinStyle1.copyWith(
                                  color: kBlack,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '01h 45m',
                              style: textThinStyle1.copyWith(fontSize: 9.sp),
                            ),
                            kWidth5,
                            Row(
                              children: [
                                const CircleAvatar(
                                  radius: 3,
                                  backgroundColor: kGrey,
                                ),
                                ...List.generate(
                                  6,
                                  (index) => Text(
                                    '-',
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w800,
                                        color: kBlack),
                                  ),
                                ),
                                RotatedBox(
                                  quarterTurns: 1,
                                  child: Icon(Icons.flight_rounded,
                                      size: 24.w, color: kBlue),
                                ),
                                ...List.generate(
                                  6,
                                  (index) => Text(
                                    '-',
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w800,
                                        color: kBlack),
                                  ),
                                ),
                                const CircleAvatar(
                                  radius: 3,
                                  backgroundColor: kGrey,
                                ),
                              ],
                            ),
                            Text(
                              '0 Stop',
                              style: textThinStyle1.copyWith(fontSize: 9.sp),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                model?.sI?[(model.sI?.length ?? 1) - 1].aa
                                        ?.city ??
                                    '',
                                style: textThinStyle1.copyWith(fontSize: 10.sp),
                              ),
                              Text(
                                model?.sI?[(model.sI?.length ?? 1) - 1].aa
                                        ?.code ??
                                    '',
                                style: textHeadStyle1,
                              ),
                              kHeight5,
                              Text(
                                model?.sI?[(model.sI?.length ?? 1) - 1].aa
                                        ?.name ??
                                    '',
                                    textAlign: TextAlign.end,
                                style: textThinStyle1.copyWith(
                                  color: kGrey,
                                  fontSize: 10.sp,
                                ),
                              ),
                              kHeight5,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Arrival',
                                    style:
                                        textThinStyle1.copyWith(fontSize: 9.sp),
                                  ),
                                ],
                              ),
                              kHeight5,
                              Text(
                                DateFormating.formatTime(model
                                        ?.sI?[(model.sI?.length ?? 1) - 1].at ??
                                    ''),
                                style: textThinStyle1.copyWith(
                                  color: kBlack,
                                  fontSize: 12.sp,
                                ),
                              ),
                              kHeight5,
                              // Text(
                              //   'Hand Baggage',
                              //   style: textThinStyle1.copyWith(
                              //       color: kBlack, fontSize: 9.sp),
                              // ),
                              // kHeight5,
                              // Text(
                              //   '23Kg',
                              //   style: textThinStyle1.copyWith(
                              //     color: kBlack,
                              //     fontSize: 12.sp,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
              const DottedLines(height: 10),
              kHeight10,
            ],
          ),
          Positioned(
            left: 0,
            bottom: 4,
            child: Container(
              decoration: const BoxDecoration(
                color: kBlueDark,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              width: 20.w,
              height: 18.h,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 4,
            child: Container(
              decoration: const BoxDecoration(
                color: kBlueDark,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              width: 20.w,
              height: 18.h,
            ),
          ),
        ],
      );
    });
  }
}
