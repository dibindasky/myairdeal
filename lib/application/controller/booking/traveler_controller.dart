import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/traveller_info.dart';

class TravellerController extends GetxController {
  /// Gender type [genderType] 0- Mr, 1- Mrs, 2- Ms
  RxInt genderType = 0.obs;
  RxList genderList = ['Mr', 'Mrs', 'Ms'].obs;
  RxInt selectedSavedDetailData = 0.obs;
  String travelerTab = 'Add Details';
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

  /// list responsible for entering the passenger details
  RxList<TravellerInfo?> passengerDetails =
      List.generate(20, (index) => null).obs;

  /// add passenger details to the list to submit while booking
  void addPassengerDetail(int index, TravellerInfo travellerInfo) {
    passengerDetails[index] = travellerInfo;
  }

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
