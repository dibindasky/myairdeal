import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/screens/search/widgets/search_airport_tile.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';

class ScreenAirportSearch extends StatelessWidget {
  const ScreenAirportSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FlightSortController>();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                  color: kGreyLightBackground,
                  boxShadow: boxShadow2,
                  borderRadius: kRadius5),
              child: Row(
                children: [
                  kWidth10,
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(Icons.arrow_back)),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        controller.changeSearch(value != '');
                      },
                      style: textStyle1,
                      decoration: InputDecoration(
                        hintText: 'Enter City or airport name',
                        hintStyle: textStyle1.copyWith(color: kGrey),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15.w),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            kHeight10,
            Obx(() {
              if (controller.search.value) {
                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => const SearchAirportTile(),
                  ),
                );
              }
              return Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: kBlueLightShade.withOpacity(0.5),
                            boxShadow: boxShadow2,
                            borderRadius: kRadius5),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        child: Row(
                          children: [
                            const Icon(Icons.location_searching_sharp,
                                color: kBluePrimary),
                            kWidth10,
                            Text('Nearesst Airport',
                                style: textStyle1.copyWith(color: kBluePrimary))
                          ],
                        ),
                      ),
                      kHeight10,
                      Text(
                        'Recent searches',
                        style: textStyle1.copyWith(color: kBluePrimary),
                      ),
                      kHeight10,
                      ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) =>
                            const SearchAirportTile(history: true),
                      ),
                      kHeight10,
                      Text(
                        'Popular cities',
                        style: textStyle1.copyWith(color: kBluePrimary),
                      ),
                      kHeight10,
                      ListView.builder(
                        itemCount: 10,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) =>
                            const SearchAirportTile(),
                      )
                    ],
                  ),
                ),
              );
            })
          ]),
        ),
      ),
    );
  }
}
