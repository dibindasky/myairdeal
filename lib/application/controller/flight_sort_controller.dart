import 'package:get/get.dart';

class FlightSortController extends GetxController {
  // variable used to select the trip type oneway,roundtrip, multicity
  RxInt tripType = 0.obs;
  // number of adult to be travelled
  RxInt adultCount = 1.obs;
  // number of children to be travelled
  RxInt childrenCount = 0.obs;
  // number of infant to be travelled
  RxInt infantCount = 0.obs;
  // number of citys in multicity trip
  RxInt multiCityCount = 1.obs;
  // class type to be travelled
  RxString classType = "Economy".obs;
  // departure date in oneway and round trip
  Rx<DateTime> depatureDate = DateTime.now().obs;
  // return date in round trip
  Rx<DateTime> returnDate = DateTime.now().obs;
  // departure dates in multicity trips
  RxList<DateTime?> multiCityDepartureDate = <DateTime?>[DateTime.now()].obs;
  // variable to show between search and resent searchs
  RxBool search = false.obs;

  List<String> tripTypes = ['One-way', 'Round-trip', 'Multi-city'];
  List<String> classTypes = [
    "Economy",
    "Premium Economy",
    "Business Class",
    "First Class"
  ];

  void changeAdultCount(bool inc) {
    if (!inc) {
      if (adultCount.value != 0) {
        adultCount.value--;
      }
    } else {
      adultCount.value++;
    }
  }

  void changeChildrenCount(bool inc) {
    if (!inc) {
      if (childrenCount.value != 0) {
        childrenCount.value--;
      }
    } else {
      childrenCount.value++;
    }
  }

  void changeInfantCount(bool inc) {
    if (!inc) {
      if (infantCount.value != 0) {
        infantCount.value--;
      }
    } else {
      infantCount.value++;
    }
  }

  void addDateToMultiCityTrip(int index, DateTime date) {
    multiCityDepartureDate[index] = date;
    for (int i = 0; i < multiCityCount.value; i++) {
      if (i < index &&
          multiCityDepartureDate[i] != null &&
          multiCityDepartureDate[i]!.isAfter(date)) {
        multiCityDepartureDate[i] = date;
      } else if (i > index &&
          multiCityDepartureDate[i] != null &&
          multiCityDepartureDate[i]!.isBefore(date)) {
        multiCityDepartureDate[i] = date;
      }
    }
  }

  void removeFromMultiCityTrip(int index) {
    multiCityDepartureDate.removeAt(index);
    multiCityCount.value--;
  }

  void increaseMulticityField() {
    multiCityCount.value++;
    multiCityDepartureDate.add(null);
  }

  void changeTripType(int index) {
    tripType.value = index;
  }

  void changeDepartureDate(DateTime value) {
    depatureDate.value = value;
    if (depatureDate.value.isAfter(returnDate.value)) {
      returnDate.value = depatureDate.value;
    }
  }

  void changeRetunDate(DateTime value) {
    returnDate.value = value;
  }

  void changeClassTypes(String type) {
    classType.value = type;
  }

  void changeSearch(bool value) {
    search.value = value;
  }
}
