import 'dart:developer';

import 'package:get/get.dart';
import 'package:myairdeal/data/service/home/home_service.dart';
import 'package:myairdeal/domain/models/search/recent_deatil_search/recent_detail_search_item.dart';
import 'package:myairdeal/domain/repository/service/home_repo.dart';

class HomeController extends GetxController {
  final HomeRepo homeService = HomeService();

  RxList<RecentDetailSearchItem> recentSearches =
      <RecentDetailSearchItem>[].obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchRecentSearches();
    log('$recentSearches');
  }

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
}
