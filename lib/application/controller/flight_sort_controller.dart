import 'package:get/get.dart';

class FlightSortController extends GetxController {
  RxInt tripType = 0.obs;
  RxString traveller = "Adult".obs;
  RxString classType = "Economy".obs;
  Rx<DateTime> depatureDate = DateTime.now().obs;
  RxString depatureDate2 = "Choose depature date".obs;
  RxList<DateTime> multiCityDepartureDate = <DateTime>[DateTime.now()].obs;
  RxBool search = false.obs;
  List<String> tripTypes = ['One-way', 'Round-trip', 'Multi-city'];
  List<String> travellers = ["Adult", "Child", "Infant", "Senior"];
  List<String> classTypes = [
    "Economy",
    "Premium Economy",
    "Business",
    "First Class"
  ];

  void addDateToMultiCityTrip(int index, DateTime date) {
    multiCityDepartureDate[index] = date;
    // for (int i = 0; i < index; i++) {
    //   if(multiCityDepartureDate[i] )
    // }
    // if (index == multiCityDepartureDate.length - 1) {
    //   multiCityDepartureDate.add('');
    // }
  }

  void removeFromMultiCityTrip(int index) {
    multiCityDepartureDate.removeAt(index);
  }

  void changeTripType(int index) {
    tripType.value = index;
  }

  void changeTravellers(String type) {
    traveller.value = type;
  }

  void changeDepartureDate(DateTime value) {
    depatureDate.value = value;
  }

  void changeDepartureDate2(String value) {
    depatureDate2.value = value;
  }

  void changeClassTypes(String type) {
    classType.value = type;
  }

  void changeSearch(bool value) {
    search.value = value;
  }
}
