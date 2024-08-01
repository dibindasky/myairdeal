import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/data/service/home/home_service.dart';
import 'package:myairdeal/domain/models/search/city_search_model/city_search_model.dart';
import 'package:myairdeal/domain/models/search/recent_detail_search/recent_detail_search_item.dart';
import 'package:myairdeal/domain/repository/service/home_repo.dart';

class HomeController extends GetxController {
  final HomeRepo homeService = HomeService();

  RxBool isLoading = false.obs;
  RxBool recentLoading = false.obs;
  RxBool search = false.obs;

  RxList<RecentDetailSearchItem> recentSearches =
      <RecentDetailSearchItem>[].obs;

  RxList<CitySearchModel> airportsSearches = <CitySearchModel>[].obs;

  RxList<CitySearchModel> popularCitys = <CitySearchModel>[].obs;

  RxList<CitySearchModel> airportRecentSearches = <CitySearchModel>[].obs;

  // Home screen Scroll controller
  ScrollController homeScrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    fetchRecentSearches();
    fetchAirportRecentSearches();
    fetchAirportSearchWithCountryCode();
  }

  // Recent Searches
  void fetchRecentSearches() async {
    recentLoading.value = true;
    final result = await homeService.getRecentSearches();
    result.fold(
      (failure) {
        log(failure.message.toString());
        recentLoading.value = false;
      },
      (recentDetailSearch) {
        recentSearches.value = recentDetailSearch.data ?? [];
        recentLoading.value = false;
      },
    );
    recentLoading.value = false;
  }

  // Airport Searches
  void fetchAirportsSearches(String cityName) async {
    if (cityName.length < 3) {
      airportsSearches.value = [];
      search.value = false;
      return;
    }

    isLoading.value = true;
    search.value = true;
    final result = await homeService.getAirportsSearches(cityname: cityName);
    result.fold(
      (failure) => log(failure.message.toString()),
      (citySearchData) {
        airportsSearches.value = citySearchData.data ?? [];
      },
    );

    search.value = true;
    isLoading.value = false;
  }

  void changeSearch() {
    search.value = false;
    airportsSearches.value = [];
  }

  // Airport Recent Search
  void fetchAirportRecentSearches() async {
    isLoading.value = true;
    final result = await homeService.getAirportRecentSearches();
    result.fold(
      (failure) => log(failure.message.toString()),
      (citySearchData) {
        airportRecentSearches.value = citySearchData.data ?? [];
      },
    );
    isLoading.value = false;
  }

// Add new airport search
  void addAirportRecentSearch(
      {required CitySearchModel citySearchModel}) async {
    await homeService.addAirportRecentSearch(citySearchModel: citySearchModel);

    airportRecentSearches
        .removeWhere((search) => search.code == citySearchModel.code);
    airportRecentSearches.insert(0, citySearchModel);
  }

  /// Airport search with country code pass the country code according to the location
  void fetchAirportSearchWithCountryCode() async {
    isLoading.value = true;
    search.value = true;
    final result =
        await homeService.getAirportsSearchWithCountryCode(countryCode: 'IN');
    result.fold(
      (failure) => log(failure.message.toString()),
      (citySearchData) {
        popularCitys.value = citySearchData.data ?? [];
        fetchRecentSearches();
      },
    );

    search.value = true;
    isLoading.value = false;
  }
}
