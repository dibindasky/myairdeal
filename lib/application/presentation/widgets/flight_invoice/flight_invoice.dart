import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/widgets/dotted_line.dart';
import 'package:myairdeal/application/presentation/widgets/flight_ticket_card/widgets/normal_center_items.dart';

class FlightInvoice extends StatelessWidget {
  final FlightTicketInvoiceEnum flightTicketInvoiceEnum;

  const FlightInvoice({super.key, required this.flightTicketInvoiceEnum});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 350,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFFDCF3FF),
            borderRadius: BorderRadius.circular(16),
            boxShadow: boxShadow2,
          ),
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
                    subValue: 'Tue, May 06',
                    crossAxisAlignment: CrossAxisAlignment.start,
                    subValueStyle: textThinStyle1.copyWith(fontSize: 11.sp),
                  ),
                  TicketColumn(
                    subValueStyle: textThinStyle1.copyWith(fontSize: 11.sp),
                    label: 'Arrival',
                    subValue: '08:45 AM',
                    crossAxisAlignment: CrossAxisAlignment.end,
                  ),
                ],
              ),
              // const TicketRow(label: 'Flight Code', value: 'Asky - 005'),
              // const TicketRow(label: 'Class', value: 'Economy'),
              // const TicketRow(label: 'Seat', value: 'Seat F2'),
              // const TicketRow(label: 'Date', value: 'Tue, May 06'),
              // const TicketRow(label: 'Departure', value: '07:00 AM'),
              // const TicketRow(label: 'Arrival', value: '08:45 AM'),
              // const DottedLines(),
              // const TicketRow(label: 'Gate', value: 'Gate TT4'),
              // const TicketRow(label: 'Terminal', value: 'T001'),
              // const SizedBox(height: 16),
              const Barcode(),
            ],
          ),
        ),
      ],
    );
  }
}

class TicketRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isBold;
  final double fontSize;

  const TicketRow({
    super.key,
    required this.label,
    required this.value,
    this.isBold = false,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(color: Colors.grey[700]),
          ),
          Text(
            value,
            style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontSize: fontSize,
            ),
          ),
        ],
      ),
    );
  }
}

class TicketColumn extends StatelessWidget {
  final String label;
  final String? value;
  final String? subValue;
  final bool isBold;
  final CrossAxisAlignment? crossAxisAlignment;
  final TextStyle? lebelStyle;
  final TextStyle? subValueStyle;
  const TicketColumn({
    this.subValueStyle,
    this.lebelStyle,
    super.key,
    required this.label,
    this.subValue,
    this.value,
    this.isBold = false,
    this.crossAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      children: [
        kHeight5,
        Text(
          label,
          style: lebelStyle ??
              textThinStyle1.copyWith(color: kGreyDark, fontSize: 10.sp),
        ),
        kHeight5,
        value != null
            ? Text(
                value!,
                style: TextStyle(
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                  fontSize: 18,
                ),
              )
            : kEmpty,
        subValue != null
            ? Text(
                subValue!,
                style: subValueStyle ??
                    textThinStyle1.copyWith(color: kGreyDark, fontSize: 10.sp),
              )
            : kEmpty,
      ],
    );
  }
}

class Barcode extends StatelessWidget {
  const Barcode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: Colors.black,
      child: const Center(
        child: Text(
          '0019T6POL98347',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}
