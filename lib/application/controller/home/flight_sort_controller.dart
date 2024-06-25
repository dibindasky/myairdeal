import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/application/presentation/utils/test_const.dart';
import 'package:myairdeal/data/service/flight_sort/flight_service.dart';
import 'package:myairdeal/domain/models/search/city_search_model/city_search_model.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/code_airport.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/flight_search_query.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/flight_search_sort_model.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/pax_info.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/route_info.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/search_modifiers.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/search_airline_information.dart';
import 'package:myairdeal/domain/repository/service/flight_sort_repo.dart';

class FlightSortController extends GetxController {
  // flight service class responsible for api calls
  final FlightRepo flightService = FlightService();

  /// list responsible for the rebuild and sorting of airlines available on [searchListMain]
  RxList<SearchAirlineInformation> searchList =
      <SearchAirlineInformation>[].obs;

  /// here store all the response form api and responsible for giving data to [searchList] for sorting
  RxList<SearchAirlineInformation> searchListMain =
      <SearchAirlineInformation>[].obs;

  // variable responsible for show loading in the search list page
  RxBool searchListLoading = false.obs;

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

  /// class type to be travelled can be choose form [classTypes]
  RxString classType = "ECONOMY".obs;

  /// list of cabin classes, selected cabin class will be stored in [classType]
  List<String> classTypes = ["ECONOMY", "PREMIUM_ECONOMY", "BUSINESS", "FIRST"];

  // departure date in oneway and round trip
  Rx<DateTime> depatureDate = DateTime.now().obs;
  // return date in round trip
  Rx<DateTime> returnDate = DateTime.now().obs;
  // departure dates in multicity trips
  RxList<DateTime?> multiCityDepartureDate =
      <DateTime?>[DateTime.now(), DateTime.now()].obs;

  /// variable to show between search and resent searchs in [ScreenAirportSearch]
  RxBool search = false.obs;

  RxString sortType = 'Best'.obs;
  RxString stopType = 'Direct'.obs;
  RxDouble durationSlider = .5.obs;
  Rx<DateTime> selectedDate = DateTime.now().obs;

  /// selected airports for search for all oneway,round and multicity in a list
  RxList<RxList<CitySearchModel>> airportSelected = <RxList<CitySearchModel>>[
    RxList.generate(2, (index) => CitySearchModel()),
    RxList.generate(2, (index) => CitySearchModel())
  ].obs;

  /// index of selected index for choosing airport in [airportSelected]
  int chooseAirportIndex = 0;

  /// variable responsible for finding wether choosing the departure airport or destination with respect to [chooseAirportIndex]
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
  //Travel Insurence Button
  RxBool travelInsurence = false.obs;
  RxInt selectedPromoCode = 300000.obs;
  //Add ons
  RxBool addOnsChecked = false.obs;

  void searchFlights() async {
    searchListLoading.value = true;
    FlightSearchQuery searchModel = FlightSearchQuery(
      cabinClass: classType.value,
      paxInfo: PaxInfo(
        adult: adultCount.value.toString(),
        child: childrenCount.value.toString(),
        infant: infantCount.value.toString(),
      ),
      searchModifiers:
          SearchModifiers(isConnectingFlight: true, isDirectFlight: true),
      routeInfos: List.generate(
        airportSelected.length,
        (index) => RouteInfo(
          fromCityOrAirport: CodeAirport(code: airportSelected[index][0].code),
          toCityOrAirport: CodeAirport(code: airportSelected[index][1].code),
          travelDate: DateFormating.getDateApi(
            tripType.value == 2
                ? multiCityDepartureDate[index]!
                : tripType.value == 1
                    ? returnDate.value
                    : depatureDate.value,
          ),
        ),
      ),
    );
    final result = await flightService.getAllFlight(
        flightSearchSortModel: FlightSearchSortModel(searchQuery: searchModel));
    result.fold((l) {
      searchListLoading.value = false;
    }, (r) {
      if (r.errors == null) {
        if (r.searchResult?.tripInfos?.combo != null) {
          searchListMain.value =
              r.searchResult?.tripInfos?.combo ?? <SearchAirlineInformation>[];
        } else if (r.searchResult?.tripInfos?.onward != null) {
          searchListMain.value =
              r.searchResult?.tripInfos?.onward ?? <SearchAirlineInformation>[];
        } else if (r.searchResult?.tripInfos?.returns != null) {
          searchListMain.value = r.searchResult?.tripInfos?.returns ??
              <SearchAirlineInformation>[];
        }
        //  else if (r.searchResult?.tripInfos?.multicity1 != null) {
        //   searchListMain.value = r.searchResult?.tripInfos?.multicity1 ??
        //       <SearchAirlineInformation>[];
        // }
        searchList = searchListMain;
      }
      searchListLoading.value = false;
    });
  }

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

  void swapFromAndTow() {
    final from = airportSelected[0][0];
    airportSelected[0][0] = airportSelected[0][1];
    airportSelected[0][1] = from;
  }

  void changeAdultCount(bool increment) {
    if (increment && (adultCount.value + childrenCount.value) < 9) {
      adultCount.value++;
    } else if (!increment && adultCount.value != 1) {
      adultCount.value--;
    }
    if (adultCount.value < infantCount.value) {
      infantCount.value = adultCount.value;
    }
  }

  void changeChildrenCount(bool increment) {
    if (increment && (adultCount.value + childrenCount.value) < 9) {
      childrenCount.value++;
    } else if (!increment && childrenCount.value != 0) {
      childrenCount.value--;
    }
  }

  void changeInfantCount(bool increment) {
    if (increment && infantCount.value < adultCount.value) {
      infantCount.value++;
    } else if (infantCount.value != 0 && !increment) {
      infantCount.value--;
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
