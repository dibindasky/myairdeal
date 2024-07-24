import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/ticket_cancel_controller.dart';
import 'package:myairdeal/application/presentation/screens/bookings/ticket_cancel/widgets/price_container.dart';
import 'package:myairdeal/application/presentation/screens/bookings/ticket_cancel/widgets/selected_container.dart';
import 'package:myairdeal/application/presentation/screens/bookings/ticket_cancel/widgets/travelers_contianers.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
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
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () {
              if (cancellationController.isLoading.value) {
                return const CircularProgressIndicator(color: kBlueDark);
              }
              return ListView(
                padding: const EdgeInsets.all(0),
                children: [
                  const DetailAppBar(heading: 'Ticket Cancellation'),
                  kHeight10,
                  GetBuilder<TicketCancellationController>(
                      builder: (controller) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.w, vertical: 10.h),
                      child: Column(
                        children: [
                          ...List.generate(
                            tripInfos?.length ?? 0,
                            (index) {
                              final trip = Trip(
                                src: tripInfos?[index].sI?[0].da?.city ?? '',
                                dest: tripInfos?[index]
                                        .sI?[
                                            (tripInfos[index].sI?.length ?? 1) -
                                                1]
                                        .aa
                                        ?.city ??
                                    '',
                                departureDate:
                                    DateFormating.formatYearMonthDate(
                                        tripInfos?[index].sI?[0].dt ?? ''),
                              );
                              final isSelected =
                                  cancellationController.isTripSelected(trip);
                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 12.0.w),
                                      child: CustomExpansionTile(
                                        children: [
                                          TravelersDetails(index: index)
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
                                                  label: tripInfos?[index]
                                                          .sI?[0]
                                                          .da
                                                          ?.code ??
                                                      '',
                                                  value: tripInfos?[index]
                                                          .sI?[0]
                                                          .da
                                                          ?.city ??
                                                      '',
                                                  subValue: tripInfos?[index]
                                                          .sI?[0]
                                                          .da
                                                          ?.name ??
                                                      '',
                                                  isBold: true,
                                                  exit: DateFormating
                                                      .formatDateMonthYear(
                                                    (tripInfos?[index]
                                                            .sI?[0]
                                                            .dt ??
                                                        ''),
                                                  ),
                                                ),
                                              ),
                                              NormalCenterItems(
                                                airline: tripInfos?[index]
                                                        .sI?[0]
                                                        .fD
                                                        ?.aI
                                                        ?.name ??
                                                    '',
                                                travelMinutes:
                                                    '${tripInfos?[index].sI?[0].fD?.aI?.code ?? ''} ${tripInfos?[index].sI?[0].fD?.fN ?? ''}',
                                                haveImage: false,
                                                stops: (tripInfos?[index]
                                                            .sI
                                                            ?.length ??
                                                        0) -
                                                    1,
                                              ),
                                              Expanded(
                                                child: TicketColumn(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  label: tripInfos?[index]
                                                          .sI?[((tripInfos[
                                                                          index]
                                                                      .sI
                                                                      ?.length ??
                                                                  1) -
                                                              1)]
                                                          .aa
                                                          ?.code ??
                                                      '',
                                                  value: tripInfos?[index]
                                                          .sI?[((tripInfos[
                                                                          index]
                                                                      .sI
                                                                      ?.length ??
                                                                  1) -
                                                              1)]
                                                          .aa
                                                          ?.city ??
                                                      '',
                                                  subValue: tripInfos?[index]
                                                          .sI?[((tripInfos[
                                                                          index]
                                                                      .sI
                                                                      ?.length ??
                                                                  1) -
                                                              1)]
                                                          .aa
                                                          ?.name ??
                                                      '',
                                                  exit: DateFormating
                                                      .formatDateMonthYear((tripInfos?[
                                                                  index]
                                                              .sI?[(tripInfos[index]
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
                                              .toggleTripSelection(trip);
                                        },
                                        child: CircleAvatar(
                                            radius: 10.w,
                                            child: isSelected
                                                ? Icon(
                                                    Icons.check,
                                                    size: 16.w,
                                                    color: kRed,
                                                  )
                                                : Icon(
                                                    Icons.cancel,
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
                    );
                  }),
                  kHeight50,
                  kHeight15
                ],
              );
            },
          ),
          const SelectedContainers(),
          const PriceContainer(),
        ],
      ),
    );
  }
}
