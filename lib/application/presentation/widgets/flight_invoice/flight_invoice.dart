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
    return Center(
      child: Container(
        width: 320.w,
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
                const Text(':'),
                kWidth20,
                Text(
                    retrieveSingleBookingresponceModel?.gstInfo?.bookingId
                            .toString() ??
                        '',
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
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Passenger'),
                      Text('MacRaymond Idan', style: textStyle1),
                    ],
                  ),
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
                                    isBold: false,
                                  ),
                                ),
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
                                    isBold: false,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    : null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TicketColumn(
                        label: tripInfos?[index].sI?[0].da?.code ?? '',
                        value: tripInfos?[index].sI?[0].da?.city ?? '',
                        subValue: tripInfos?[index].sI?[0].da?.name ?? '',
                        isBold: true,
                      ),
                    ),
                    NormalCenterItems(
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
                        isBold: true,
                        crossAxisAlignment: CrossAxisAlignment.end,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const DottedLines(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TicketColumn(
                    label: 'Flight Code',
                    subValue: 'Asky - 005',
                    crossAxisAlignment: CrossAxisAlignment.start,
                    subValueStyle: textThinStyle1.copyWith(fontSize: 11.sp),
                  ),
                ),
                TicketColumn(
                  label: 'Class',
                  subValue: 'Economy',
                  subValueStyle: textThinStyle1.copyWith(fontSize: 11.sp),
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                Expanded(
                  child: TicketColumn(
                    subValueStyle: textThinStyle1.copyWith(fontSize: 11.sp),
                    label: 'Seat',
                    subValue: 'Seat F2',
                    crossAxisAlignment: CrossAxisAlignment.end,
                  ),
                ),
              ],
            ),
            const DottedLines(height: 10),
            kHeight5,
            ...List.generate(
              (tripInfos?.length ?? 0),
              (index) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TicketColumn(
                      label:
                          '${tripInfos?[index].sI?[0].da?.code ?? ''} TO ${tripInfos?[index].sI?[0].aa?.code ?? ''} '
                          '',
                      value: 'Date',
                      valueStyle: textThinStyle1,
                      lebelStyle: textStyle1,
                      subValue: '',
                      crossAxisAlignment: CrossAxisAlignment.start,
                      subValueStyle: textThinStyle1.copyWith(fontSize: 11.sp),
                    ),
                  ),
                  TicketColumn(
                    value: 'Departuress',
                    valueStyle: textThinStyle1,
                    label: '',
                    subValue: DateFormating.getDate(
                        DateTime.parse(tripInfos?[index].sI?[0].dt ?? '')),
                    subValueStyle: textThinStyle1.copyWith(fontSize: 11.sp),
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                  Expanded(
                    child: TicketColumn(
                      value: 'Arrival',
                      valueStyle: textThinStyle1,
                      subValueStyle: textThinStyle1.copyWith(fontSize: 11.sp),
                      label: '',
                      subValue: DateFormating.getDate(
                          DateTime.parse(tripInfos?[index].sI?[0].at ?? '')),
                      crossAxisAlignment: CrossAxisAlignment.end,
                    ),
                  ),
                ],
              ),
            ),
            // const DottedLines(height: 10),
            // kHeight5,
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     TicketColumn(
            //       label: 'Date',
            //       subValue: 'Gate TT4',
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       subValueStyle: textThinStyle1.copyWith(fontSize: 11.sp),
            //     ),
            //     TicketColumn(
            //       subValueStyle: textThinStyle1.copyWith(fontSize: 11.sp),
            //       label: 'Terminal',
            //       subValue: 'T001',
            //       crossAxisAlignment: CrossAxisAlignment.end,
            //     ),
            //   ],
            // ),
            // Image.asset(
            //   'asset/dev/barcode_image.png',
            //   height: 25.h,
            // ),
          ],
        ),
      ),
    );
  }
}
