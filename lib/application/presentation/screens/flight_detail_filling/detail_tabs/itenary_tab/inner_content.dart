import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/traveler_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/widgets/dotted_line.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/flight_invoice/widgets/ticket_column.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/normal_center_items.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/ssr_info.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/si.dart';

class InnerContents extends StatelessWidget {
  const InnerContents({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BookingController>();
    final travellerController = Get.find<TravellerController>();
    final themeController = Get.find<ThemeController>();

    return Obx(() {
      return Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: List.generate(
                    controller.reviewedDetail?.value.tripInfos?.length ?? 0,
                    (index) {
                  final model =
                      controller.reviewedDetail?.value.tripInfos?[index];
                  List<SsrInfo?>? seats =
                      travellerController.selectedSeats[model?.sI?[0].id ?? ''];
                  final code = seats
                      ?.map((e) =>
                          e?.code != '' && e?.code != null ? e?.code : 'N/S')
                      .toList();
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CustomExpansionTile(
                      isBorder: false,
                      isExpandable: (controller.reviewedDetail?.value
                                  .tripInfos?[index].sI?.length ??
                              1) >
                          1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TicketColumn(
                                  valueStyle: textHeadStyle1,
                                  label:
                                      '${model?.sI?[0].da?.city ?? ''}, ${model?.sI?[0].da?.country ?? ''}',
                                  value: model?.sI?[0].da?.code ?? '',
                                  subValue: model?.sI?[0].da?.name ?? '',
                                ),
                                kHeight5,
                                (model?.sI?.length ?? 1) > 1
                                    ? kEmpty
                                    : TicketColumn(
                                        label: 'Departure',
                                        value: DateFormating.formatDate(
                                            model?.sI?[0].dt ?? ''),
                                        valueStyle: textThinStyle1.copyWith(
                                            overflow: TextOverflow.visible),
                                        subValue:
                                            model?.sI?[0].da?.terminal ?? '',
                                        exit: 'Cabin Class',
                                        flightCode: 'Seat No',
                                        cabinBaggage: 'Checkin Baggage',
                                        checkinBaggage: 'Cabin Baggage',
                                      ),
                              ],
                            ),
                          ),
                          NormalCenterItems(
                            airline: model?.sI?[0].fD?.aI?.name ?? '',
                            airlineCode: model?.sI?[0].fD?.aI?.code ?? '',
                            haveImage: false,
                            number: (model?.sI?.length ?? 0) > 1
                                ? ''
                                : '${model?.sI?[0].fD?.aI?.code ?? ''}- ${model?.sI?[0].fD?.fN ?? ''}',
                            travelMinutes: DateFormating.getDurationOfFlights(
                                si: model?.sI ?? <SI>[]),
                            stops: (model?.sI?.length ?? 1) - 1,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                TicketColumn(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  valueStyle: textHeadStyle1,
                                  label:
                                      '${model?.sI?[(model.sI?.length ?? 1) - 1].aa?.city ?? ''}, ${model?.sI?[(model.sI?.length ?? 1) - 1].aa?.country ?? ''}',
                                  value: model?.sI?[(model.sI?.length ?? 1) - 1]
                                          .aa?.code ??
                                      '',
                                  subValue: model
                                          ?.sI?[(model.sI?.length ?? 1) - 1]
                                          .aa
                                          ?.name ??
                                      '',
                                ),
                                kHeight5,
                                (model?.sI?.length ?? 1) > 1
                                    ? kEmpty
                                    : TicketColumn(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        label: 'Arrival',
                                        value: DateFormating.formatDate(
                                            model?.sI?[(model.sI?.length ?? 1) - 1].at ??
                                                ''),
                                        valueStyle: textThinStyle1.copyWith(
                                            overflow: TextOverflow.visible),
                                        subValue:
                                            model?.sI?[(model.sI?.length ?? 1) - 1].aa?.terminal ??
                                                '',
                                        exit: controller.reviewedDetail?.value
                                                .searchQuery?.cabinClass ??
                                            '',
                                        flightCode: code != null && code.isNotEmpty
                                            ? code.toString().substring(
                                                1, code.toString().length - 1)
                                            : 'N/A',
                                        cabinBaggage: model?.totalPriceList?[0]
                                            .fd?.adult?.bI?.iB,
                                        checkinBaggage: model?.totalPriceList?[0].fd?.adult?.bI?.cB),
                              ],
                            ),
                          ),
                        ],
                      ),
                      children: List.generate(
                        controller.reviewedDetail?.value.tripInfos?[index].sI
                                ?.length ??
                            0,
                        (stop) {
                          List<SsrInfo?>? seats = travellerController
                              .selectedSeats['${model?.sI?[stop].id}'];
                          final code = seats?.map((e) => e?.code).toList();
                          return Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 3.h),
                                decoration: BoxDecoration(
                                    color: klightWhite,
                                    borderRadius: kRadius10),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 7.h),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TicketColumn(
                                                label:
                                                    '${model?.sI?[stop].da?.city ?? ''}, ${model?.sI?[stop].da?.country ?? ''}',
                                                value:
                                                    model?.sI?[stop].da?.code ??
                                                        '',
                                                subValue:
                                                    model?.sI?[stop].da?.name ??
                                                        '',
                                              ),
                                            ],
                                          ),
                                        ),
                                        kWidth5,
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            kHeight10,
                                            Text(
                                              DateFormating
                                                  .convertMinutesToHoursMinutes(
                                                      model?.sI?[stop]
                                                              .duration ??
                                                          0),
                                              style: textThinStyle1.copyWith(
                                                  fontSize: 9.sp),
                                            ),
                                            kWidth5,
                                            Row(
                                              children: [
                                                const CircleAvatar(
                                                  radius: 3,
                                                  backgroundColor: kGrey,
                                                ),
                                                ...List.generate(
                                                  10,
                                                  (index) => Text(
                                                    '-',
                                                    style: TextStyle(
                                                        fontSize: 8.sp,
                                                        fontWeight:
                                                            FontWeight.w800,
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
                                              '${model?.sI?[stop].fD?.aI?.code ?? ''} - ${model?.sI?[stop].fD?.fN ?? ''}',
                                              style: textStyle1.copyWith(
                                                  fontSize: 10.sp),
                                            ),
                                          ],
                                        ),
                                        kWidth5,
                                        Expanded(
                                          child: TicketColumn(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            label:
                                                '${model?.sI?[stop].aa?.city ?? ''}, ${model?.sI?[stop].aa?.country ?? ''}',
                                            value:
                                                model?.sI?[stop].aa?.code ?? '',
                                            subValue:
                                                model?.sI?[stop].aa?.name ?? '',
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TicketColumn(
                                          label: 'Departure',
                                          value: DateFormating.formatDate(
                                              model?.sI?[stop].dt ?? ''),
                                          valueStyle: textThinStyle1,
                                          subValue:
                                              model?.sI?[stop].da?.terminal ??
                                                  '',
                                          exit: 'Cabin Class',
                                          flightCode: 'Seat No',
                                          cabinBaggage: 'Checkin Baggage',
                                          checkinBaggage: 'Cabin Baggage',
                                        ),
                                        TicketColumn(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            label: 'Arrival',
                                            value: DateFormating.formatDate(
                                                model?.sI?[stop].at ?? ''),
                                            valueStyle: textThinStyle1,
                                            subValue:
                                                model?.sI?[stop].aa?.terminal ??
                                                    '',
                                            exit: controller
                                                    .reviewedDetail
                                                    ?.value
                                                    .searchQuery
                                                    ?.cabinClass ??
                                                '',
                                            flightCode: code != null && code.isNotEmpty
                                                ? code.toString().substring(1,
                                                    code.toString().length - 1)
                                                : 'N/A',
                                            cabinBaggage: model
                                                ?.totalPriceList?[0]
                                                .fd
                                                ?.adult
                                                ?.bI
                                                ?.iB,
                                            checkinBaggage: model
                                                ?.totalPriceList?[0]
                                                .fd
                                                ?.adult
                                                ?.bI
                                                ?.cB),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              (model?.sI?.length ?? 1) - 1 == stop
                                  ? kEmpty
                                  : Text(
                                      '---- Layover Time - ${DateFormating.getDifferenceOfDates(model?.sI?[stop].at ?? '', model?.sI?[stop + 1].dt ?? '')} ----')
                            ],
                          );
                        },
                      ),
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
              decoration: BoxDecoration(
                color: themeController.primaryColor,
                borderRadius: const BorderRadius.only(
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
              decoration: BoxDecoration(
                color: themeController.primaryColor,
                borderRadius: const BorderRadius.only(
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
