import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/ticket_cancel_controller.dart';
import 'package:myairdeal/application/presentation/screens/bookings/ticket_cancel/widgets/selected_container.dart';
import 'package:myairdeal/application/presentation/screens/bookings/ticket_cancel/widgets/travelers_contianers.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/widgets/event_button.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';
import 'package:myairdeal/application/presentation/screens/bookings/flight_invoice/widgets/ticket_column.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/normal_center_items.dart';
import 'package:myairdeal/application/presentation/widgets/text_form_field.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_request_model/trip.dart';

class ScreenTicetCanceallation extends StatelessWidget {
  const ScreenTicetCanceallation({super.key});

  @override
  Widget build(BuildContext context) {
    final bookingController = Get.find<BookingController>();
    final cancellationController = Get.find<TicketCancellationController>();
    final tripInfos = bookingController.retrieveSingleBookingresponceModel.value
        .retrieveSingleBookingresponceModel?.itemInfos?.air?.tripInfos;
    final travelersData = bookingController
        .retrieveSingleBookingresponceModel
        .value
        .retrieveSingleBookingresponceModel
        ?.itemInfos
        ?.air
        ?.travellerInfos;
    return Scaffold(
      body: SingleChildScrollView(
        child: Obx(
          () {
            if (cancellationController.isLoading.value) {
              return SizedBox(
                height: 500.h,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  child: const Center(
                    child: CircularProgressIndicator(color: kBluePrimary),
                  ),
                ),
              );
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const DetailAppBar(heading: 'Ticket Cancellation'),
                    kHeight10,
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.w, vertical: 10.h),
                      child: Column(
                        children: [
                          ...List.generate(
                            tripInfos?.length ?? 0,
                            (tripIndex) {
                              Trip trip = Trip(
                                src:
                                    tripInfos?[tripIndex].sI?[0].da?.code ?? '',
                                dest: tripInfos?[tripIndex]
                                        .sI?[(tripInfos[tripIndex].sI?.length ??
                                                1) -
                                            1]
                                        .aa
                                        ?.code ??
                                    '',
                                departureDate:
                                    DateFormating.formatYearMonthDate(
                                        tripInfos?[tripIndex].sI?[0].dt ?? ''),
                              );
                              // final isSelected =
                              //     cancellationController.isTripSelected(trip);
                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 12.0.w),
                                      child: CustomExpansionTile(
                                        children: [
                                          TravelersDetails(
                                              trip: cancellationController
                                                  .cancelSelectedItems
                                                  .value
                                                  .trips?[tripIndex],
                                              travellerInfos: travelersData,
                                              tripIndex: tripIndex)
                                        ],
                                        child: Container(
                                          padding: EdgeInsets.all(10.w),
                                          decoration: BoxDecoration(
                                              color: kWhite,
                                              borderRadius: kRadius15,
                                              boxShadow: boxShadow3,
                                              border: Border.all(
                                                  width: .3,
                                                  color: kRedLight
                                                      .withOpacity(.9))),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: TicketColumn(
                                                  label: tripInfos?[tripIndex]
                                                          .sI?[0]
                                                          .da
                                                          ?.code ??
                                                      '',
                                                  value: tripInfos?[tripIndex]
                                                          .sI?[0]
                                                          .da
                                                          ?.city ??
                                                      '',
                                                  subValue:
                                                      tripInfos?[tripIndex]
                                                              .sI?[0]
                                                              .da
                                                              ?.name ??
                                                          '',
                                                  isBold: true,
                                                  exit: DateFormating
                                                      .formatDateMonthYear(
                                                    (tripInfos?[tripIndex]
                                                            .sI?[0]
                                                            .dt ??
                                                        ''),
                                                  ),
                                                ),
                                              ),
                                              NormalCenterItems(
                                                airline: tripInfos?[tripIndex]
                                                        .sI?[0]
                                                        .fD
                                                        ?.aI
                                                        ?.name ??
                                                    '',
                                                travelMinutes:
                                                    '${tripInfos?[tripIndex].sI?[0].fD?.aI?.code ?? ''} ${tripInfos?[tripIndex].sI?[0].fD?.fN ?? ''}',
                                                haveImage: false,
                                                stops: (tripInfos?[tripIndex]
                                                            .sI
                                                            ?.length ??
                                                        0) -
                                                    1,
                                              ),
                                              Expanded(
                                                child: TicketColumn(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  label: tripInfos?[tripIndex]
                                                          .sI?[((tripInfos[
                                                                          tripIndex]
                                                                      .sI
                                                                      ?.length ??
                                                                  1) -
                                                              1)]
                                                          .aa
                                                          ?.code ??
                                                      '',
                                                  value: tripInfos?[tripIndex]
                                                          .sI?[((tripInfos[
                                                                          tripIndex]
                                                                      .sI
                                                                      ?.length ??
                                                                  1) -
                                                              1)]
                                                          .aa
                                                          ?.city ??
                                                      '',
                                                  subValue: tripInfos?[
                                                              tripIndex]
                                                          .sI?[((tripInfos[
                                                                          tripIndex]
                                                                      .sI
                                                                      ?.length ??
                                                                  1) -
                                                              1)]
                                                          .aa
                                                          ?.name ??
                                                      '',
                                                  exit: DateFormating
                                                      .formatDateMonthYear((tripInfos?[
                                                                  tripIndex]
                                                              .sI?[(tripInfos[tripIndex]
                                                                          .sI
                                                                          ?.length ??
                                                                      1) -
                                                                  1]
                                                              .at ??
                                                          '')),
                                                  isBold: true,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      child: GestureDetector(
                                        onTap: () {
                                          cancellationController
                                              .selectTrip(trip);
                                        },
                                        child: CircleAvatar(
                                            radius: 10.w,
                                            child: Icon(
                                              Icons.check,
                                              size: 16.w,
                                              color: kRed,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          kHeight10,
                          Form(
                            key: cancellationController.formKey,
                            child: CustomTextField(
                              validate: Validate.notNull,
                              controller:
                                  cancellationController.cancellationRason,
                              maxLines: 1,
                              isBorder: true,
                              borderRadius: 10,
                              textCapitalization: TextCapitalization.words,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: kRadius10,
                                borderSide: const BorderSide(width: .3),
                              ),
                              onTapOutside: () =>
                                  FocusScope.of(context).unfocus(),
                              fillColor: kGreyLightBackground,
                              hintText: 'Enter Cancellation Reason',
                            ),
                          ),
                        ],
                      ),
                    ),
                    kHeight10
                  ],
                ),
                const SelectedContainers(),
                kHeight10,
                kHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    kWidth10,
                    Expanded(
                      child: EventButton(
                        style: textThinStyle1.copyWith(color: kWhite),
                        hieght: 30.h,
                        text: 'Check Amendment',
                        onTap: () {
                          cancellationController
                                  .cancelSelectedItems.value.bookingId =
                              bookingController
                                  .retrieveSingleBookingresponceModel
                                  .value
                                  .retrieveSingleBookingresponceModel
                                  ?.order
                                  ?.bookingId;
                          cancellationController
                              .cancelSelectedItems.value.type = 'CANCELLATION';
                          cancellationController.amendmentCharges();
                        },
                      ),
                    ),
                    kWidth10,
                    Expanded(
                      child: EventButton(
                          style: textThinStyle1.copyWith(color: kWhite),
                          hieght: 30.h,
                          text: 'Cancel Ticket',
                          onTap: () {
                            if (cancellationController.formKey.currentState!
                                .validate()) {
                              cancellationController
                                      .cancelSelectedItems.value.bookingId =
                                  bookingController
                                      .retrieveSingleBookingresponceModel
                                      .value
                                      .retrieveSingleBookingresponceModel
                                      ?.order
                                      ?.bookingId;
                              cancellationController
                                      .cancelSelectedItems.value.remarks =
                                  cancellationController.cancellationRason.text;
                              cancellationController.cancelSelectedItems.value
                                  .type = 'CANCELLATION';
                              cancellationController.ticketCancel();
                            }
                          }),
                    ),
                    kWidth10,
                  ],
                ),
                kHeight15
              ],
            );
          },
        ),
      ),
    );
  }
}
