import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/home/flight_sort_controller.dart';
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

  /// Gender type [genderType] 0- Mr, 1- Mrs, 2- Ms
  RxInt genderType = 0.obs;
  RxList genderList = ['Mr', 'Mrs', 'Ms'].obs;
  RxList genderListchild = ['Ms', 'Master'].obs;
  RxInt selectedSavedDetailData = 0.obs;
  String travelerTab = 'Add Details';
  List<String> detailList = [' Itinerary', 'Add Details', 'Review', 'Payments'];

  // list responsible for showing passenger history
  RxList<TravellerInfo> allPassengers = <TravellerInfo>[].obs;
  RxBool isLoading = false.obs;
  RxBool hasError = false.obs;
  RxBool seatIsLoading = false.obs;

  // trip flight seats list key-> flight id , value-> seat infos
  Map<String, TripSeatsInfo> seatsAvilable = <String, TripSeatsInfo>{}.obs;
  RxInt row = 0.obs;
  RxInt col = 0.obs;
  // seat list to show ui
  RxList<List<SInfo>> seatList = <List<SInfo>>[].obs;

  // sub steps in add details section
  List<String> addDetailsSubList = [
    'Passenger details',
    'Select seat',
    'Add Baggage & Meal',
    'Travel Insurance'
  ];

  /// controller and key for traveller contact detail
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

  // gst deatils of booking
  Rx<GstInfo> gstInfo = GstInfo().obs;

  // total number of passengers
  RxInt passengerLength = 1.obs;

  /// list responsible for entering the passenger details
  RxList<TravellerInfo?> passengerDetails =
      List<TravellerInfo?>.filled(20, null, growable: true).obs;

  /// add meals information to the passenger to the traveller in the given index
  void addMealsInfo(SsrInfo ssrInfo, int index) {
    TravellerInfo traveller = passengerDetails[index]!;
    traveller.ssrMealInfos ??= <SsrInfo>[];
    for (int i = 0; i < traveller.ssrMealInfos!.length; i++) {
      if (traveller.ssrMealInfos![i].key == ssrInfo.key) {
        traveller.ssrMealInfos!.removeAt(i);
        break;
      }
    }
    traveller.ssrMealInfos!.add(ssrInfo);
    print(traveller.toJson());
    print(traveller.ssrMealInfos);
  }

  /// add Baggage information to the passenger to the traveller in the given index
  void addBaggagesInfo(SsrInfo ssrInfo, int index) {
    TravellerInfo traveller = passengerDetails[index]!;
    traveller.ssrBaggageInfos ??= <SsrInfo>[];
    for (int i = 0; i < traveller.ssrBaggageInfos!.length; i++) {
      if (traveller.ssrBaggageInfos![i].key == ssrInfo.key) {
        traveller.ssrBaggageInfos!.removeAt(i);
        break;
      }
    }
    traveller.ssrBaggageInfos!.add(ssrInfo);
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
  }

  /// add passenger details to the list to submit while booking
  void addPassengerDetail(int index, TravellerInfo travellerInfo, bool save) {
    passengerDetails[index] = travellerInfo;
    if (save) {
      savePassengerDetails(travellerInfo);
    }
  }

  // add passengers details to server
  void savePassengerDetails(TravellerInfo travellerInfo) async {
    await _passengersRepo.addPassengers(travellerInfo: travellerInfo);
  }

  changeDetailEnterTab(int index, {String? bookingId}) {
    selectedMainTab.value = index;
    update();
    // call seats while coming to the passenger details filling screen
    if (index == 1) {
      getSeatsAvailable(bookingId: bookingId ?? '');
    }
  }

  // update the passenger count from other controller for checking
  void updatePassengersNumber(int number) {
    passengerLength.value = number;
    selectedMainTab.value = 0;
    selectedAddDetailsStep.value = 0;
    update();
  }

  changeAddDetailsSubStep(int index) {
    // if (index == 1 || index == 2) return;
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
      // remove later after adding seat,meal,baggage
      // changeDetailEnterTab(3);
      selectedAddDetailsStep.value += 1;
      update();
      return;
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

  // add gst details to the variable
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

  // Get All passengers
  void getAllPassengers(
    String type,
  ) async {
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

        for (var passenger in r.passengers ?? <TravellerInfo>[]) {
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
        }
        allPassengers.value = temp;
        update();
        isLoading.value = false;
      },
    );
  }

  // selectedSeats
  Map<int, RxList<String>> selectedSeats = {};
  // selected flight id
  RxString selectedSeatFlightKey = ''.obs;

  void selectSeat({required int passengerIndex, required String code}) {}

  void getSeatsAvailable({required String bookingId}) async {
    seatList.value = [];
    seatIsLoading.value = true;
    // seatsAvilable['756'] = TripSeatsInfo.fromJson(((seatMap['tripSeatMap']
    //     as Map<String, dynamic>)['tripSeat']!['756']) as Map<String, dynamic>);
    // row.value = seatsAvilable['756']?.sData?.row ?? 0;
    // col.value = seatsAvilable['756']?.sData?.column ?? 0;
    // seatList = RxList.generate(row.value,
    //     (i) => List.generate(col.value, (j) => SInfo(freeSpace: true)));
    // for (SInfo s in seatsAvilable['756']?.sInfo ?? <SInfo>[]) {
    //   print(s.seatPosition?.toJson());
    //   seatList[s.seatPosition!.row! - 1][s.seatPosition!.column! - 1] = s;
    // }

    seatsAvilable = <String, TripSeatsInfo>{}.obs;
    final result = await bookingRepo.getSeatMap(
        bookingId: RetrieveSingleBookingRequestModel(bookingId: bookingId));
    result.fold((l) => null, (r) {
      final List<String> keysList =
          r.tripSeatMap?.tripSeats?.keys.toList() ?? [];
      for (var element in keysList) {
        seatsAvilable[element] = TripSeatsInfo.fromJson(
            r.tripSeatMap?.tripSeats?[element] ?? <String, dynamic>{});
      }
      if (seatsAvilable.isNotEmpty) {
        row.value = seatsAvilable[keysList.first]?.sData?.row ?? 0;
        col.value = seatsAvilable[keysList.first]?.sData?.column ?? 0;

        seatList = RxList.generate(row.value,
            (i) => List.generate(col.value, (j) => SInfo(freeSpace: true)));
        for (SInfo s in seatsAvilable[keysList.first]?.sInfo ?? <SInfo>[]) {
          seatList[s.seatPosition!.row! - 1][s.seatPosition!.column! - 1] = s;
        }
        selectedSeatFlightKey.value = keysList.first;
      }
    });
    seatIsLoading.value = false;
  }
}
