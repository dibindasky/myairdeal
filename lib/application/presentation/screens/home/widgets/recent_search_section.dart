import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/horizontal_shimmer.dart';
import 'package:myairdeal/application/presentation/screens/bookings/flight_invoice/widgets/ticket_column.dart';
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
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight10,
            Text('Recent searches', style: textHeadStyle1),
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
                        const Duration(milliseconds: 400),
                        () => homeController.homeScrollController.animateTo(
                            homeController
                                .homeScrollController.position.minScrollExtent,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.bounceIn),
                      );
                    },
                    child: Container(
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
                                      '${routeInfo?[0].fromCityOrAirport?.city ?? 'City'}, ${routeInfo?[0].fromCityOrAirport?.country ?? 'Country'}'
                                      '',
                                  value: routeInfo?[0]
                                          .fromCityOrAirport
                                          ?.countryCode ??
                                      'code',
                                  subValue:
                                      routeInfo?[0].fromCityOrAirport?.name ??
                                          'airpoert',
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
                                      '${routeInfo?[0].toCityOrAirport?.city ?? 'City'}, ${routeInfo?[0].toCityOrAirport?.country ?? 'Country'}'
                                      '',
                                  value:
                                      routeInfo?[0].toCityOrAirport?.cityCode ??
                                          'Airport',
                                  subValue:
                                      routeInfo?[0].toCityOrAirport?.name ??
                                          'Name',
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
