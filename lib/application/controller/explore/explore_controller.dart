import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreController extends GetxController {
  RxString selectedTab = 'Domestic'.obs;
  RxInt selectedListviewIndex = 0.obs;

  void changeTab(String newTab) {
    selectedTab.value = newTab;
    update();
  }

  void changeIndex(int index) {
    selectedListviewIndex.value = index;
    update();
  }

  void updatePageController(PageController pageController, int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
    );
  }
}
