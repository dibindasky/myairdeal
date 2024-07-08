import 'package:flutter/material.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';

class ScreenTicetCanceallation extends StatelessWidget {
  const ScreenTicetCanceallation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          DetailAppBar(heading: 'Ticket Cancellation'),
        ],
      ),
    );
  }
}
