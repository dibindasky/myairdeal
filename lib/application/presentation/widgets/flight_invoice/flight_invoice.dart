import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/enums/enums.dart';
import 'package:myairdeal/application/presentation/widgets/dotted_line.dart';

class FlightInvoice extends StatelessWidget {
  final FlightTicketInvoiceEnum flightTicketInvoiceEnum;

  const FlightInvoice({super.key, required this.flightTicketInvoiceEnum});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFB3E5FC),
        borderRadius: BorderRadius.circular(16),
        boxShadow: boxShadow2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TicketRow(
            label: 'Passenger',
            value: 'MacRaymond Idan',
            isBold: true,
            fontSize: 18,
          ),
          const DottedLines(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TicketColumn(
                label: 'Temale',
                value: 'TEL',
                isBold: true,
                subValue: 'Temale International\nAirport',
              ),
              Column(
                children: [
                  Text(
                    '01h 45m',
                    style: TextStyle(color: Colors.grey[700], fontSize: 12),
                  ),
                  const SizedBox(height: 4),
                  const Icon(Icons.airplanemode_active,
                      size: 30, color: Colors.blue),
                  const SizedBox(height: 4),
                  Text(
                    '0 Stop',
                    style: TextStyle(color: Colors.grey[700], fontSize: 12),
                  ),
                ],
              ),
              const TicketColumn(
                label: 'Kumasi',
                value: 'KSM',
                isBold: true,
                subValue: 'Kumasi International\nAirport',
              ),
            ],
          ),
          const DottedLines(),
          const TicketRow(label: 'Flight Code', value: 'Asky - 005'),
          const TicketRow(label: 'Class', value: 'Economy'),
          const TicketRow(label: 'Seat', value: 'Seat F2'),
          const TicketRow(label: 'Date', value: 'Tue, May 06'),
          const TicketRow(label: 'Departure', value: '07:00 AM'),
          const TicketRow(label: 'Arrival', value: '08:45 AM'),
          const Divider(),
          const TicketRow(label: 'Gate', value: 'Gate TT4'),
          const TicketRow(label: 'Terminal', value: 'T001'),
          const SizedBox(height: 16),
          const Barcode(),
        ],
      ),
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
  final String value;
  final String subValue;
  final bool isBold;

  const TicketColumn({
    super.key,
    required this.label,
    required this.value,
    required this.subValue,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.grey[700]),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          subValue,
          style: TextStyle(color: Colors.grey[700], fontSize: 12),
        ),
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
