import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';

class ScreenFlightDetail extends StatelessWidget {
  const ScreenFlightDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
            onTap: () {
              Get.toNamed(Routes.reviewFlightDetail, id: 1);
            },
            child: Text('FlightSetail')),
      ),
    );
  }
}
