import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/explore/explore_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class CityCard extends StatelessWidget {
  final Map<String, String> data;
  final int index;

  CityCard({
    super.key,
    required this.data,
    required this.index,
  });

  final controller = Get.find<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75.w,
      decoration: BoxDecoration(
        border: controller.selectedListviewIndex.value == index
            ? Border.all(width: 3, color: kBlack.withOpacity(.5))
            : const Border(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(
            controller.selectedListviewIndex.value == index ? 3 : 10.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: kRadius10,
              child: Image.asset(
                data['image']!,
                fit: BoxFit.fitHeight,
                width: 90.w,
                height: 200.h,
              ),
            ),
            Center(
              child: Text(
                data['city']!,
                style: const TextStyle(
                  color: kWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
