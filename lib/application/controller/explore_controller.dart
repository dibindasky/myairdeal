import 'package:get/get.dart';

class ExpolreController extends GetxController {
  RxString selectedTab = 'Domestic'.obs;

  RxInt selectedListviewIndex = 0.obs;

  void changeTab(String newTab) {
    selectedTab.value = newTab;
    update();
  }

  changeIndex(int index) {
    selectedListviewIndex.value = index;
    update();
  }
}
