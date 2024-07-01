import 'package:get/get.dart';

class TravellerController extends GetxController {
  RxInt genderType = 0.obs;
  String travelerTab = 'Add Details';
  RxList genderList = ['Mr', 'Mrs', 'Ms'].obs;
  RxInt selectedSavedDetailData = 0.obs;
  List<String> detailList = [' Itinerary', 'Add Details', 'Review', 'Payments'];
  List<String> addDetailsSubList = [
    'Passenger details',
    'Select seat',
    'Add Baggage & Meal',
    'Travel Insurance'
  ];

  RxInt selectedMainTab = 0.obs;
  RxBool selectedDetailStepArrow = false.obs;
  RxInt selectedAddDetailsStep = 0.obs;

  changeDetailEnterTab(int index) {
    selectedMainTab.value = index;
    update();
  }

  changeAddDetailsSubStep(int index) {
    selectedAddDetailsStep.value = index;
    update();
  }

  changeSelectedDetailStepArrow(bool newValue) {
    selectedDetailStepArrow.value = newValue;
    update();
  }

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
