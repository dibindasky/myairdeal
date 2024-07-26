import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/ticket_cancel_controller.dart';
import 'package:myairdeal/application/presentation/screens/bookings/flight_invoice/widgets/ticket_column.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';

class CheckAmendMentCheck extends StatelessWidget {
  const CheckAmendMentCheck({super.key});

  @override
  Widget build(BuildContext context) {
    final cancelController = Get.find<TicketCancellationController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DetailAppBar(heading: 'Amendment details'),
            kHeight20,
            ...List.generate(
              cancelController.checkAmendMentCharges.value.trips?.length ?? 1,
              (tripIndex) {
                final tripInfos =
                    cancelController.checkAmendMentCharges.value.trips;
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 3.w),
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: kRadius15,
                      boxShadow: boxShadow3,
                      border: Border.all(
                          width: .3, color: kRedLight.withOpacity(.9))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          kWidth10,
                          Expanded(
                            child: TicketColumn(
                              label: tripInfos?[tripIndex].src ?? 'from',
                              value: 'Date',
                              valueStyle: textThinStyle1,
                              subValue: 'Airline',
                              isBold: true,
                              exit: 'Flight number',
                            ),
                          ),
                          // NormalCenterItems(
                          //   airline: tripInfos?[index].sI?[0].fD?.aI?.name ?? '',
                          //   travelMinutes:
                          //       '${tripInfos?[index].sI?[0].fD?.aI?.code ?? ''} ${tripInfos?[index].sI?[0].fD?.fN ?? ''}',
                          //   haveImage: false,
                          //   stops: (tripInfos?[index].sI?.length ?? 0) - 1,
                          //  ),
                          Expanded(
                            child: TicketColumn(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              label: tripInfos?[tripIndex].dest ?? 'des',
                              valueStyle: textThinStyle1,
                              value: DateFormating.formatDate(
                                  tripInfos?[tripIndex].departureDate ?? ''),
                              subValue:
                                  tripInfos?[tripIndex].airlines?.first ?? "--",
                              exit:
                                  tripInfos?[tripIndex].flightNumbers?.first ??
                                      '--',
                              isBold: true,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        margin: EdgeInsets.symmetric(
                            horizontal: 0.w, vertical: 2.w),
                        decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: kRadius15,
                          boxShadow: boxShadow3,
                        ),
                        child: Column(
                          children: [
                            kHeight5,
                            AmendMentInfo(
                              heading:
                                  tripInfos?[tripIndex].amendmentInfo?.adult !=
                                          null
                                      ? 'ADULT'
                                      : null,
                              amendMentCharge: tripInfos?[tripIndex]
                                      .amendmentInfo
                                      ?.adult
                                      ?.amendmentCharges
                                      .toString() ??
                                  '',
                              refundAmount: tripInfos?[tripIndex]
                                      .amendmentInfo
                                      ?.adult
                                      ?.refundAmount
                                      .toString() ??
                                  '',
                              totalFare: tripInfos?[tripIndex]
                                      .amendmentInfo
                                      ?.adult
                                      ?.totalFare
                                      .toString() ??
                                  '',
                            ),
                            kHeight5,
                            AmendMentInfo(
                              heading:
                                  tripInfos?[tripIndex].amendmentInfo?.child !=
                                          null
                                      ? 'CHILD'
                                      : null,
                              amendMentCharge: tripInfos?[tripIndex]
                                      .amendmentInfo
                                      ?.child
                                      ?.amendmentCharges
                                      .toString() ??
                                  '',
                              refundAmount: tripInfos?[tripIndex]
                                      .amendmentInfo
                                      ?.child
                                      ?.refundAmount
                                      .toString() ??
                                  '',
                              totalFare: tripInfos?[tripIndex]
                                      .amendmentInfo
                                      ?.child
                                      ?.totalFare
                                      .toString() ??
                                  '',
                            ),
                            kHeight5,
                            AmendMentInfo(
                              heading:
                                  tripInfos?[tripIndex].amendmentInfo?.infant !=
                                          null
                                      ? 'INFANT'
                                      : null,
                              amendMentCharge: tripInfos?[tripIndex]
                                      .amendmentInfo
                                      ?.infant
                                      ?.amendmentCharges
                                      .toString() ??
                                  '',
                              refundAmount: tripInfos?[tripIndex]
                                      .amendmentInfo
                                      ?.infant
                                      ?.refundAmount
                                      .toString() ??
                                  '',
                              totalFare: tripInfos?[tripIndex]
                                      .amendmentInfo
                                      ?.infant
                                      ?.totalFare
                                      .toString() ??
                                  '',
                            ),
                            kHeight5,
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Note :'),
                  kHeight5,
                  const Text(
                      'To Cancel the complete booking, no need to select any trip'),
                  const Text(
                      'To Cancel a selected trip for all the passengers, Just select the Trip, No need to select any passenger'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AmendMentInfo extends StatelessWidget {
  const AmendMentInfo({
    super.key,
    this.heading,
    this.amendMentCharge,
    this.totalFare,
    this.refundAmount,
  });

  final String? heading;
  final String? amendMentCharge;
  final String? refundAmount;
  final String? totalFare;

  @override
  Widget build(BuildContext context) {
    return heading == null || heading == ''
        ? kEmpty
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(heading ?? '',
                  style: textStyle1.copyWith(
                      fontSize: 13.sp, fontWeight: FontWeight.w700)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Amendmet Charges', style: textThinStyle1),
                  Text(amendMentCharge ?? ''),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Refund Amount', style: textThinStyle1),
                  Text(refundAmount ?? ''),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Fare', style: textThinStyle1),
                  Text(totalFare ?? ''),
                ],
              )
            ],
          );
  }
}
