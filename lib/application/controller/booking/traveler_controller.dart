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

  // total number of passengers
  int passengerLength = 1;

  /// list responsible for entering the passenger details
  RxList<TravellerInfo?> passengerDetails =
      List<TravellerInfo?>.filled(20, null, growable: true).obs;

  /// add passenger details to the list to submit while booking
  void addPassengerDetail(int index, TravellerInfo travellerInfo) {
    passengerDetails[index] = travellerInfo;
  }

  changeDetailEnterTab(int index) {
    selectedMainTab.value = index;
    update();
  }

  void updatePassengersNumber(int number) {
    passengerLength = number;
  }

  changeAddDetailsSubStep(int index) {
    selectedAddDetailsStep.value = index;
    update();
  }

  void changeAddDetailsSubStepMinus() {
    if (selectedAddDetailsStep.value > 0) {
      selectedAddDetailsStep.value -= 1;
      update();
    }
  }

  void changeAddDetailsSubStepAdd() {
    if (selectedAddDetailsStep.value == 0) {
      for (int i = 0; i < passengerLength; i++) {
        if (passengerDetails[i] == null) {
          Get.snackbar(
              'Add all passengers details', 'Add all passengers to continue.',
              backgroundColor: kRed,
              colorText: kWhite,
              snackPosition: SnackPosition.BOTTOM);
          return;
        }
      }
      // remove later after adding seat,meal,baggage
      changeDetailEnterTab(3);
      return;
    } else if (selectedAddDetailsStep.value < totalSubStepLength - 1) {
      selectedAddDetailsStep.value += 1;
      update();
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
