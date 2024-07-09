import 'dart:developer';

import 'package:get/get.dart';
import 'package:myairdeal/data/service/home/home_service.dart';
import 'package:myairdeal/domain/models/search/city_search_model/city_search_model.dart';
import 'package:myairdeal/domain/models/search/recent_deatil_search/recent_detail_search_item.dart';
import 'package:myairdeal/domain/repository/service/home_repo.dart';

class HomeController extends GetxController {
  final HomeRepo homeService = HomeService();

  RxList<RecentDetailSearchItem> recentSearches =
      <RecentDetailSearchItem>[].obs;

  RxList<CitySearchModel> airportsSearches = <CitySearchModel>[].obs;

  RxList<CitySearchModel> airportRecentSearches = <CitySearchModel>[].obs;

  RxBool isLoading = false.obs;

  RxBool search = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchRecentSearches();
    fetchAirportRecentSearches();
  }

  // Recent Searches
  void fetchRecentSearches() async {
    isLoading.value = true;
    final result = await homeService.getRecentSearches();
    result.fold(
      (failure) => log(failure.message.toString()),
      (recentDetailSearch) {
        recentSearches.value = recentDetailSearch.data ?? [];
      },
    );
    isLoading.value = false;
  }

  // Airport Searches
  void fetchAirportsSearches(String cityName) async {
    if (cityName.length < 3) {
      airportsSearches.value = [];
      search.value = false;
      return;
    }
    ;
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
}
