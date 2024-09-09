import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/booking/booking_controller.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
import 'package:myairdeal/application/controller/home/home_controller.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/data/service/booking/booking_service.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/gst_info.dart';
import 'package:myairdeal/data/service/passengers/passengers.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/ssr_info.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/traveller_info.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_booking_request_model/retrieve_single_booking_request_model.dart';
import 'package:myairdeal/domain/models/booking/trip_seats_info/s_info.dart';
import 'package:myairdeal/domain/models/booking/trip_seats_info/trip_seats_info.dart';
import 'package:myairdeal/domain/repository/service/booking_rep.dart';
import 'package:myairdeal/domain/repository/service/passengers_repo.dart';

class TravellerController extends GetxController {
  final PassengersRepo _passengersRepo = PassengersService();
  final BookingRepo bookingRepo = BookingService();

  final ScrollController travellerScreenScrollController = ScrollController();

  /// Gender type [genderType] 0- Mr, 1- Mrs, 2- Ms
  RxInt genderType = 0.obs;
  RxList genderList = ['Mr', 'Mrs', 'Ms'].obs;
  RxList genderListchild = ['Ms', 'Master'].obs;
  RxInt selectedSavedDetailData = 0.obs;
  String travelerTab = 'Add Details';
  List<String> detailList = [' Itinerary', 'Add Details', 'Review', 'Payments'];

  /// Selected coutry code in passenger selection dailog
  RxString selectedCoutryCode = 'IN'.obs;

  /// list responsible for showing passenger history
  RxList<TravellerInfo> allPassengers = <TravellerInfo>[].obs;
  RxBool isLoading = false.obs;
  RxBool hasError = false.obs;
  RxBool seatIsLoading = false.obs;

  /// trip flight seats list key-> flight id , value-> seat infos
  Map<String, TripSeatsInfo> seatsAvilable = <String, TripSeatsInfo>{}.obs;
  RxInt row = 0.obs;
  RxInt col = 0.obs;

  /// seat list to show ui
  RxList<List<SInfo>> seatList = <List<SInfo>>[].obs;

  /// sub steps in add details section
  List<String> addDetailsSubList = [
    'Passenger details',
    'Select seat',
    'Add Baggage & Meal',
    'Travel Insurance'
  ];

  // controller and key for traveller contact detail
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController gstEmailController = TextEditingController();
  TextEditingController gstPhoneController = TextEditingController();
  TextEditingController gstNumberController = TextEditingController();
  TextEditingController gstCompanyNameController = TextEditingController();
  TextEditingController gstAddressController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  /// Add details Screen
  RxInt selectedMainTab = 0.obs;
  RxBool selectedDetailStepArrow = false.obs;
  RxInt selectedAddDetailsStep = 0.obs;
  int totalSubStepLength = 4;

  /// selectedSeats
  Map<String, RxList<SsrInfo?>> selectedSeats = {};

  /// selected flight id
  RxString selectedSeatFlightKey = ''.obs;

  /// key list of flights to handle seat maping
  RxList<String> keysList = <String>[].obs;

  /// loader to handle seat building
  RxBool seatLoader = false.obs;

  // gst deatils of booking
  Rx<GstInfo> gstInfo = GstInfo().obs;

  /// total number of passengers
  RxInt passengerLength = 1.obs;

  /// total number of passengers with out infant count
  RxInt passengerLengthWithoutInfant = 1.obs;

  /// addons prices to be add to total
  RxDouble addOnsprice = 0.0.obs;

  /// list responsible for entering the passenger details
  RxList<TravellerInfo?> passengerDetails =
      List<TravellerInfo?>.filled(20, null, growable: true).obs;

  /// clear traveller details
  void clearTaravellerDetails() {
    print('-----------------------------------call in clear traveller details');
    addOnsprice.value = 0;
    passengerDetails.value =
        List<TravellerInfo?>.filled(20, null, growable: true);
  }

  void changeCoutryCode(String code) {
    selectedCoutryCode.value = code;
    update();
  }

  /// clear the meals info from the given index
  void clearMealInfo(SsrInfo ssrInfo, int index) {
    TravellerInfo traveller = passengerDetails[index]!;
    traveller.ssrMealInfos ??= <SsrInfo>[];
    for (int i = 0; i < traveller.ssrMealInfos!.length; i++) {
      if (traveller.ssrMealInfos![i].key == ssrInfo.key) {
        // addOnsprice.value -= ssrInfo.amount ?? 0;
        traveller.ssrMealInfos!.removeAt(i);
        break;
      }
    }
    passengerDetails[index] = traveller;
    calcualteAddonPrice();
  }

  /// add meals information to the passenger to the traveller in the given index
  void addMealsInfo(SsrInfo ssrInfo, int index) {
    TravellerInfo traveller = passengerDetails[index]!;
    traveller.ssrMealInfos ??= <SsrInfo>[];
    for (int i = 0; i < traveller.ssrMealInfos!.length; i++) {
      if (traveller.ssrMealInfos![i].key == ssrInfo.key) {
        // addOnsprice.value -= ssrInfo.amount ?? 0;
        traveller.ssrMealInfos!.removeAt(i);
        break;
      }
    }
    traveller.ssrMealInfos!.add(ssrInfo.copyWith(amount: ssrInfo.amount ?? 0));
    passengerDetails[index] = traveller;
    // addOnsprice.value += ssrInfo.amount ?? 0;
    calcualteAddonPrice();
  }

  /// add Baggage information to the passenger to the traveller in the given index
  void addBaggagesInfo(SsrInfo ssrInfo, int index) {
    TravellerInfo traveller = passengerDetails[index]!;
    traveller.ssrBaggageInfos ??= <SsrInfo>[];
    for (int i = 0; i < traveller.ssrBaggageInfos!.length; i++) {
      if (traveller.ssrBaggageInfos![i].key == ssrInfo.key) {
        // addOnsprice.value -= ssrInfo.amount ?? 0;
        traveller.ssrBaggageInfos!.removeAt(i);
        break;
      }
    }
    traveller.ssrBaggageInfos!
        .add(ssrInfo.copyWith(amount: ssrInfo.amount ?? 0));
    passengerDetails[index] = traveller;
    print('ssr info => ${ssrInfo.toString()}');
    for (var traveller in passengerDetails) {
      for (var element in traveller?.ssrBaggageInfos ?? <SsrInfo>[]) {
        print(element.toString());
      }
    }
    // addOnsprice.value += ssrInfo.amount ?? 0;
    calcualteAddonPrice();
    print('add on price => ${addOnsprice.value}');
  }

  /// clear baggage infos from particular traveller
  void clearBaggagesInfo(SsrInfo ssrInfo, int index) {
    print('clear Baggage info');
    TravellerInfo traveller = passengerDetails[index]!;
    traveller.ssrBaggageInfos ??= <SsrInfo>[];
    for (int i = 0; i < traveller.ssrBaggageInfos!.length; i++) {
      print('keys => ${traveller.ssrBaggageInfos![i].key} == ${ssrInfo.key}');
      if (traveller.ssrBaggageInfos![i].key == ssrInfo.key) {
        // addOnsprice.value -= ssrInfo.amount ?? 0;
        print('before remove =>  ${traveller.ssrBaggageInfos}');
        traveller.ssrBaggageInfos!.removeAt(i);
        print('after remove =>  ${traveller.ssrBaggageInfos}');
        break;
      }
    }
    passengerDetails[index] = traveller;
    calcualteAddonPrice();
  }

  /// add seat information to the passenger to the traveller in the given index
  void addSeatsInfo(SsrInfo ssrInfo, int index) {
    TravellerInfo traveller = passengerDetails[index]!;
    traveller.ssrSeatInfos ??= <SsrInfo>[];
    for (int i = 0; i < traveller.ssrSeatInfos!.length; i++) {
      if (traveller.ssrSeatInfos![i].key == ssrInfo.key) {
        traveller.ssrSeatInfos!.removeAt(i);
        break;
      }
    }
    traveller.ssrSeatInfos!.add(ssrInfo);
    for (var traveller in passengerDetails) {
      for (var element in traveller?.ssrSeatInfos ?? <SsrInfo>[]) {
        print(element.toString());
      }
    }
    calcualteAddonPrice();
  }

  /// to get seat total price
  double calcualteAddonSeatPrice() {
    double addOn = 0.0;
    for (var traveller in passengerDetails) {
      for (var seat in traveller?.ssrSeatInfos ?? <SsrInfo>[]) {
        addOn += seat.amount ?? 0;
      }
    }
    return addOn;
  }

  /// to get Meal total price
  double calcualteAddonMealPrice() {
    double addOn = 0.0;
    for (var traveller in passengerDetails) {
      for (var seat in traveller?.ssrMealInfos ?? <SsrInfo>[]) {
        addOn += seat.amount ?? 0;
      }
    }
    return addOn;
  }

  /// to get BAggage total price
  double calcualteAddonBAggagePrice() {
    double addOn = 0.0;
    for (var traveller in passengerDetails) {
      for (var seat in traveller?.ssrBaggageInfos ?? <SsrInfo>[]) {
        addOn += seat.amount ?? 0;
      }
    }
    return addOn;
  }

  /// get addonPrice
  double calcualteAddonPrice() {
    double addOn = 0.0;
    for (var traveller in passengerDetails) {
      for (var seat in traveller?.ssrSeatInfos ?? <SsrInfo>[]) {
        addOn += seat.amount ?? 0;
      }
      for (var baggage in traveller?.ssrBaggageInfos ?? <SsrInfo>[]) {
        addOn += baggage.amount ?? 0;
      }
      for (var meal in traveller?.ssrMealInfos ?? <SsrInfo>[]) {
        addOn += meal.amount ?? 0;
      }
    }
    addOnsprice.value = addOn;
    return addOn;
  }

  /// calculate add on by passing traveller
  double calcualteAddonPriceByPassingTraveller(List<TravellerInfo>? list) {
    double addOn = 0.0;
    for (var traveller in (list ?? <TravellerInfo>[])) {
      for (var seat in traveller.ssrSeatInfos ?? <SsrInfo>[]) {
        addOn += seat.amount ?? 0;
      }
      for (var baggage in traveller.ssrBaggageInfos ?? <SsrInfo>[]) {
        addOn += baggage.amount ?? 0;
      }
      for (var meal in traveller.ssrMealInfos ?? <SsrInfo>[]) {
        addOn += meal.amount ?? 0;
      }
    }
    addOnsprice.value = addOn;
    return addOn;
  }

  /// back button detail filling page
  bool backButtonPaymetPage([bool back = false]) {
    // if tab is on first index go back to the prvious route
    if (selectedMainTab.value == 0) {
      Get.find<HomeController>()
          .changeNavigationChecker(NavigationChecker.search);
      if (back) {
        Get.back();
      }
      return true;
    } // if main tab is on the passenger detail section then check for inner tab
    else if (selectedMainTab.value == 1) {
      // if inner tab is on the first tab then go back to the previous main tab
      if (selectedAddDetailsStep.value == 0) {
        selectedMainTab.value = 0;
        update();
        return false;
      } // if inner tab is not on the first one, change to previous
      else {
        selectedAddDetailsStep.value = selectedAddDetailsStep.value - 1;
        update();
        return false;
      }
    } // if main tab is not on the first one then go the previous tab
    else {
      selectedMainTab.value = selectedMainTab.value - 1;
      update();
      return false;
    }
  }

  /// add passenger details to the list to submit while booking
  void addPassengerDetail(int index, TravellerInfo travellerInfo, bool save) {
    if (passengerDetails[index] == null) {
      passengerDetails[index] = travellerInfo;
    } else {
      passengerDetails[index] = passengerDetails[index]!.copyWith(
        dob: travellerInfo.dob,
        eD: travellerInfo.eD,
        fN: travellerInfo.fN,
        lN: travellerInfo.lN,
        pNum: travellerInfo.pNum,
        pid: travellerInfo.pid,
        pt: travellerInfo.pt,
        ti: travellerInfo.ti,
      );
    }
    if (save) {
      savePassengerDetails(travellerInfo);
    }
    calcualteAddonPrice();
  }

  /// add passengers details to server
  void savePassengerDetails(TravellerInfo travellerInfo) async {
    await _passengersRepo.addPassengers(travellerInfo: travellerInfo);
  }

  /// itenary section main tab changing
  void changeDetailEnterTab(
    int index,
  ) {
    selectedMainTab.value = index;
    update();
    // call for markup price while going to payment section
    if (index == 3) {
      print('get markup call');
      Get.find<BookingController>().getMarkup();
    }
  }

  /// update the passenger count from other controller for checking
  void updatePassengersNumber(int number, int passengerLengthWithoutInfant) {
    passengerLength.value = number;
    selectedMainTab.value = 0;
    selectedAddDetailsStep.value = 0;
    this.passengerLengthWithoutInfant.value = passengerLengthWithoutInfant;
    passengerDetails =
        List<TravellerInfo?>.filled(20, null, growable: true).obs;
    update();
  }

  /// itinary passenger details section tab change
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
      for (int i = 0; i < passengerLength.value; i++) {
        if (passengerDetails[i] == null) {
          Get.snackbar(
              'Add all passengers details', 'Add all passengers to continue.',
              forwardAnimationCurve: Curves.bounceIn,
              backgroundColor: kRed,
              colorText: kWhite,
              snackPosition: SnackPosition.BOTTOM);
          return;
        }
      }
      selectedAddDetailsStep.value += 1;
      update();
      return;
    } else if (selectedAddDetailsStep.value == 1) {
      chnageSelectedFlightToNext();
    } else if (selectedAddDetailsStep.value == 2) {
      selectedAddDetailsStep.value += 1;
      update();
    } else if (selectedAddDetailsStep.value < totalSubStepLength - 1) {
      selectedAddDetailsStep.value += 1;
      update();
    }
  }

  // clear data after booking to not to affect the next booking
  void clearDataAfterBooking() {
    selectedMainTab = 0.obs;
    selectedAddDetailsStep = 0.obs;
    passengerDetails =
        List<TravellerInfo?>.filled(20, null, growable: true).obs;
    phoneController.text = '';
    emailController.text = '';
    gstEmailController.text = '';
    gstPhoneController.text = '';
    gstNumberController.text = '';
    gstCompanyNameController.text = '';
    gstAddressController.text = '';
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

  /// add gst details to the variable
  void addGstDetails() {
    gstInfo.value = gstInfo.value.copyWith(
        address:
            gstAddressController.text == '' ? null : gstAddressController.text,
        email: gstEmailController.text == '' ? null : gstEmailController.text,
        gstNumber:
            gstNumberController.text == '' ? null : gstNumberController.text,
        mobile: gstPhoneController.text == '' ? null : gstPhoneController.text,
        registeredName: gstCompanyNameController.text == ''
            ? null
            : gstAddressController.text);
  }

  /// Get All passengers
  void getAllPassengers(String type, bool dobCheck, bool pcs) async {
    isLoading.value = true;
    final data = await _passengersRepo.getPassengers();
    allPassengers.value = [];
    data.fold(
      (l) {
        isLoading.value = false;
      },
      (r) {
        List<TravellerInfo> temp = [];
        final travelDate =
            Get.find<FlightSortController>().multiCityDepartureDate.first!;

        print('pcs => $pcs');
        for (var passenger in r.passengers ?? <TravellerInfo>[]) {
          // if passport details are necessary then add passenger with passport dearils only
          if (pcs) {
            final dob =
                DateFormating.convertStringToDateTime(passenger.dob ?? '');
            if (dob == null) continue;

            final ageOnTravelDate = travelDate.difference(dob).inDays ~/ 365;
            final fareType =
                Get.find<FlightSortController>().passengerFareType.value;

            if (type == 'ADULT' &&
                passenger.ti != 'Master' &&
                passenger.pNum != null &&
                passenger.pNum!.isNotEmpty) {
              if ((fareType == 2 && ageOnTravelDate >= 60) ||
                  (fareType != 2 && ageOnTravelDate >= 12)) {
                temp.add(passenger);
              }
            } else if (type == 'CHILD' &&
                passenger.pNum != null &&
                passenger.pNum!.isNotEmpty) {
              if (ageOnTravelDate >= 2 && ageOnTravelDate < 12) {
                temp.add(passenger);
              }
            } else if (type == 'INFANT' &&
                passenger.pNum != null &&
                passenger.pNum!.isNotEmpty) {
              if (ageOnTravelDate < 2) {
                temp.add(passenger);
              }
            }
          } // if dob is necessary then add passenger with dob only
          else if (dobCheck) {
            final dob =
                DateFormating.convertStringToDateTime(passenger.dob ?? '');
            if (dob == null) continue;

            final ageOnTravelDate = travelDate.difference(dob).inDays ~/ 365;
            final fareType =
                Get.find<FlightSortController>().passengerFareType.value;

            if (type == 'ADULT' && passenger.ti != 'Master') {
              if ((fareType == 2 && ageOnTravelDate >= 60) ||
                  (fareType != 2 && ageOnTravelDate >= 12)) {
                temp.add(passenger);
              }
            } else if (type == 'CHILD') {
              if (ageOnTravelDate >= 2 && ageOnTravelDate < 12) {
                temp.add(passenger);
              }
            } else if (type == 'INFANT') {
              if (ageOnTravelDate < 2) {
                temp.add(passenger);
              }
            }
          } // if dont need to check for dob and passport then check type and add detail
          else {
            if (type == 'ADULT' && passenger.ti != 'Master') {
              temp.add(passenger);
            } else if (type == 'CHILD') {
              temp.add(passenger);
            } else if (type == 'INFANT') {
              temp.add(passenger);
            }
          }
        }
        allPassengers.value = temp;
        update();
        isLoading.value = false;
      },
    );
  }

  /// select seats for each flights
  void selectSeat({required int passengerIndex, required SInfo seat}) {
    print(seat.toJson());
    if (selectedSeats[selectedSeatFlightKey.value]!.any((element) =>
        element?.code == seat.code &&
        element?.key == selectedSeatFlightKey.value)) {
      print('seat alredy there reomve it form list');
      final index = selectedSeats[selectedSeatFlightKey.value]!
          .lastIndexWhere((element) => element?.code == seat.code);
      selectedSeats[selectedSeatFlightKey.value]![index] = null;
      addOnsprice.value -= seat.amount ?? 0;
    } else if (selectedSeats[selectedSeatFlightKey.value]!.contains(null)) {
      print('add to list');
      final index = selectedSeats[selectedSeatFlightKey.value]!
          .lastIndexWhere((element) => element == null
              // element?.code == seat.code &&
              // element?.key == selectedSeatFlightKey.value
              );
      selectedSeats[selectedSeatFlightKey.value]![index] = SsrInfo(
          key: selectedSeatFlightKey.value,
          code: seat.code,
          amount: seat.amount);
      addOnsprice.value += seat.amount ?? 0;
    } else {
      print('no conditions satisfys');
    }
    for (var e in selectedSeats[selectedSeatFlightKey.value] ?? <SsrInfo?>[]) {
      print(e?.code);
    }
  }

  /// change selected flight using flight id for seat selection
  void chnageSelectedFlightUsingId(String id) {
    selectedSeatFlightKey.value = id;
    buildSeatUI();
  }

  /// change selected flight to next for seat selection
  void chnageSelectedFlightToNext() {
    if (keysList.isEmpty) {
      selectedAddDetailsStep.value += 1;
      update();
      return;
    }
    int index = keysList
        .indexWhere((element) => element == selectedSeatFlightKey.value);
    // if the seatselection happening in last index change the tab to next
    if (index == keysList.length - 1 || index == -1) {
      selectedAddDetailsStep.value += 1;
      update();
      // clear seatinfo from passenger details
      // for (var passenger in passengerDetails) {
      //   if (passenger?.ssrBaggageInfos != null) {
      //     for (var element in passenger!.ssrBaggageInfos!) {
      //       addOnsprice.value -= element.amount ?? 0;
      //     }
      //   }
      //   passenger?.ssrSeatInfos = null;
      // }
      // add selected seats to passengers
      print('seat added to passenger');
      for (int i = 0; i < passengerLengthWithoutInfant.value; i++) {
        for (var key in keysList) {
          if (selectedSeats[key] != null && selectedSeats[key]!.length > i) {
            (passengerDetails[i]!.ssrSeatInfos ?? [])
                .removeWhere((element) => element.key == key);
            if (selectedSeats[key]?[i] != null) {
              passengerDetails[i]!.ssrSeatInfos = [
                ...passengerDetails[i]!.ssrSeatInfos ?? [],
                selectedSeats[key]![i]!,
              ];
            }
          }
        }
        for (var e in passengerDetails[i]?.ssrSeatInfos ?? <SsrInfo>[]) {
          print(e.toJson());
        }
      }
    } else {
      selectedSeatFlightKey.value = keysList[index + 1];
      buildSeatUI();
    }
  }

  /// build the seats in the ui using the selected flight
  void buildSeatUI() {
    seatLoader.value = true;
    row.value = seatsAvilable[selectedSeatFlightKey.value]?.sData?.row ?? 0;
    col.value = seatsAvilable[selectedSeatFlightKey.value]?.sData?.column ?? 0;
    seatList = RxList.generate(row.value,
        (i) => List.generate(col.value, (j) => SInfo(freeSpace: true)));
    for (SInfo s
        in seatsAvilable[selectedSeatFlightKey.value]?.sInfo ?? <SInfo>[]) {
      if (s.seatPosition?.row == null || s.seatPosition?.column == null) {
        continue;
      }
      seatList[s.seatPosition!.row! - 1][s.seatPosition!.column! - 1] = s;
    }
    if (selectedSeats[selectedSeatFlightKey.value] == null) {
      selectedSeats[selectedSeatFlightKey.value] = RxList.generate(
        passengerLengthWithoutInfant.value,
        (index) => null,
      );
    }
    Timer(const Duration(milliseconds: 300), () {
      seatLoader.value = false;
    });
  }

  void getSeatsAvailable({required String bookingId}) async {
    seatList.value = [];
    seatIsLoading.value = true;
    keysList.value = [];
    selectedSeats = {};
    seatsAvilable = <String, TripSeatsInfo>{}.obs;
    final result = await bookingRepo.getSeatMap(
        bookingId: RetrieveSingleBookingRequestModel(bookingId: bookingId));
    result.fold((l) => null, (r) {
      keysList.value = r.tripSeatMap?.tripSeats?.keys.toList() ?? <String>[];
      print('number of keys => ${keysList.length}');
      for (var element in keysList) {
        seatsAvilable[element] = TripSeatsInfo.fromJson(
            r.tripSeatMap?.tripSeats?[element] ?? <String, dynamic>{});
      }
      if (seatsAvilable.isNotEmpty) {
        selectedSeatFlightKey.value = keysList.first;
        buildSeatUI();
      }
    });
    seatIsLoading.value = false;
  }
}
