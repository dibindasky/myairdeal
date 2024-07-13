import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/widgets/dotted_line.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';
import 'package:myairdeal/application/presentation/widgets/flight_invoice/widgets/ticket_column.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/normal_center_items.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_bookingresponce_model/retrieve_single_bookingresponce_model.dart';

class FlightInvoiceCard extends StatelessWidget {
  final FlightTicketInvoiceEnum flightTicketInvoiceEnum;

  const FlightInvoiceCard(
      {super.key,
      required this.flightTicketInvoiceEnum,
      this.retrieveSingleBookingresponceModel});
  final RetrieveSingleBookingresponceModel? retrieveSingleBookingresponceModel;
  @override
  Widget build(BuildContext context) {
    final travelersData =
        retrieveSingleBookingresponceModel?.itemInfos?.air?.travellerInfos;
    final tripInfos =
        retrieveSingleBookingresponceModel?.itemInfos?.air?.tripInfos;
    log('------ Layover Time -${DateFormating.formatDate(tripInfos?[0].sI?[0].dt ?? '')} -----${DateFormating.formatDate(tripInfos?[0].sI?[1].at ?? '')} ');
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFDCF3FF),
        borderRadius: BorderRadius.circular(16),
        boxShadow: boxShadow2,
        border: Border.all(
          color:
              retrieveSingleBookingresponceModel?.order?.status == 'CANCELLED'
                  ? kRed
                  : knill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text('Booking id'),
              kWidth20,
              const Text(' :'),
              kWidth20,
              Text(retrieveSingleBookingresponceModel?.order?.bookingId ?? '--',
                  style: textStyle1),
            ],
          ),
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
                          fontSize: 14.sp, fontWeight: FontWeight.w700),
                    ),
                    kHeight5,
                    ...List.generate(
                      travelersData?.length ?? 0,
                      (index) => Text(
                        '${travelersData?[index].ti}  ${travelersData?[index].fN} ${travelersData?[index].lN}  (${travelersData?[index].pt})',
                        style: textThinStyle1.copyWith(
                            fontWeight: FontWeight.w600),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: TicketColumn(
                                  label: tripInfos?[index]
                                          .sI?[stopIndex]
                                          .da
                                          ?.code ??
                                      '',
                                  value: tripInfos?[index]
                                          .sI?[stopIndex]
                                          .da
                                          ?.city ??
                                      '',
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
                                  flightCode: DateFormating.formatDateMonthYear(
                                      tripInfos?[index].sI?[stopIndex].dt ??
                                          ''),
                                ),
                              ),
                              const SizedBox(width: 6),
                              TicketColumn(
                                label:
                                    '${tripInfos?[index].sI?[stopIndex].fD?.aI?.code ?? ''}- ${tripInfos?[index].sI?[stopIndex].fD?.fN ?? ''}',
                                lebelStyle:
                                    textThinStyle1.copyWith(fontSize: 10.sp),
                                exit: '',
                                subValue: '',
                                flightCode: "--",
                                valueStyle: textThinStyle1.copyWith(
                                    fontSize: 10.sp, color: kGreyDark),
                                isBold: false,
                                crossAxisAlignment: CrossAxisAlignment.center,
                              ),
                              const SizedBox(width: 6),
                              Expanded(
                                child: TicketColumn(
                                  label: tripInfos?[index]
                                          .sI?[stopIndex]
                                          .aa
                                          ?.code ??
                                      '',
                                  value: tripInfos?[index]
                                          .sI?[stopIndex]
                                          .aa
                                          ?.city ??
                                      '',
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
                                  flightCode: DateFormating.formatDateMonthYear(
                                      tripInfos?[index].sI?[stopIndex].at ??
                                          ''),
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                ),
                              ),
                            ],
                          ),
                          kHeight10,
                          (tripInfos?[index].sI?.length ?? 1) - 1 == stopIndex
                              ? kEmpty
                              : Text(
                                  '------ Layover Time -${DateFormating.getDifferenceOfDates(tripInfos?[index].sI?[stopIndex + 1].dt ?? '', tripInfos?[index].sI?[stopIndex + 1].at ?? '')} -----',
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TicketColumn(
                          label: tripInfos?[index].sI?[0].da?.code ?? '',
                          value: tripInfos?[index].sI?[0].da?.city ?? '',
                          subValue: tripInfos?[index].sI?[0].da?.name ?? '',
                          isBold: true,
                          exit: tripInfos?[index].sI?[0].da?.terminal ?? '',
                          flightCode: DateFormating.formatDateMonthYear(
                            (tripInfos?[index].sI?[0].dt ?? ''),
                          ),
                        ),
                      ),
                      NormalCenterItems(
                        travelMinutes:
                            (tripInfos?[index].sI?.length ?? 0) > 1 ? '' : '--',
                        flightId: (tripInfos?[index].sI?.length ?? 0) > 1
                            ? ''
                            : '(${tripInfos?[index].sI?[0].fD?.aI?.code ?? ''}- ${tripInfos?[index].sI?[0].fD?.fN ?? ''})',
                        airline: tripInfos?[index].sI?[0].fD?.aI?.name ?? '',
                        haveImage: false,
                        stops: (tripInfos?[index].sI?.length ?? 0) - 1,
                      ),
                      Expanded(
                        child: TicketColumn(
                          label: tripInfos?[index]
                                  .sI?[((tripInfos[index].sI?.length ?? 1) - 1)]
                                  .aa
                                  ?.code ??
                              '',
                          value: tripInfos?[index]
                                  .sI?[((tripInfos[index].sI?.length ?? 1) - 1)]
                                  .aa
                                  ?.city ??
                              '',
                          subValue: tripInfos?[index]
                                  .sI?[((tripInfos[index].sI?.length ?? 1) - 1)]
                                  .aa
                                  ?.name ??
                              '',
                          exit: tripInfos?[index]
                                  .sI?[(tripInfos[index].sI?.length ?? 1) - 1]
                                  .aa
                                  ?.terminal ??
                              '',
                          flightCode: DateFormating.formatDateMonthYear(
                            (tripInfos?[index]
                                    .sI?[(tripInfos[index].sI?.length ?? 1) - 1]
                                    .at ??
                                ''),
                          ),
                          isBold: true,
                          crossAxisAlignment: CrossAxisAlignment.end,
                        ),
                      ),
                    ],
                  ),
                  const DottedLines(height: 10),
                ],
              ),
            ),
          ),
          kHeight5,
          // Text('Time details',
          //     style: textStyle1.copyWith(fontWeight: FontWeight.w800)),
          // ...List.generate(
          //   tripInfos?.length ?? 0,
          //   (index) => (tripInfos?[index].sI?.length ?? 0) == 1
          //       ? Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Expanded(
          //               child: TicketColumn(
          //                 label:
          //                     '${tripInfos?[index].sI?[0].da?.city ?? ''} TO ${tripInfos?[index].sI?[(tripInfos[index].sI?.length ?? 0) - 1].aa?.city ?? ''} ',
          //                 value: 'Flight ID',
          //                 valueStyle: textThinStyle1,
          //                 subValue:
          //                     '${tripInfos?[index].sI?[0].fD?.aI?.code ?? ''}- ${tripInfos?[index].sI?[0].fD?.fN ?? ''}',
          //                 // exit: 'Exit',
          //                 // flightCode: 'Flight code',
          //               ),
          //             ),
          //             TicketColumn(
          //               crossAxisAlignment: CrossAxisAlignment.center,
          //               label: '',
          //               value: 'Departure',
          //               valueStyle: textThinStyle1,
          //               subValue: DateFormating.formatDateMonthYear(
          //                   (tripInfos?[index].sI?[0].dt ?? '')),
          //               // exit: 'Exit',
          //               // flightCode: 'Flight code',
          //             ),
          //             Expanded(
          //               child: TicketColumn(
          //                 crossAxisAlignment: CrossAxisAlignment.end,
          //                 label: '',
          //                 value: 'Arrival',
          //                 valueStyle: textThinStyle1,
          //                 subValue: DateFormating.formatDateMonthYear(
          //                     tripInfos?[index]
          //                             .sI?[(tripInfos[index].sI?.length ?? 1) -
          //                                 1]
          //                             .at ??
          //                         ''),
          //                 // exit: 'Exit',
          //                 // flightCode: 'Flight code',
          //               ),
          //             ),
          //           ],
          //         )
          //       : Column(
          //           children: List.generate(
          //             tripInfos?[index].sI?.length ?? 0,
          //             (sIndex) => Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 Expanded(
          //                   child: TicketColumn(
          //                     label:
          //                         '${tripInfos?[index].sI?[sIndex].da?.city ?? ''} TO ${tripInfos?[index].sI?[sIndex].aa?.city ?? ''} ',
          //                     valueStyle: textThinStyle1,
          //                     value: 'Flight ID',
          //                     subValue:
          //                         '${tripInfos?[index].sI?[sIndex].fD?.aI?.code ?? ''}- ${tripInfos?[index].sI?[sIndex].fD?.fN ?? ''}',
          //                   ),
          //                 ),
          //                 TicketColumn(
          //                   label: '',
          //                   crossAxisAlignment: CrossAxisAlignment.center,
          //                   value: 'Departure',
          //                   valueStyle: textThinStyle1,
          //                   subValue: DateFormating.formatDateMonthYear(
          //                       tripInfos?[index].sI?[sIndex].dt ?? ''),
          //                 ),
          //                 Expanded(
          //                   child: TicketColumn(
          //                     label: '',
          //                     crossAxisAlignment: CrossAxisAlignment.end,
          //                     value: 'Arrival',
          //                     valueStyle: textThinStyle1,
          //                     subValue: DateFormating.formatDateMonthYear(
          //                         tripInfos?[index].sI?[sIndex].at ?? ''),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          // ),
          kHeight5,
          // const DottedLines(height: 10),
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
                '₹ ${retrieveSingleBookingresponceModel?.itemInfos?.air?.totalPriceInfo?.totalFareDetail?.fC?.tf.toString() ?? 0.toString()}',
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
