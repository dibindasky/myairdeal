import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myairdeal/application/presentation/screens/explore/widgets/flight_card.dart';
import 'package:myairdeal/application/presentation/utils/animations/page_view_animation.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class PageviewBuilder extends StatelessWidget {
  const PageviewBuilder({
    super.key,
    required this.pageController,
    required this.pageValue,
  });

  final PageController pageController;
  final double pageValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290.h,
      child: PagviewAnimateBuilder(
        pageController: pageController,
        pageValue: pageValue,
        pageCount: exploreData.length,
        onpageCallBack: (index) {
          exploreData[index];
        },
        child: (index, context) {
          return FlightCard(
            place: exploreData[index]['city']!,
            image: exploreData[index]['image']!,
          );
        },
      ),
    );
  }
}
