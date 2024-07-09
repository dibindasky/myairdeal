import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/home_controller.dart';
import 'package:myairdeal/application/presentation/screens/search/widgets/search_airport_tile.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/shimmer/horizontal_shimmer.dart';
import 'package:myairdeal/domain/models/search/city_search_model/city_search_model.dart';

class ScreenAirportSearch extends StatefulWidget {
  const ScreenAirportSearch({super.key});

  @override
  State<ScreenAirportSearch> createState() => _ScreenAirportSearchState();
}

class _ScreenAirportSearchState extends State<ScreenAirportSearch> {
  final focusNode = FocusNode();

  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      focusNode.requestFocus();
      homeController.fetchAirportRecentSearches();
    });

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: kGreyLightBackground,
                  boxShadow: boxShadow2,
                  borderRadius: kRadius5,
                ),
                child: Row(
                  children: [
                    kWidth10,
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(Icons.arrow_back),
                    ),
                    Expanded(
                      child: TextField(
                        focusNode: focusNode,
                        onChanged: (value) {
                          homeController.fetchAirportsSearches(value);
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
              Obx(
                () {
                  if (homeController.isLoading.value) {
                    return const Expanded(
                      child: HorizontalShimmerSkeleton(
                        paddingvertical: 7.5,
                        itemCount: 15,
                        scrollDirection: Axis.vertical,
                        height: 60,
                        width: 0,
                      ),
                    );
                  } else if (homeController.search.value) {
                    if (homeController.airportsSearches.isEmpty) {
                      return const Center(
                        child: Text(
                          'Data Not found',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kRed,
                          ),
                        ),
                      );
                    } else {
                      return Expanded(
                        child: ListView.builder(
                          itemCount: homeController.airportsSearches.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) => SearchAirportTile(
                            airportModel:
                                homeController.airportsSearches[index],
                          ),
                        ),
                      );
                    }
                  } else {
                    if (homeController.airportRecentSearches.isEmpty) {
                      return Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: kBlueLightShade.withOpacity(0.5),
                                  boxShadow: boxShadow2,
                                  borderRadius: kRadius5,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.w,
                                  vertical: 10.h,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(Icons.location_searching_sharp,
                                        color: kBluePrimary),
                                    kWidth10,
                                    Text(
                                      'Nearest Airport',
                                      style: textStyle1.copyWith(
                                          color: kBluePrimary),
                                    ),
                                  ],
                                ),
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
                                    SearchAirportTile(
                                  airportModel: CitySearchModel(
                                    city: 'Popular City',
                                    code: 'CODE',
                                    country: 'Country',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: kBlueLightShade.withOpacity(0.5),
                                  boxShadow: boxShadow2,
                                  borderRadius: kRadius5,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.w,
                                  vertical: 10.h,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(Icons.location_searching_sharp,
                                        color: kBluePrimary),
                                    kWidth10,
                                    Text(
                                      'Nearest Airport',
                                      style: textStyle1.copyWith(
                                          color: kBluePrimary),
                                    ),
                                  ],
                                ),
                              ),
                              kHeight10,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Recent searches',
                                    style: textStyle1.copyWith(
                                        color: kBluePrimary),
                                  ),
                                  kHeight10,
                                  ListView.builder(
                                    itemCount: homeController
                                        .airportRecentSearches.length,
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) =>
                                        SearchAirportTile(
                                      history: true,
                                      airportModel: CitySearchModel(
                                        city: homeController
                                            .airportRecentSearches[index].city,
                                        code: homeController
                                            .airportRecentSearches[index].code,
                                        country: homeController
                                            .airportRecentSearches[index]
                                            .country,
                                      ),
                                    ),
                                  ),
                                ],
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
                                    SearchAirportTile(
                                  airportModel: CitySearchModel(
                                    city: 'Popular City',
                                    code: 'CODE',
                                    country: 'Country',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
