import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/widgets/dotted_line.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';
import 'package:myairdeal/application/presentation/screens/bookings/flight_invoice/widgets/ticket_column.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/normal_center_items.dart';
import 'package:myairdeal/domain/models/booking/get_single_booking/get_single_booking.dart';

class FlightInvoiceCard extends StatelessWidget {
  const FlightInvoiceCard({super.key, this.retrieveSingleBookingresponceModel});
  final GetSingleBooking? retrieveSingleBookingresponceModel;
  @override
  Widget build(BuildContext context) {
    final travelersData = retrieveSingleBookingresponceModel
        ?.retrieveSingleBookingresponceModel?.itemInfos?.air?.travellerInfos;
    final tripInfos = retrieveSingleBookingresponceModel
        ?.retrieveSingleBookingresponceModel?.itemInfos?.air?.tripInfos;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFDCF3FF),
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
          retrieveSingleBookingresponceModel != null &&
                  retrieveSingleBookingresponceModel?.amendment != null &&
                  retrieveSingleBookingresponceModel!.amendment!.isNotEmpty
              ? Row(
                  children: [
                    const Text('Amendment ID'),
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
                          style: textThinStyle1,
                          maxLines: 2,
                        ),
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
                          ? 'Passengers name'
                          : 'Passenger name',
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
            (index) => CustomExpansionTile(
              isBorder: false,
              children: (tripInfos?[index].sI?.length ?? 0) > 1
                  ? List.generate(
                      (tripInfos?[index].sI?.length) ?? 0,
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
                                      value: tripInfos?[index]
                                              .sI?[stopIndex]
                                              .da
                                              ?.code ??
                                          '',
                                      label:
                                          '${tripInfos?[index].sI?[stopIndex].da?.city ?? ''}, ${tripInfos?[index].sI?[stopIndex].da?.country ?? ''}',
                                      valueStyle: textThinStyle1,
                                      subValue: tripInfos?[index]
                                              .sI?[stopIndex]
                                              .da
                                              ?.name ??
                                          '',
                                      exit: tripInfos?[index]
                                              .sI?[stopIndex]
                                              .da
                                              ?.terminal ??
                                          '',
                                      isBold: false,
                                      flightCode:
                                          DateFormating.formatDateMonthYear(
                                              tripInfos?[index]
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
                                value:
                                    '${tripInfos?[index].sI?[stopIndex].fD?.aI?.code ?? ''}- ${tripInfos?[index].sI?[stopIndex].fD?.fN ?? ''}',
                                lebelStyle:
                                    textThinStyle1.copyWith(fontSize: 10.sp),
                                exit: '',
                                subValue: '',
                                label: '',
                                flightCode: DateFormating.getDifferenceOfDates(
                                    tripInfos?[index].sI?[stopIndex].dt ?? '',
                                    tripInfos?[index].sI?[stopIndex].at ?? ''),
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
                                      value: tripInfos?[index]
                                              .sI?[stopIndex]
                                              .aa
                                              ?.code ??
                                          '',
                                      label:
                                          '${tripInfos?[index].sI?[stopIndex].aa?.city ?? ''}, ${tripInfos?[index].sI?[stopIndex].aa?.country ?? ''}',
                                      valueStyle: textThinStyle1,
                                      subValue: tripInfos?[index]
                                              .sI?[stopIndex]
                                              .aa
                                              ?.name ??
                                          '',
                                      exit: tripInfos?[index]
                                              .sI?[stopIndex]
                                              .aa
                                              ?.terminal ??
                                          '',
                                      isBold: false,
                                      flightCode:
                                          DateFormating.formatDateMonthYear(
                                              tripInfos?[index]
                                                      .sI?[stopIndex]
                                                      .at ??
                                                  ''),
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                    ),
                                    TicketColumn(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      subValue: retrieveSingleBookingresponceModel
                                              ?.retrieveSingleBookingresponceModel
                                              ?.allBookingSearchquery
                                              ?.cabinClass ??
                                          '--',
                                      exit: '--',
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          kHeight10,
                          (tripInfos?[index].sI?.length ?? 1) - 1 == stopIndex
                              ? kEmpty
                              : Text(
                                  '----- Layover Time - ${DateFormating.getDifferenceOfDates(tripInfos?[index].sI?[stopIndex].at ?? '', tripInfos?[index].sI?[stopIndex + 1].dt ?? '')} -----',
                                  style: textThinStyle1,
                                ),
                          (tripInfos?[index].sI?.length ?? 1) - 1 != stopIndex
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
                              value: tripInfos?[index].sI?[0].da?.code ?? '',
                              valueStyle:
                                  textThinStyle1.copyWith(fontSize: 13.sp),
                              label:
                                  '${tripInfos?[index].sI?[0].da?.city ?? ''}, ${tripInfos?[index].sI?[0].da?.country ?? ''}',
                              lebelStyle: textThinStyle1.copyWith(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700,
                                  overflow: TextOverflow.ellipsis),
                              subValue: tripInfos?[index].sI?[0].da?.name ?? '',
                              isBold: true,
                              exit: tripInfos?[index].sI?[0].da?.terminal ?? '',
                              flightCode: DateFormating.formatDateMonthYear(
                                (tripInfos?[index].sI?[0].dt ?? ''),
                              ),
                            ),
                            (tripInfos?[index].sI?.length ?? 0) == 1
                                ? TicketColumn(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    label: 'Cabin Class',
                                    lebelStyle: textThinStyle1.copyWith(
                                        fontSize: 11.sp, color: kGreyDark),
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
                        travelMinutes: (tripInfos?[index].sI?.length ?? 0) > 1
                            ? ''
                            : '${tripInfos?[index].sI?[0].fD?.aI?.code ?? ''}- ${tripInfos?[index].sI?[0].fD?.fN ?? ''}',
                        flightId:
                            (tripInfos?[index].sI?.length ?? 0) > 1 ? '' : '',
                        airline: tripInfos?[index].sI?[0].fD?.aI?.name ?? '',
                        haveImage: false,
                        stops: (tripInfos?[index].sI?.length ?? 0) - 1,
                        date: DateFormating.getDifferenceOfDates(
                            (tripInfos?[index].sI?[0].dt ?? ''),
                            (tripInfos?[index]
                                    .sI?[(tripInfos[index].sI?.length ?? 1) - 1]
                                    .at ??
                                '')),
                        number: '',
                      ),
                      kWidth5,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TicketColumn(
                              value: tripInfos?[index]
                                      .sI?[((tripInfos[index].sI?.length ?? 1) -
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
                                  '${tripInfos?[index].sI?[((tripInfos[index].sI?.length ?? 1) - 1)].aa?.city ?? ''}, ${tripInfos?[index].sI?[((tripInfos[index].sI?.length ?? 1) - 1)].aa?.country ?? ''}',
                              subValue: tripInfos?[index]
                                      .sI?[((tripInfos[index].sI?.length ?? 1) -
                                          1)]
                                      .aa
                                      ?.name ??
                                  '',
                              exit: tripInfos?[index]
                                      .sI?[(tripInfos[index].sI?.length ?? 1) -
                                          1]
                                      .aa
                                      ?.terminal ??
                                  '',
                              flightCode: DateFormating.formatDateMonthYear(
                                (tripInfos?[index]
                                        .sI?[
                                            (tripInfos[index].sI?.length ?? 1) -
                                                1]
                                        .at ??
                                    ''),
                              ),
                              isBold: true,
                              crossAxisAlignment: CrossAxisAlignment.end,
                            ),
                            (tripInfos?[index].sI?.length ?? 1) == 1
                                ? TicketColumn(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    label: retrieveSingleBookingresponceModel
                                            ?.retrieveSingleBookingresponceModel
                                            ?.allBookingSearchquery
                                            ?.cabinClass ??
                                        '--',
                                    lebelStyle: textThinStyle1.copyWith(
                                        fontSize: 11.sp, color: kGreyDark),
                                    value: '--',
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
          const Text('Baggage and Meals'),
          kHeight10,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ticket Price',
                    style: textStyle1.copyWith(
                        color: kBlack,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    '(Including Taxes)',
                    style: textThinStyle1.copyWith(
                        color: kGreyDark, fontSize: 10.sp),
                  )
                ],
              ),
              kWidth10,
              Text(
                '₹ ${retrieveSingleBookingresponceModel?.retrieveSingleBookingresponceModel?.itemInfos?.air?.totalPriceInfo?.totalFareDetail?.fC?.tf.toString() ?? 0.toString()}',
                style: textStyle1.copyWith(
                    color: kBlack,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w800),
              )
            ],
          ),
        ],
      ),
    );
  }
}
