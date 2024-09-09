import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/itenary_tab/fare_summary.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/utils/formating/text_input_formating.dart';
import 'package:myairdeal/application/presentation/widgets/dotted_line.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/flight_invoice/widgets/ticket_column.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/normal_center_items.dart';
import 'package:myairdeal/domain/models/booking/get_single_booking/get_single_booking.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/si.dart';

class FlightInvoiceCard extends StatelessWidget {
  const FlightInvoiceCard({super.key, this.retrieveSingleBookingresponceModel});
  final GetSingleBooking? retrieveSingleBookingresponceModel;
  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    final travelersData = retrieveSingleBookingresponceModel
        ?.retrieveSingleBookingresponceModel?.itemInfos?.air?.travellerInfos;
    final tripInfos = retrieveSingleBookingresponceModel
        ?.retrieveSingleBookingresponceModel?.itemInfos?.air?.tripInfos;
    final travellerInfos = retrieveSingleBookingresponceModel
        ?.retrieveSingleBookingresponceModel?.itemInfos?.air?.travellerInfos;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: themeController.secondaryLightColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: boxShadow2,
        border: Border.all(
          color: retrieveSingleBookingresponceModel
                      ?.retrieveSingleBookingresponceModel?.order?.status ==
                  'CANCELLED'
              ? kRed
              : knill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text('Booking ID'),
              kWidth20,
              const Text(' :'),
              kWidth20,
              Text(
                  retrieveSingleBookingresponceModel
                          ?.retrieveSingleBookingresponceModel
                          ?.order
                          ?.bookingId ??
                      '--',
                  style: textThinStyle1),
            ],
          ),
          kHeight5,
          retrieveSingleBookingresponceModel != null &&
                  retrieveSingleBookingresponceModel?.amendment != null &&
                  retrieveSingleBookingresponceModel!.amendment!.isNotEmpty
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text((retrieveSingleBookingresponceModel
                                    ?.amendment?.length ??
                                0) >
                            1
                        ? 'Amendment ID\'s'
                        : 'Amendment ID'),
                    kWidth10,
                    const Text(':'),
                    kWidth5,
                    Column(
                      children: List.generate(
                        retrieveSingleBookingresponceModel?.amendment?.length ??
                            0,
                        (index) => Text(
                            retrieveSingleBookingresponceModel
                                    ?.amendment?[index].id
                                    ?.trim() ??
                                '--',
                            style: textThinStyle1),
                      ),
                    )
                  ],
                )
              : kEmpty,
          const DottedLines(height: 10),
          kHeight10,
          travelersData?[0].fN != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      (travelersData?.length ?? 0) > 1
                          ? 'Passengers Name'
                          : 'Passenger Name',
                      style: textStyle1.copyWith(
                          fontSize: 14.sp, fontWeight: FontWeight.w600),
                    ),
                    kHeight5,
                    ...List.generate(
                      travelersData?.length ?? 0,
                      (index) => Text(
                        '${travelersData?[index].ti}  ${travelersData?[index].fN} ${travelersData?[index].lN}  (${travelersData?[index].pt})',
                        style: textThinStyle1.copyWith(
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )
              : kEmpty,
          kHeight5,
          const DottedLines(height: 10),
          ...List.generate(
            (tripInfos?.length ?? 0),
            (tripIndex) => CustomExpansionTile(
              isBorder: false,
              children: (tripInfos?[tripIndex].sI?.length ?? 0) > 1
                  ? List.generate(
                      (tripInfos?[tripIndex].sI?.length) ?? 1,
                      (stopIndex) => Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TicketColumn(
                                      value: tripInfos?[tripIndex]
                                              .sI?[stopIndex]
                                              .da
                                              ?.code ??
                                          '',
                                      label:
                                          '${tripInfos?[tripIndex].sI?[stopIndex].da?.city ?? ''}, ${tripInfos?[tripIndex].sI?[stopIndex].da?.country ?? ''}',
                                      valueStyle: textThinStyle1,
                                      subValue: tripInfos?[tripIndex]
                                              .sI?[stopIndex]
                                              .da
                                              ?.name ??
                                          '',
                                      exit: tripInfos?[tripIndex]
                                              .sI?[stopIndex]
                                              .da
                                              ?.terminal ??
                                          '',
                                      isBold: false,
                                      flightCode:
                                          DateFormating.formatDateMonthYear(
                                              tripInfos?[tripIndex]
                                                      .sI?[stopIndex]
                                                      .dt ??
                                                  ''),
                                    ),
                                    const TicketColumn(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      subValue: 'Cabin class',
                                      exit: 'Seat No',
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(width: 4),
                              TicketColumn(
                                subValue:
                                    '${tripInfos?[tripIndex].sI?[stopIndex].fD?.aI?.code ?? ''}- ${tripInfos?[tripIndex].sI?[stopIndex].fD?.fN ?? ''}',
                                lebelStyle:
                                    textThinStyle1.copyWith(fontSize: 10.sp),
                                exit: '',
                                value: tripInfos?[tripIndex]
                                        .sI?[stopIndex]
                                        .fD
                                        ?.aI
                                        ?.name ??
                                    '',
                                airlineCode:
                                    tripInfos?[tripIndex].sI?[0].fD?.aI?.code ??
                                        '',
                                flightCode:
                                    DateFormating.convertMinutesToHoursMinutes(
                                        tripInfos?[tripIndex]
                                                .sI?[stopIndex]
                                                .duration ??
                                            0),
                                valueStyle: textThinStyle1.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600),
                                isBold: false,
                                crossAxisAlignment: CrossAxisAlignment.center,
                              ),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    TicketColumn(
                                      value: tripInfos?[tripIndex]
                                              .sI?[stopIndex]
                                              .aa
                                              ?.code ??
                                          '',
                                      label:
                                          '${tripInfos?[tripIndex].sI?[stopIndex].aa?.city ?? ''}, ${tripInfos?[tripIndex].sI?[stopIndex].aa?.country ?? ''}',
                                      valueStyle: textThinStyle1,
                                      subValue: tripInfos?[tripIndex]
                                              .sI?[stopIndex]
                                              .aa
                                              ?.name ??
                                          '',
                                      exit: tripInfos?[tripIndex]
                                              .sI?[stopIndex]
                                              .aa
                                              ?.terminal ??
                                          '',
                                      isBold: false,
                                      flightCode:
                                          DateFormating.formatDateMonthYear(
                                              tripInfos?[tripIndex]
                                                      .sI?[stopIndex]
                                                      .at ??
                                                  ''),
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                    ),
                                    TicketColumn(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      subValue: capitalizeFirstLetter(
                                          retrieveSingleBookingresponceModel
                                                  ?.flightSearchQuery
                                                  ?.cabinClass ??
                                              '--'),
                                      exit: travellerInfos
                                          ?.map((e) => (e.ssrSeatInfos?[
                                                  '${tripInfos?[tripIndex].sI?[stopIndex].da?.code ?? ''}-${tripInfos?[tripIndex].sI?[stopIndex].aa?.code ?? ''}'] ??
                                              {})['code'])
                                          .toList()
                                          .toString()
                                          .replaceAll('[', '')
                                          .replaceAll(']', '')
                                          .replaceAll('null', '-')
                                          .replaceAll(',,', ','),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          (tripInfos?[tripIndex].sI?.length ?? 1) - 1 ==
                                  stopIndex
                              ? kEmpty
                              : Text(
                                  '----- Layover Time - ${DateFormating.getDifferenceOfDates(tripInfos?[tripIndex].sI?[stopIndex].at ?? '', tripInfos?[tripIndex].sI?[stopIndex + 1].dt ?? '')} -----',
                                  style: textThinStyle1,
                                ),
                          (tripInfos?[tripIndex].sI?.length ?? 1) - 1 !=
                                  stopIndex
                              ? kEmpty
                              : const DottedLines(height: 10)
                        ],
                      ),
                    )
                  : null,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TicketColumn(
                              value:
                                  tripInfos?[tripIndex].sI?[0].da?.code ?? '',
                              valueStyle:
                                  textThinStyle1.copyWith(fontSize: 13.sp),
                              label:
                                  '${tripInfos?[tripIndex].sI?[0].da?.city ?? ''}, ${tripInfos?[tripIndex].sI?[0].da?.country ?? ''}',
                              lebelStyle: textThinStyle1.copyWith(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700,
                                  overflow: TextOverflow.ellipsis),
                              subValue:
                                  tripInfos?[tripIndex].sI?[0].da?.name ?? '',
                              isBold: true,
                              exit: tripInfos?[tripIndex].sI?[0].da?.terminal ??
                                  '',
                              flightCode: DateFormating.formatDateMonthYear(
                                  (tripInfos?[tripIndex].sI?[0].dt ?? '')),
                            ),
                            (tripInfos?[tripIndex].sI?.length ?? 0) == 1
                                ? TicketColumn(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    label: 'Cabin Class',
                                    lebelStyle: textThinStyle1.copyWith(
                                        fontSize: 10.sp, color: kGreyDark),
                                    value: 'Seat No',
                                    valueStyle: textThinStyle1.copyWith(
                                        color: kGreyDark, fontSize: 10.sp),
                                  )
                                : kEmpty
                          ],
                        ),
                      ),
                      kWidth5,
                      NormalCenterItems(
                        travelMinutes: (tripInfos?[tripIndex].sI?.length ?? 0) >
                                1
                            ? ''
                            : '${tripInfos?[tripIndex].sI?[0].fD?.aI?.code ?? ''}- ${tripInfos?[tripIndex].sI?[0].fD?.fN ?? ''}',
                        flightId: (tripInfos?[tripIndex].sI?.length ?? 0) > 1
                            ? ''
                            : '',
                        airline: (tripInfos?[tripIndex].sI?.length ?? 0) > 1
                            ? null
                            : tripInfos?[tripIndex].sI?[0].fD?.aI?.name ?? '',
                        airlineCode: (tripInfos?[tripIndex].sI?.length ?? 0) > 1
                            ? null
                            : tripInfos?[tripIndex].sI?[0].fD?.aI?.code ?? '',
                        stops: (tripInfos?[tripIndex].sI?.length ?? 0) - 1,
                        date: DateFormating.getDurationOfFlights(
                            si: tripInfos?[tripIndex].sI ?? <SI>[]),
                        number: '',
                        haveImage: false,
                      ),
                      kWidth5,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TicketColumn(
                              value: tripInfos?[tripIndex]
                                      .sI?[((tripInfos[tripIndex].sI?.length ??
                                              1) -
                                          1)]
                                      .aa
                                      ?.code ??
                                  '',
                              valueStyle:
                                  textThinStyle1.copyWith(fontSize: 13.sp),
                              lebelStyle: textThinStyle1.copyWith(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700,
                                  overflow: TextOverflow.ellipsis),
                              label:
                                  '${tripInfos?[tripIndex].sI?[((tripInfos[tripIndex].sI?.length ?? 1) - 1)].aa?.city ?? ''}, ${tripInfos?[tripIndex].sI?[((tripInfos[tripIndex].sI?.length ?? 1) - 1)].aa?.country ?? ''}',
                              subValue: tripInfos?[tripIndex]
                                      .sI?[((tripInfos[tripIndex].sI?.length ??
                                              1) -
                                          1)]
                                      .aa
                                      ?.name ??
                                  '',
                              exit: tripInfos?[tripIndex]
                                      .sI?[(tripInfos[tripIndex].sI?.length ??
                                              1) -
                                          1]
                                      .aa
                                      ?.terminal ??
                                  '',
                              flightCode: DateFormating.formatDateMonthYear(
                                (tripInfos?[tripIndex]
                                        .sI?[(tripInfos[tripIndex].sI?.length ??
                                                1) -
                                            1]
                                        .at ??
                                    ''),
                              ),
                              isBold: true,
                              crossAxisAlignment: CrossAxisAlignment.end,
                            ),
                            (tripInfos?[tripIndex].sI?.length ?? 1) == 1
                                ? TicketColumn(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    label: capitalizeFirstLetter(
                                        retrieveSingleBookingresponceModel
                                                ?.flightSearchQuery
                                                ?.cabinClass ??
                                            '--'),
                                    lebelStyle: textThinStyle1.copyWith(
                                        fontSize: 10.sp, color: kGreyDark),
                                    value: (travellerInfos
                                            ?.map((e) => e.ssrSeatInfos?[
                                                    '${tripInfos?[tripIndex].sI?[0].da?.code ?? ''}-${tripInfos?[tripIndex].sI?[0].aa?.code ?? ''}']
                                                ['code'])
                                            .toList()
                                            .toString()
                                            .replaceAll('[', '')
                                            .replaceAll(']', '')
                                            .replaceAll('null', '-')
                                            .replaceAll(',,', ',')) ??
                                        '--',
                                    valueStyle: textThinStyle1.copyWith(
                                        color: kGreyDark, fontSize: 10.sp),
                                  )
                                : kEmpty
                          ],
                        ),
                      ),
                    ],
                  ),
                  const DottedLines(height: 10),
                ],
              ),
            ),
          ),
          kHeight10,
          TaxAndFeeHelper(
              title: 'Ticket Price',
              value:
                  '₹ ${retrieveSingleBookingresponceModel?.retrieveSingleBookingresponceModel?.itemInfos?.air?.totalPriceInfo?.totalFareDetail?.fC?.bf?.toDouble() ?? '--'}'),
          TaxAndFeeHelper(
              title: 'Taxs and Fees',
              value:
                  '₹ ${retrieveSingleBookingresponceModel?.retrieveSingleBookingresponceModel?.itemInfos?.air?.totalPriceInfo?.totalFareDetail?.fC?.taf?.toDouble() ?? '--'}'),
          Builder(builder: (context) {
            final addOns = (retrieveSingleBookingresponceModel
                        ?.completeBookingData?.payment?.amount
                        ?.toDouble() ??
                    0) -
                ((retrieveSingleBookingresponceModel
                            ?.retrieveSingleBookingresponceModel
                            ?.itemInfos
                            ?.air
                            ?.totalPriceInfo
                            ?.totalFareDetail
                            ?.fC
                            ?.bf
                            ?.toDouble() ??
                        0) +
                    ((retrieveSingleBookingresponceModel
                            ?.retrieveSingleBookingresponceModel
                            ?.itemInfos
                            ?.air
                            ?.totalPriceInfo
                            ?.totalFareDetail
                            ?.fC
                            ?.taf
                            ?.toDouble() ??
                        0)) +
                    (retrieveSingleBookingresponceModel
                            ?.completeBookingData?.markUp?.value
                            ?.toDouble() ??
                        0) -
                    (retrieveSingleBookingresponceModel
                            ?.completeBookingData?.promo?.value
                            ?.toDouble() ??
                        0));
            return TaxAndFeeHelper(
                title: 'Seat, Meals & Baggage', value: '₹ $addOns');
          }),
          TaxAndFeeHelper(
              title: 'Convenience Fees',
              value:
                  '₹ ${retrieveSingleBookingresponceModel?.completeBookingData?.markUp?.value?.toDouble() ?? '--'}'),
          TaxAndFeeHelper(
              title: 'Promo Discount',
              value:
                  '₹ ${retrieveSingleBookingresponceModel?.completeBookingData?.promo?.value?.toDouble() ?? '--'}'),
          TaxAndFeeHelper(
              bold: true,
              title: 'Tatal Amount',
              value:
                  '₹ ${retrieveSingleBookingresponceModel?.completeBookingData?.payment?.amount?.toDouble() ?? '--'}'),
        ],
      ),
    );
  }
}
