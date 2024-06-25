import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/widgets/dotted_line.dart';
import 'package:myairdeal/application/presentation/widgets/flight_invoice/widgets/ticket_column.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/normal_center_items.dart';

class FlightInvoiceCard extends StatelessWidget {
  final FlightTicketInvoiceEnum flightTicketInvoiceEnum;

  const FlightInvoiceCard({super.key, required this.flightTicketInvoiceEnum});
  @override
  Widget build(BuildContext context) {
    final bookingController = Get.find<BookingController>();

    return Center(
      child: Container(
        width: 320.w,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: const Color(0xFFDCF3FF),
            borderRadius: BorderRadius.circular(16),
            boxShadow: boxShadow2,
            border: Border.all(
              color: bookingController.selectedBookingTab.value == 2
                  ? kRed
                  : knill,
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Passenger'),
                Text('MacRaymond Idan', style: textStyle1),
              ],
            ),
            kHeight5,
            const DottedLines(height: 10),
            kHeight15,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TicketColumn(
                  label: 'Temale',
                  value: 'TEL',
                  isBold: true,
                ),
                NormalCenterItems(haveImage: false),
                TicketColumn(
                  label: 'Kumasi',
                  value: 'KSM',
                  isBold: true,
                  crossAxisAlignment: CrossAxisAlignment.end,
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TicketColumn(
                  label: 'Temale International',
                  subValue: 'Airport',
                ),
                TicketColumn(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  label: 'Kumasi International',
                  subValue: 'Airport',
                ),
              ],
            ),
            const DottedLines(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TicketColumn(
                  label: 'Flight Code',
                  subValue: 'Asky - 005',
                  crossAxisAlignment: CrossAxisAlignment.start,
                  subValueStyle: textThinStyle1.copyWith(fontSize: 11.sp),
                ),
                TicketColumn(
                  label: 'Class',
                  subValue: 'Economy',
                  subValueStyle: textThinStyle1.copyWith(fontSize: 11.sp),
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                TicketColumn(
                  subValueStyle: textThinStyle1.copyWith(fontSize: 11.sp),
                  label: 'Seat',
                  subValue: 'Seat F2',
                  crossAxisAlignment: CrossAxisAlignment.end,
                ),
              ],
            ),
            kHeight5,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TicketColumn(
                  label: 'Date',
                  subValue: 'Tue, May 06',
                  crossAxisAlignment: CrossAxisAlignment.start,
                  subValueStyle: textThinStyle1.copyWith(fontSize: 11.sp),
                ),
                TicketColumn(
                  label: 'Departuress',
                  subValue: '07:00 AM',
                  subValueStyle: textThinStyle1.copyWith(fontSize: 11.sp),
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                TicketColumn(
                  subValueStyle: textThinStyle1.copyWith(fontSize: 11.sp),
                  label: 'Arrival',
                  subValue: '08:45 AM',
                  crossAxisAlignment: CrossAxisAlignment.end,
                ),
              ],
            ),
            kHeight10,
            const DottedLines(height: 10),
            kHeight5,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TicketColumn(
                  label: 'Date',
                  subValue: 'Gate TT4',
                  crossAxisAlignment: CrossAxisAlignment.start,
                  subValueStyle: textThinStyle1.copyWith(fontSize: 11.sp),
                ),
                TicketColumn(
                  subValueStyle: textThinStyle1.copyWith(fontSize: 11.sp),
                  label: 'Terminal',
                  subValue: 'T001',
                  crossAxisAlignment: CrossAxisAlignment.end,
                ),
              ],
            ),
            kHeight5,
            const DottedLines(height: 10),
            kHeight5,
            Image.asset(
              'asset/dev/barcode_image.png',
              height: 25.h,
            ),
            kHeight5,
            const Center(child: Text('0019T6POL98347'))
          ],
        ),
      ),
    );
  }
}
