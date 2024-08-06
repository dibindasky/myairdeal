import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/widgets/detail_appbar.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ScreenCommingSoon extends StatelessWidget {
  const ScreenCommingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments as Map<String, dynamic>;
    final image = arguments['image'] as String;
    return Scaffold(
      body: Column(
        children: [
          const DetailAppBar(
            heading: 'Comming soon..',
          ),
          kHeight50,
          kHeight50,
          Center(child: Image.asset(image)),
          kHeight15,
          Text('Comming soon', style: textHeadStyle1),
        ],
      ),
    );
  }
}
