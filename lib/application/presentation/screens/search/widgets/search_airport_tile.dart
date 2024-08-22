import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/controller/home/home_controller.dart';
import 'package:myairdeal/application/controller/theme/theme_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/domain/models/search/city_search_model/city_search_model.dart';

class SearchAirportTile extends StatelessWidget {
  const SearchAirportTile(
      {this.history = false, required this.airportModel, super.key});

  final bool history;
  final CitySearchModel airportModel;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    final homeController = Get.find<HomeController>();
    final themeController = Get.find<ThemeController>();
    return GestureDetector(
      onTap: () {
        controller.setAirportSelection(citySearchModel: airportModel);
        homeController.addAirportRecentSearch(citySearchModel: airportModel);
      },
      child: Container(
        color: kGreyLightBackground,
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
        child: Row(
          children: [
            history
                ? Icon(Icons.history, color: themeController.primaryColor)
                : Container(
                    padding: EdgeInsets.all(2.w),
                    decoration: BoxDecoration(
                        color: themeController.secondaryColor.withOpacity(0.8), borderRadius: kRadius5),
                    child: Text(airportModel.code ?? 'DEL')),
            kWidth10,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(airportModel.city ?? '', style: textStyle1),
                  Text(
                    airportModel.name ?? '',
                    style: textThinStyle1.copyWith(color: kGreyDark),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 80.w,
              child: Row(
                children: [
                  // Container(
                  //   height: 10.h,
                  //   width: 20.w,
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //       image: AssetImage(splashImage),
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),
                  kWidth5,
                  Expanded(
                      child: Text(airportModel.country ?? '',
                          overflow: TextOverflow.ellipsis)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
