import 'package:get/get.dart';

class FlightSortController extends GetxController {
  RxInt tripType = 0.obs;
  RxString traveller = "Adult".obs;
  RxString classType = "Economy".obs;
  List<String> tripTypes = ['One-way', 'Round-trip', 'Multi-city'];
  List<String> travellers = ["Adult", "Child", "Infant", "Senior"];
  List<String> classTypes = [
    "Economy",
    "Premium Economy",
    "Business",
    "First Class"
  ];

  void changeTripType(int index) {
    tripType.value = index;
  }

  void changeTravellers(String type) {
    traveller.value = type;
  }

  void changeClassTypes(String type) {
    classType.value = type;
  }
}
