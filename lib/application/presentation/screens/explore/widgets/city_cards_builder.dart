import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/explore/explore_controller.dart';
import 'package:myairdeal/application/presentation/screens/explore/widgets/city_card.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class CityCardsBuilder extends StatelessWidget {
  const CityCardsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExpolreController>(builder: (controller) {
      return SizedBox(
        height: 80.h,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => kHeight10,
          physics: const BouncingScrollPhysics(),
          itemCount: 8,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                controller.changeIndex(index);
              },
              child: CityCard(
                data: exploreData[index],
                index: index,
              ),
            );
          },
        ),
      );
    });
  }
}
