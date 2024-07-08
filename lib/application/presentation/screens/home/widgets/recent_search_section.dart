import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/horizontal_shimmer.dart';

import '../../../../controller/home/home_controller.dart';

class RecentSearchSection extends StatelessWidget {
  const RecentSearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        homeController.fetchRecentSearches();
      },
    );
    return Obx(
      () {
        if (homeController.isLoading.value) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight10,
              Text('Recent searches', style: textHeadStyle1),
              kHeight5,
              const HorizontalShimmerSkeleton(
                width: 190,
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                height: 100,
              )
            ],
          );
        } else if (homeController.recentSearches.isEmpty) {
          return kEmpty;
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight10,
              Text('Recent searches', style: textHeadStyle1),
              kHeight5,
              SizedBox(
                height: 90.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => kWidth10,
                  itemCount: homeController.recentSearches.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 90.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      decoration: BoxDecoration(
                        color: kBluePrimary,
                        borderRadius: kRadius10,
                      ),
                      child: FittedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dubai',
                                      style: textThinStyle1.copyWith(
                                          color: kWhite),
                                    ),
                                    kHeight5,
                                    Text(
                                        homeController
                                                .recentSearches[index]
                                                .searchQuery!
                                                .searchQuery
                                                ?.routeInfos?[0]
                                                .fromCityOrAirport
                                                ?.code ??
                                            '',
                                        style: textThinStyle1.copyWith(
                                            color: kWhite)),
                                  ],
                                ),
                                kWidth20,
                                Container(
                                  height: 50.h,
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        imageFlightTrip,
                                      ),
                                    ),
                                  ),
                                ),
                                kWidth20,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Banglore',
                                      style: textThinStyle1.copyWith(
                                          color: kWhite),
                                    ),
                                    kHeight5,
                                    Text(
                                      homeController
                                              .recentSearches[index]
                                              .searchQuery!
                                              .searchQuery
                                              ?.routeInfos?[0]
                                              .toCityOrAirport
                                              ?.code ??
                                          '',
                                      style: textThinStyle1.copyWith(
                                          color: kWhite),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            kHeight5,
                            Text(
                              homeController.recentSearches[index].searchQuery!
                                      .searchQuery?.routeInfos?[0].travelDate ??
                                  '',
                              style: textThinStyle1.copyWith(color: kWhite),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
