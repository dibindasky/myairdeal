import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/itenary_tab/fare_summary.dart';
import 'package:myairdeal/application/presentation/screens/flight_detail_filling/detail_tabs/itenary_tab/inner_content.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ItineraryTab extends StatelessWidget {
  const ItineraryTab({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AuthController>();
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => controller.getUserInfo(true));
    return Container(
      margin: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        boxShadow: boxShadow2,
        color: kWhite,
        borderRadius: kRadius10,
      ),
      child: const Column(
        children: [
          InnerContents(),
          FareSummary(),
        ],
      ),
    );
  }
}
