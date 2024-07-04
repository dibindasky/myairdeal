import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';

class TravellerController extends GetxController {
  /// Gender type [genderType] 0- Mr, 1- Mrs, 2- Ms
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

  /// Add details Screen
  RxInt selectedMainTab = 0.obs;
  RxBool selectedDetailStepArrow = false.obs;
  RxInt selectedAddDetailsStep = 0.obs;
  int totalSubStepLength = 4;

  changeDetailEnterTab(int index) {
    selectedMainTab.value = index;
    update();
  }

  changeAddDetailsSubStep(int index) {
    selectedAddDetailsStep.value = index;
    update();
  }

  void changeAddDetailsSubStepMinus() {
    if (selectedAddDetailsStep.value > 0) {
      selectedAddDetailsStep.value -= 1;
      update();
    } else {
      Get.snackbar('', 'Fill from here', backgroundColor: kGreen);
    }
  }

  void changeAddDetailsSubStepAdd() {
    if (selectedAddDetailsStep.value < totalSubStepLength - 1) {
      selectedAddDetailsStep.value += 1;
      update();
    } else {
      Get.snackbar('', 'Fill from here', backgroundColor: kGreen);
    }
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
