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
import 'package:myairdeal/application/presentation/utils/shimmer/horizontal_shimmer.dart';
import 'package:myairdeal/application/presentation/widgets/expansion_tile_custom.dart';
import 'package:myairdeal/application/presentation/screens/bookings/flight_invoice/widgets/ticket_column.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/normal_center_items.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_request_model/ticket_cancel_request_model.dart';

class ScreenTicetCanceallation extends StatelessWidget {
  const ScreenTicetCanceallation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BookingController>();
    final cancelController = Get.find<TIcketCancellaionCntroller>();
    final tripInfos = controller
        .retrieveSingleBookingresponceModel.value.itemInfos?.air?.tripInfos;

    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () {
              if (cancelController.hasError.value) {
                Future.microtask(() => showCancelDialog(context));
              } else if (cancelController.isLoading.value) {
                return const CircularProgressIndicator(color: kBlueDark);
              }
              return ListView(
                padding: const EdgeInsets.all(0),
                children: [
                  const DetailAppBar(heading: 'Ticket Cancellation'),
                  kHeight10,
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                    child: cancelController.isLoading.value
                        ? const HorizontalShimmerSkeleton(
                            itemCount: 10, scrollDirection: Axis.vertical)
                        : Column(
                            children: List.generate(
                              tripInfos?.length ?? 0,
                              (index) => Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.w),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: CustomExpansionTile(
                                        children: const [TravelersInfo()],
                                        child: Container(
                                          padding: EdgeInsets.all(10.w),
                                          decoration: BoxDecoration(
                                            color: kWhite,
                                            borderRadius: kRadius15,
                                            boxShadow: boxShadow3,
                                            border: Border.all(
                                                width: .3,
                                                color:
                                                    kRedLight.withOpacity(.9)),
                                          ),
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
                                                ),
                                              ),
                                              NormalCenterItems(
                                                airline: tripInfos?[index]
                                                        .sI?[0]
                                                        .fD
                                                        ?.aI
                                                        ?.name ??
                                                    '',
                                                haveImage: false,
                                                stops: (tripInfos?[index]
                                                            .sI
                                                            ?.length ??
                                                        0) -
                                                    1,
                                              ),
                                              Expanded(
                                                child: TicketColumn(
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
                                                  isBold: true,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
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
                                          final bookingId = controller
                                              .retrieveSingleBookingresponceModel
                                              .value
                                              .order
                                              ?.bookingId;
                                          cancelController.addItem(
                                            TicketCancelRequestModel(
                                                bookingId: bookingId),
                                          );
                                        },
                                        child: GetBuilder<
                                            TIcketCancellaionCntroller>(
                                          builder: (controllerr) {
                                            final bookingId = controller
                                                .retrieveSingleBookingresponceModel
                                                .value
                                                .order
                                                ?.bookingId;
                                            final isSelected = bookingId !=
                                                    null &&
                                                cancelController.selectedItems
                                                    .contains(
                                                        TicketCancelRequestModel(
                                                            bookingId:
                                                                bookingId));
                                            return CircleAvatar(
                                              backgroundColor: kBlueLightShade,
                                              radius: 10.w,
                                              child: isSelected
                                                  ? Icon(
                                                      Icons.cancel,
                                                      size: 16.w,
                                                      color: kRed,
                                                    )
                                                  : Icon(
                                                      Icons.check,
                                                      size: 16.w,
                                                      color: kBlue,
                                                    ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                  ),
                  kHeight50,
                  kHeight15
                ],
              );
            },
          ),
          const SelectedContainers(),
          const PriceContainer()
        ],
      ),
    );
  }

  void showCancelDialog(BuildContext context) {
    final cancelController = Get.find<TIcketCancellaionCntroller>();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Errors',
            style: textStyle1.copyWith(fontSize: 16.sp),
          ),
          content: Text(cancelController.tripJackErrorMessage.value),
          actions: [
            kHeight10,
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: kBlue),
                  backgroundColor: kBlueThinLIght,
                  foregroundColor: kWhite),
              child: Text(
                'OK',
                style: textStyle1.copyWith(color: kBlue, fontSize: 12.sp),
              ),
            )
          ],
        );
      },
    );
  }
}
