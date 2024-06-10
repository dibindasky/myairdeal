import 'package:get/get.dart';

class TravellerController extends GetxController {
  RxInt genderType = 0.obs;
  String travelerTab = 'Add Details';
  RxList genderList = ['Mr', 'Mrs', 'Ms'].obs;
  RxInt selectedSavedDetailData = 0.obs;
  void changeGenderType(int index) {
    genderType.value = index;
  }

  void changeTab(String selecteTab) {
    travelerTab = selecteTab;
    update();
  }

  void changesAvedDetail(int index) {
    selectedSavedDetailData.value = index;
    update();
  }
}
