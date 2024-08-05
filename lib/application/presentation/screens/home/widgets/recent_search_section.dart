import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/screens/status_listing/flight_invoice/widgets/ticket_column.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/shimmer.dart';
import 'package:myairdeal/domain/models/search/recent_detail_search/search_query.dart';
import '../../../../controller/home/home_controller.dart';

class RecentSearchSection extends StatelessWidget {
  const RecentSearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => homeController.fetchRecentSearches());
    return Obx(
      () {
        if (homeController.recentLoading.value) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight10,
                Text('Recent searches', style: textHeadStyle1),
                kHeight5,
                const Skeleton(
                  crossAxisCount: 2,
                  itemCount: 2,
                  childAspectRatio: 2 / 1.3,
                ),
              ],
            ),
          );
        } else if (homeController.recentSearches.isEmpty) {
          return kEmpty;
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight10,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text('Recent searches', style: textHeadStyle1),
            ),
            kHeight5,
            SizedBox(
              height: 95.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => kWidth10,
                itemCount: homeController.recentSearches.length,
                itemBuilder: (context, index) {
                  final routeInfo = homeController
                      .recentSearches[index].searchQuery?.routeInfos;
                  return GestureDetector(
                    onTap: () {
                      Timer(
                        const Duration(milliseconds: 300),
                        () {
                          homeController.homeScrollController.animateTo(
                              homeController.homeScrollController.position
                                  .minScrollExtent,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.bounceIn);
                          Get.find<FlightSortController>()
                              .addResentSearchToForm(homeController
                                      .recentSearches[index].searchQuery ??
                                  SearchQuery());
                        },
                      );
                    },
                    child: Container(
                      margin: index == 0
                          ? EdgeInsets.symmetric(horizontal: 16.w)
                          : EdgeInsets.zero,
                      width: 280.w,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      decoration: BoxDecoration(
                        color: kBluePrimary,
                        borderRadius: kRadius10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: TicketColumn(
                                  label:
                                      '${routeInfo?[0].fromCityOrAirport?.city ?? ''}, ${routeInfo?[0].fromCityOrAirport?.country ?? ''}'
                                      '',
                                  value:
                                      routeInfo?[0].fromCityOrAirport?.code ??
                                          '',
                                  subValue:
                                      routeInfo?[0].fromCityOrAirport?.name ??
                                          '',
                                  subValueStyle:
                                      textThinStyle1.copyWith(color: kBlack),
                                ),
                              ),
                              kWidth20,
                              Image.asset(imageFlightTrip, height: 30.h),
                              kWidth20,
                              Expanded(
                                child: TicketColumn(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  label:
                                      '${routeInfo?[0].toCityOrAirport?.city ?? ''}, ${routeInfo?[0].toCityOrAirport?.country ?? ''}'
                                      '',
                                  value:
                                      routeInfo?[0].toCityOrAirport?.cityCode ??
                                          '',
                                  subValue:
                                      routeInfo?[0].toCityOrAirport?.name ?? '',
                                  subValueStyle:
                                      textThinStyle1.copyWith(color: kBlack),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
