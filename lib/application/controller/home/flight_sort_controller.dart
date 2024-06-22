import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/test_const.dart';
import 'package:myairdeal/domain/models/search/city_search_model/city_search_model.dart';

class FlightSortController extends GetxController {
  // Change category
  RxInt selectedCategoryType = 0.obs;
  // variable used to select the trip type 0- oneway, 1- roundtrip, 2- multicity
  RxInt tripType = 0.obs;
  // number of adult to be travelled
  RxInt adultCount = 1.obs;
  // number of children to be travelled
  RxInt childrenCount = 0.obs;
  // number of infant to be travelled
  RxInt infantCount = 0.obs;
  // number of citys in multicity trip
  RxInt multiCityCount = 2.obs;
  // class type to be travelled
  RxString classType = "Economy".obs;
  // departure date in oneway and round trip
  Rx<DateTime> depatureDate = DateTime.now().obs;
  // return date in round trip
  Rx<DateTime> returnDate = DateTime.now().obs;
  // departure dates in multicity trips
  RxList<DateTime?> multiCityDepartureDate =
      <DateTime?>[DateTime.now(), DateTime.now()].obs;
  // variable to show between search and resent searchs
  RxBool search = false.obs;
  RxString sortType = 'Best'.obs;
  RxString stopType = 'Direct'.obs;
  RxDouble durationSlider = .5.obs;
  Rx<DateTime> selectedDate = DateTime.now().obs;
  RxList<RxList<CitySearchModel>> airportSelected = <RxList<CitySearchModel>>[
    RxList.generate(2, (index) => CitySearchModel()),
    RxList.generate(2, (index) => CitySearchModel())
  ].obs;
  int chooseAirportIndex = 0;
  bool departureAirport = true;

  List<String> sortAirlines = ['Indigo', 'Air-India', 'Asky Airlines'];
  RxList<CitySearchModel> searchCityList = <CitySearchModel>[].obs;

  RxList<String> sortAirlinesSelected = <String>[].obs;
  RxList<String> sortStopsSelected = <String>[].obs;
  List<String> departureTimes = [
    '00:00 to 05:59',
    '00:01 to 05:59',
    '00:03 to 05:59'
  ];
  RxList<String> departureTimesSelected = <String>[].obs;
  List<String> arrivesTimes = [
    '00:04 to 05:59',
    '00:05 to 05:59',
    '00:06 to 05:59'
  ];
  RxList<String> arrivesTimesSelected = <String>[].obs;
  List<String> sortTypes = ['Best', 'Fastest', 'Cheapest'];
  List<String> stopTypes = ['Direct', 'Max 1 Stop', 'Max 2 Stops'];
  List<String> tripTypes = ['One-way', 'Round-trip', 'Multi-city'];
  List<String> classTypes = [
    "Economy",
    "Premium Economy",
    "Business Class",
    "First Class"
  ];
  //Travel Insurence Button
  RxBool travelInsurence = false.obs;
  RxInt selectedPromoCode = 300000.obs;
  //Add ons
  RxBool addOnsChecked = false.obs;

  changeCategory(int index) {
    selectedCategoryType.value = index;
    update();
  }

  void changeAdds(bool value) {
    addOnsChecked.value = value;
    update();
  }

  void changePromoCode(int index) {
    selectedPromoCode.value = index;
    update();
  }

  void changeTravelValue(bool value) {
    travelInsurence.value = value;
    update();
  }

  void changeAdultCount(bool increment) {
    if (!increment) {
      if (adultCount.value != 0) {
        adultCount.value--;
      }
    } else {
      adultCount.value++;
    }
  }

  void changeChildrenCount(bool increment) {
    if (!increment) {
      if (childrenCount.value != 0) {
        childrenCount.value--;
      }
    } else {
      childrenCount.value++;
    }
  }

  void changeInfantCount(bool increment) {
    if (!increment) {
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
    airportSelected.removeAt(index);
    multiCityCount.value--;
  }

  void increaseMulticityField() {
    CitySearchModel model =
        airportSelected[multiCityDepartureDate.length - 1][1];
    RxList<CitySearchModel> list =
        RxList.generate(2, (index) => index == 0 ? model : CitySearchModel());
    multiCityCount.value++;
    multiCityDepartureDate.add(null);
    airportSelected.add(list);
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

  void changeSearch(String value) {
    search.value = value != '';
    if (value == '') {
      searchCityList.value = <CitySearchModel>[];
    } else {
      List<CitySearchModel> searchList = [];
      for (var element in searchAirport) {
        if (element[searchCountry]!.contains(value) ||
            element[searchCode]!.contains(value) ||
            element[searchcity]!.contains(value)) {
          searchList.add(CitySearchModel.fromJson(element));
        }
      }
      searchCityList.value = searchList;
    }
  }

  void changeSelectedAirport({required bool from, int index = 0}) {
    Get.toNamed(Routes.airportSearch);
    departureAirport = from;
    chooseAirportIndex = index;
  }

  void setAirportSelection({required CitySearchModel citySearchModel}) {
    // add selected airport to the selected airport list
    airportSelected[chooseAirportIndex][departureAirport ? 0 : 1] =
        citySearchModel;
    if (chooseAirportIndex == 0 &&
        !departureAirport &&
        multiCityCount.value == 2) {
      RxList<CitySearchModel> list = RxList.generate(
          2, (index) => index == 0 ? citySearchModel : CitySearchModel());
      airportSelected[1] = list;
    }
    Get.back();
  }

  void changeSortTypes(String type) {
    sortType.value = type;
  }

  void changeStopTypes(String type) {
    stopType.value = type;
  }

  void changeDurationSlider(double value) {
    durationSlider.value = value;
  }

  void selectAirline(String value) {
    if (sortAirlinesSelected.contains(value)) {
      sortAirlinesSelected.remove(value);
    } else {
      sortAirlinesSelected.add(value);
    }
  }

  void selectStops(String value) {
    if (sortStopsSelected.contains(value)) {
      sortStopsSelected.remove(value);
    } else {
      sortStopsSelected.add(value);
    }
  }

  void selectAllAirline(bool value) {
    sortAirlinesSelected.clear();
    if (value) {
      sortAirlinesSelected.addAll(sortAirlines);
    }
  }

  void selectDepartureTime(String value) {
    if (departureTimesSelected.contains(value)) {
      departureTimesSelected.remove(value);
    } else {
      departureTimesSelected.add(value);
    }
  }

  void selectArrivalTime(String value) {
    if (arrivesTimesSelected.contains(value)) {
      arrivesTimesSelected.remove(value);
    } else {
      arrivesTimesSelected.add(value);
    }
  }

  void selctDate(DateTime value) {
    selectedDate.value = value;
  }
}
