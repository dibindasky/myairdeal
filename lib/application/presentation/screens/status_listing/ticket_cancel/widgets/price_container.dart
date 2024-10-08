import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/booking/ticket_cancel_controller.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/ticket_cancel/check_amendmet_charges/check_amendment.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/widgets/dotted_line.dart';

class PriceContainer extends StatefulWidget {
  const PriceContainer({super.key});

  @override
  _PriceContainerState createState() => _PriceContainerState();
}

class _PriceContainerState extends State<PriceContainer> {
  final bookingController = Get.find<BookingController>();
  final cancelController = Get.find<TicketCancellationController>();
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final amendment =
        bookingController.retrieveSingleBookingresponceModel.value.amendment;
    return GestureDetector(
      onTap: _toggleExpand,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          color: kBlueDark,
          border: Border.all(color: kRed),
          borderRadius: kRadius10,
        ),
        width: _isExpanded ? 300.w : 100.w,
        child: _isExpanded
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  kHeight5,
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Fare ',
                            style: textThinStyle1.copyWith(color: kWhite),
                          ),
                          Text(
                            'Total Amendment Charges   ',
                            style: textThinStyle1.copyWith(color: kWhite),
                          ),
                          DottedLines(height: 10.h, length: 30, color: kWhite),
                          Text(
                            'Total refund Amount ',
                            style: textThinStyle1.copyWith(color: kWhite),
                          ),
                          kHeight10,
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '6465.38',
                            style: textThinStyle1.copyWith(color: kWhite),
                          ),
                          Text(
                            '6465465.38',
                            style: textThinStyle1.copyWith(color: kWhite),
                          ),
                          DottedLines(height: 10.h, length: 13, color: kWhite),
                          Text(
                            '6465465.38',
                            style: textThinStyle1.copyWith(color: kWhite),
                          ),
                          kHeight10,
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      // cancelController.cancelSelectedItems.value.bookingId =
                      //     bookingController
                      //         .retrieveSingleBookingresponceModel
                      //         .value
                      //         .retrieveSingleBookingresponceModel
                      //         ?.order
                      //         ?.bookingId;
                      // cancelController.cancelSelectedItems.value.type =
                      //     'CANCELLATION';
                      // cancelController.checkAmendmentDetails();
                      Get.to(const CheckAmendMentCheck());
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.w),
                      decoration: BoxDecoration(
                          borderRadius: kRadius5,
                          border: Border.all(color: kRed)),
                      child: Text(
                        amendment != null && amendment.isNotEmpty
                            ? 'Check amendment details'
                            : 'Check Fare details',
                        style: textThinStyle1.copyWith(
                            color: kWhite, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  kHeight5,
                  GestureDetector(
                    onTap: () {
                      if (cancelController.formKey.currentState!.validate()) {
                        showCancelDialog();
                      }
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.w),
                      decoration: BoxDecoration(
                          borderRadius: kRadius5,
                          border: Border.all(color: kRed)),
                      child: Text(
                        'Cancel',
                        style: textThinStyle1.copyWith(
                            color: kWhite, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'T Refund\n6465.38',
                    style: textThinStyle1.copyWith(color: kWhite),
                    textAlign: TextAlign.center,
                  ),
                  kHeight5,
                  GestureDetector(
                    onTap: () {
                      // cancelController.cancelSelectedItems.value.bookingId =
                      //     bookingController
                      //         .retrieveSingleBookingresponceModel
                      //         .value
                      //         .retrieveSingleBookingresponceModel
                      //         ?.order
                      //         ?.bookingId;
                      // cancelController.cancelSelectedItems.value.type =
                      //     'CANCELLATION';
                      // cancelController.checkAmendmentDetails();
                      Get.to(const CheckAmendMentCheck());
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.w),
                      decoration: BoxDecoration(
                          borderRadius: kRadius5,
                          border: Border.all(color: kRed)),
                      child: Text(
                        amendment != null && amendment.isNotEmpty
                            ? 'Check amendment details'
                            : 'Check Fare details',
                        style: textThinStyle1.copyWith(
                            color: kWhite, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  kHeight5,
                  GestureDetector(
                    onTap: () {
                      if (cancelController.formKey.currentState!.validate()) {
                        showCancelDialog();
                      }
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.w),
                      decoration: BoxDecoration(
                          borderRadius: kRadius5,
                          border: Border.all(color: kRed)),
                      child: Text(
                        'Cancel',
                        style: textThinStyle1.copyWith(
                            color: kWhite, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  void showCancelDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: [
              const Text('Cancel Ticket'),
              kWidth10,
              const Icon(
                Icons.warning,
                color: kRed,
              )
            ],
          ),
          content: const Text('Are you sure you want to cancel the tickets?'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: kBlueDark),
                  backgroundColor: kBlueThinLIght,
                  foregroundColor: kWhite),
              child: Text(
                'No',
                style: textStyle1.copyWith(color: kBlack, fontSize: 12.sp),
              ),
            ),
            kHeight10,
            ElevatedButton(
              onPressed: () {
                cancelController.cancelSelectedItems.value.bookingId =
                    bookingController.retrieveSingleBookingresponceModel.value
                        .retrieveSingleBookingresponceModel?.order?.bookingId;
                cancelController.cancelSelectedItems.value.remarks =
                    cancelController.cancellationReason.text;
                cancelController.cancelSelectedItems.value.type =
                    'CANCELLATION';
                cancelController.ticketCancel();
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: kRed),
                  backgroundColor: kBlueThinLIght,
                  foregroundColor: kWhite),
              child: Text(
                'Yes',
                style: textStyle1.copyWith(color: kRed, fontSize: 12.sp),
              ),
            )
          ],
        );
      },
    );
  }
}
