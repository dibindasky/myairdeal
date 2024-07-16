import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/presentation/routes/routes.dart';
import 'package:myairdeal/application/presentation/utils/colors.dart';
import 'package:myairdeal/application/presentation/utils/constants.dart';
import 'package:myairdeal/application/presentation/utils/formating/date_formating.dart';
import 'package:myairdeal/data/service/flight_sort/flight_service.dart';
import 'package:myairdeal/data/service/home/home_service.dart';
import 'package:myairdeal/domain/models/search/city_search_model/city_search_model.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/code_airport.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/flight_search_query.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/flight_search_sort_model.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/pax_info.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/route_info.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/search_modifiers.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/search_airline_information.dart';
import 'package:myairdeal/domain/repository/service/flight_sort_repo.dart';
import 'package:myairdeal/domain/repository/service/home_repo.dart';

class FlightSortController extends GetxController {
  // Change category [flights, air ambulance, chatered flight, helicopter]
  RxInt selectedCategoryType = 0.obs;

  // flight service class responsible for api calls
  final FlightRepo flightService = FlightService();
  final HomeRepo homeService = HomeService();

  /// list responsible for international(combo) multicity and round trips airline storing,
  /// [comboList] data provider
  RxList<List<SearchAirlineInformation>> comboListMain =
      <List<SearchAirlineInformation>>[].obs;

  /// list work with [comboListMain] and responsible to show sorted list
  RxList<List<SearchAirlineInformation>> comboList =
      <List<SearchAirlineInformation>>[].obs;

  /// list responsible for the rebuild and sorting of airlines available on [searchListMain]
  RxList<RxList<SearchAirlineInformation>> searchList =
      <RxList<SearchAirlineInformation>>[].obs;

  /// here store all the response form api and responsible for giving data to [searchList] for sorting
  List<List<SearchAirlineInformation>> searchListMain =
      <List<SearchAirlineInformation>>[].obs;

  /// variable used for showing the selection of flights for multi city and round trip,
  /// responsible for work with [searchList]
  RxList<int> selectedFlights = [0, 0].obs;

  /// selected index in the price list of [selectedFlights]
  RxList<int> selectedTicketPrices = <int>[0, 0].obs;

  /// selected trip list index that responsible for work with [searchList] and [selectedFlights]
  /// to set which list should show on sorting page
  RxInt selectedTripListIndex = 0.obs;

  // total price of the ticket with the selected total ticket fare
  RxDouble totalTicketPrice = 0.0.obs;

  // scroll controller used to show the list[selected flights and selected tabs in sorting] in a auto scroll view
  ScrollController flightSortController = ScrollController();
  ScrollController flightSortScreenController = ScrollController();

  // map responsible for finding the variables for sorting and showing it in the ui
  RxMap<int, List<RxList<dynamic>>> sortingVariables =
      <int, List<RxList<dynamic>>>{}.obs;
  // map responsible for storing the selected varibales for sorting
  RxMap<int, List<RxList<dynamic>>> sortingVariablesSelected =
      <int, List<RxList<dynamic>>>{}.obs;

  // variable responsible for show loading in the search list page
  RxBool searchListLoading = false.obs;

  // variable used to select the trip type
  // 0- oneway
  // 1- roundtrip
  // 2- multicity
  RxInt tripType = 0.obs;

  /// list of passenger faretypes to show
  List<String> passengerFareTypes = ['REGULAR', 'STUDENT', 'SENIOR_CITIZEN'];

  // selected passenger fare type default 0 -> Regular
  RxInt passengerFareType = 0.obs;

  /// searchForm validation checker
  RxBool searchValidated = false.obs;

  // number of adult to be travelled
  RxInt adultCount = 1.obs;
  // number of children to be travelled
  RxInt childrenCount = 0.obs;
  // number of infant to be travelled
  RxInt infantCount = 0.obs;

  // number of citys in multicity trip
  RxInt multiCityCount = 2.obs;

  // bool responsible for halnle ui for combo(international multicity and round trip)
  RxBool comboTrip = false.obs;

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

  // value used to change the duration of flights in the sorting section
  RxDouble durationSlider = 1.0.obs;

  /// selected airports for search for all oneway,round and multicity in a list
  RxList<RxList<CitySearchModel>> airportSelected = <RxList<CitySearchModel>>[
    RxList.generate(2, (index) => CitySearchModel()),
    RxList.generate(2, (index) => CitySearchModel())
  ].obs;

  /// index of selected index for choosing airport in [airportSelected]
  int chooseAirportIndex = 0;

  /// variable responsible for finding wether choosing the departure airport or destination with respect to [chooseAirportIndex]
  bool departureAirport = true;

  // list responsible for the showing the available airlines from the given list
  RxList<String> sortAirlines = <String>[].obs;

  /// list responsible for the sorting of the [searchList], store the selected airlines
  RxList<String> sortAirlinesSelected = <String>[].obs;

  // list responsible for search of city and airport in the search airport page
  RxList<CitySearchModel> searchCityList = <CitySearchModel>[].obs;

  // timer for search expiary
  Rx<Timer> timer = Timer(const Duration(seconds: 1), () {}).obs;
  RxInt remainingTime = 0.obs;

  List<String> departureTimes = [
    '00:00 to 05:59',
    '06:00 to 11:59',
    '12:00 to 17:59',
    '18:00 to 23:59'
  ];

  RxList<String> departureTimesSelected = <String>[].obs;
  List<String> arrivesTimes = [
    '00:00 to 05:59',
    '06:00 to 11:59',
    '12:00 to 17:59',
    '18:00 to 23:59'
  ];
  RxList<String> arrivesTimesSelected = <String>[].obs;
  List<String> sortTypes = ['Best', 'Fastest', 'Cheapest'];
  List<String> stopTypes = ['Direct', 'Max 1 Stop', 'Max 2 Stops'];
  List<String> tripTypes = ['One-way', 'Round-trip', 'Multi-city'];

  // for rebuilding the homepage search form
  RxBool clearingBool = false.obs;

// change the category in the home section [flights, air ambulance, chatered flight, helicopter]
  void changeCategory(int index) {
    selectedCategoryType.value = index;
    update();
  }

  // end search timer
  void stopSearchTimer() {
    timer.value.cancel();
  }

  // start search timer
  void startSearchTimer() {
    timer.value.cancel();
    remainingTime.value = (15 * 60);
    timer.value = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingTime.value == (0)) {
        timer.cancel();
        Get.back(id: 1);
        if (Get.currentRoute == Routes.bottomBar) {
          Get.dialog(
            AlertDialog(
              backgroundColor: kRedLight,
              title: const Text('Session expired'),
              content: const Text(
                  'Your session time has been expired. Search again to get result'),
            ),
          );
        }
      } else {
        remainingTime.value--;
      }
    });
  }

  // clear all the information after booking not to affect the next booking
  void clearDataAfterBooking() {
    comboList.clear();
    comboListMain.clear();
    searchList.clear();
    searchListMain.clear();
    selectedTripListIndex.value = 0;
    airportSelected = <RxList<CitySearchModel>>[
      RxList.generate(2, (index) => CitySearchModel()),
      RxList.generate(2, (index) => CitySearchModel())
    ].obs;
    sortingVariables.clear();
    sortAirlinesSelected.clear();
    departureTimesSelected.clear();
    arrivesTimesSelected.clear();
    adultCount.value = 1;
    infantCount.value = 0;
    childrenCount.value = 0;
    depatureDate.value = DateTime.now();
    returnDate.value = DateTime.now();
    multiCityDepartureDate = <DateTime?>[DateTime.now(), DateTime.now()].obs;
    validateSearchForm();
    update();
    clearingBool.value = true;
    Timer(const Duration(seconds: 1), () {
      clearingBool.value = false;
    });
  }

  void updateSearchToRecent(FlightSearchSortModel flightSearchSortModel) {
    homeService.addRecentSearch(flightSearchSortModel: flightSearchSortModel);
  }

  // validate form for search flight
  bool validateSearchForm() {
    for (int i = 0; i < airportSelected.length; i++) {
      // for validate one-way and round-trip city selection
      if (tripType.value != 2 && i == 0) {
        if (((airportSelected[i][0].code == null &&
                airportSelected[i][0].city == null) ||
            (airportSelected[i][1].code == null &&
                airportSelected[i][1].city == null))) {
          searchValidated.value = false;
          return false;
        }
      } // for multicity validation
      else if (tripType.value == 2 &&
          ((airportSelected[i][0].code == null &&
                  airportSelected[i][0].city == null) ||
              (airportSelected[i][1].code == null &&
                  airportSelected[i][1].city == null))) {
        searchValidated.value = false;
        return false;
      }
      // for date validation for multicity, one way and round trip allwase auto filled
      if (tripType.value == 2 && multiCityDepartureDate[i] == null) {
        searchValidated.value = false;
        return false;
      }
    }
    searchValidated.value = true;
    return true;
  }

  // search api request for all types of trips
  void searchFlights(bool fromCalender,
      [BuildContext? context, bool? fromEdit]) async {
    final validate = validateSearchForm();
    if (!validate) {
      return;
    }
    if (!fromCalender) {
      if (fromEdit!) {
        Navigator.of(context!).pop();
      } else {
        Get.toNamed(Routes.searchSortFlight, id: 1);
      }
    }
    comboTrip.value = false;
    searchListLoading.value = true;
    selectedTripListIndex.value = 0;
    durationSlider.value = 1;
    if (tripType.value == 1) {
      // if it is a round trip add airport as ulta
      airportSelected[1].value = [airportSelected[0][1], airportSelected[0][0]];
      selectedFlights.value = [0, 0];
      selectedTicketPrices.value = [0, 0];
    } else if (tripType.value == 2) {
      selectedFlights.value =
          List.generate(airportSelected.length, (index) => 0);
      selectedTicketPrices.value =
          List.generate(airportSelected.length, (index) => 0);
    }
    FlightSearchQuery searchModel = FlightSearchQuery(
      cabinClass: classType.value,
      paxInfo: PaxInfo(
        adult: adultCount.value.toString(),
        child: childrenCount.value.toString(),
        infant: infantCount.value.toString(),
      ),
      searchModifiers: SearchModifiers(
          isConnectingFlight: true,
          isDirectFlight: true,
          pft: passengerFareTypes[passengerFareType.value]),
      routeInfos: List.generate(
        tripType.value == 0
            ? 1
            : tripType.value == 1
                ? 2
                : airportSelected.length,
        (index) => RouteInfo(
          // fromCityOrAirport: CodeAirport(code: 'MAA'),
          // toCityOrAirport: CodeAirport(code: 'DEL'),
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
      Get.back(id: 1);
      Get.snackbar('Failed to load data', l.message ?? errorMessage,
          backgroundColor: kRed, colorText: kWhite);
    }, (r) {
      if (r.errors == null) {
        searchListMain = [];
        searchList.value = [];
        if (r.searchResult?.tripInfos?.combo != null) {
          searchListMain.add(RxList.from(r.searchResult?.tripInfos?.combo ??
              <SearchAirlineInformation>[]));
          getComboList();
          comboTrip.value = true;
        } else {
          if (r.searchResult?.tripInfos?.onward != null) {
            searchListMain.add(RxList.from(r.searchResult?.tripInfos?.onward ??
                <SearchAirlineInformation>[]));
          }
          if (r.searchResult?.tripInfos?.returns != null) {
            searchListMain.add(RxList.from(r.searchResult?.tripInfos?.returns ??
                <SearchAirlineInformation>[]));
          }
          if ((tripType.value == 2 && multiCityCount.value >= 1) ||
              r.searchResult?.tripInfos?.multicity1 != null) {
            searchListMain.add(RxList.from(
                r.searchResult?.tripInfos?.multicity1 ??
                    <SearchAirlineInformation>[]));
          }
          if ((tripType.value == 2 && multiCityCount.value >= 2) ||
              r.searchResult?.tripInfos?.multicity2 != null) {
            searchListMain.add(RxList.from(
                r.searchResult?.tripInfos?.multicity2 ??
                    <SearchAirlineInformation>[]));
          }
          if ((tripType.value == 2 && multiCityCount.value >= 3) ||
              r.searchResult?.tripInfos?.multicity3 != null) {
            searchListMain.add(RxList.from(
                r.searchResult?.tripInfos?.multicity3 ??
                    <SearchAirlineInformation>[]));
          }
          if ((tripType.value == 2 && multiCityCount.value >= 4) ||
              r.searchResult?.tripInfos?.multicity4 != null) {
            searchListMain.add(RxList.from(
                r.searchResult?.tripInfos?.multicity4 ??
                    <SearchAirlineInformation>[]));
          }
          if ((tripType.value == 2 && multiCityCount.value >= 5) ||
              r.searchResult?.tripInfos?.multicity5 != null) {
            searchListMain.add(RxList.from(
                r.searchResult?.tripInfos?.multicity5 ??
                    <SearchAirlineInformation>[]));
          }
          if ((tripType.value == 2 && multiCityCount.value >= 6) ||
              r.searchResult?.tripInfos?.multicity6 != null) {
            searchListMain.add(RxList.from(
                r.searchResult?.tripInfos?.multicity6 ??
                    <SearchAirlineInformation>[]));
          }
          for (var e in searchListMain) {
            searchList.add(RxList.from(e));
          }
        }
        startSearchTimer();
      } else if (r.errors != null) {
        Get.back(id: 1);
        Get.snackbar(
            'Failed to load data', r.errors?[0].message ?? errorMessage,
            backgroundColor: kRed, colorText: kWhite);
      }
      searchListLoading.value = false;
      if (searchListMain.isEmpty) {
        return;
      }
      if (!comboTrip.value) getSortingVariables();
    });
    updateSearchToRecent(FlightSearchSortModel(searchQuery: searchModel));
  }

  /// for international multi city and round trip need a seperate list from [searchListMain] first index
  /// sort and add the airlines list to [comboListMain] and [comboList] for sort and ui
  void getComboList() {
    print('in combo making function');
    print('searchListMain => ${searchListMain[0].length}');
    for (var trip in searchListMain[0]) {
      int j = 0, k = 0;
      List<SearchAirlineInformation> tempList = [];
      for (int i = 0; i < (trip.sI?.length ?? 0); i++) {
        print(i);
        if (trip.sI![k].sN == 0 &&
            (trip.sI!.length - 1 == i || trip.sI![i + 1].sN == 0)) {
          print('conditon success');
          tempList.add(SearchAirlineInformation(
              sI: trip.sI!.sublist(k, i + 1),
              totalPriceList: trip.totalPriceList));
          j++;
          k = i + 1;
        }
        if (j == airportSelected.length) {
          break;
        }
      }
      comboListMain.add(tempList);
    }
    comboList.addAll(comboListMain);
  }

// get the variables for sorting like {duration,ailines,times,stops}
// 0 -> airlines
// 1 -> stops
// 2 -> duration
// 3 -> arrival times
// 4 -> departure times
  void getSortingVariables() {
    sortingVariables = <int, List<RxList<dynamic>>>{}.obs;
    sortingVariablesSelected = <int, List<RxList<dynamic>>>{}.obs;
    // loop for all trips
    for (int i = 0; i < searchListMain.length; i++) {
      sortingVariables[i] = List.generate(5, (index) => [].obs);
      sortingVariablesSelected[i] = List.generate(5, (index) => [].obs);
      // loop for iterate in the single list items
      for (var item in searchListMain[i]) {
        // finding available airlines and add it for sorting
        if (item.sI?[0].fD?.aI?.name != null &&
            item.sI![0].fD!.aI!.name != '' &&
            !sortingVariables[i]![0].contains(item.sI![0].fD!.aI!.name!)) {
          sortingVariables[i]![0].add(item.sI![0].fD!.aI!.name!);
        }
        // avaliable stops in the given list
        if (!sortingVariables[i]![1].contains(item.sI!.length - 1)) {
          sortingVariables[i]![1].add(item.sI!.length - 1);
        }
        // duration of flights form the given list
        if (item.sI!.length > 1) {
          int minutes = DateFormating.getTotalDifferenceInMinutes(
              item.sI![0].dt ?? '', item.sI![item.sI!.length - 1].at ?? '');
          if (!sortingVariables[i]![2].contains(minutes.toDouble())) {
            sortingVariables[i]![2].add(minutes.toDouble());
          }
        }
      }
      sortingVariables[i]![1].sort();
      sortingVariables[i]![2].sort();
      sortingVariablesSelected[i]![2] =
          [(sortingVariables[i]![2].last ?? 1)].obs;
    }
    durationSlider.value =
        ((sortingVariablesSelected[0]?[2].last) ?? 1.0) * 1.0;
    sortAirlineList();
  }

  void getTotalFare() {
    double price = 0.0;
    for (int i = 0; i < searchList.length; i++) {
      final item = searchList[i];
      price += item[selectedFlights[i]]
              .totalPriceList?[selectedTicketPrices[i]]
              .fd
              ?.adult
              ?.fC
              ?.tf ??
          0.0;
    }
    totalTicketPrice.value = price;
  }

// change the selected flight for multi city and round trips on list
// paramater index -> index of ticket, i -> index of ticket price
  void changeFlightSelectionMultiCityAndRound(int index, int i) {
    selectedFlights[selectedTripListIndex.value] = index;
    selectedTicketPrices[selectedTripListIndex.value] = i;
    getTotalFare();
  }

  /// change passenger fare type change the [passengerFareType] to find type form [passengerFareTypes]
  void changePassengerFareType(int index) {
    if (index != 0 && (infantCount.value > 0 || childrenCount.value > 0)) {
      Get.snackbar('Invalid FareType',
          'Child or Infant cannot be selected with a ${index == 1 ? 'student' : 'senior citizen'} fare',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: kRed,
          forwardAnimationCurve: Curves.bounceIn,
          colorText: kWhite);
      // passengerFareType.value = 0;
      return;
    } else if (index == passengerFareType.value) {
      passengerFareType.value = 0;
    } else {
      passengerFareType.value = index;
    }
  }

// change trip from tab for multicity and round trip for choosing diffrent flights in different list
// auto scroll the list in the top showing selection accoring to the selection of tab
  void changeSelectedTripIndex(int index) {
    selectedTripListIndex.value = index;
    if (index > 1) {
      final onePotion = flightSortController.position.maxScrollExtent /
          (selectedFlights.length);
      flightSortController.animateTo(
          index < 2
              ? flightSortController.position.minScrollExtent
              : index >= selectedFlights.length - 2
                  ? flightSortController.position.maxScrollExtent
                  : onePotion * index,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut);
    }
    flightSortScreenController.animateTo(0,
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
    durationSlider.value =
        double.parse(sortingVariablesSelected[index]?[2].last ?? "1");
    validateSearchForm();
  }

  // sort rebuild helper variable
  RxBool sortingRebuild = false.obs;

  // sort the data according to the selected sorting variables
  void sortAirlineList() {
    print('SORTING...');
    sortingRebuild.value = true;
    List<SearchAirlineInformation> sort = [];
    // sort for airline
    if (sortingVariablesSelected[selectedTripListIndex.value]![0].isEmpty ||
        sortingVariablesSelected[selectedTripListIndex.value]![0].length ==
            sortingVariables[selectedTripListIndex.value]![0].length) {
      // add all if no airlines selected or everything has been selected
      sort.addAll(searchListMain[selectedTripListIndex.value]);
    } else {
      // iterate and add the airline information if ailine is present in the selected list
      for (var airline in searchListMain[selectedTripListIndex.value]) {
        if (sortingVariablesSelected[selectedTripListIndex.value]![0]
            .contains(airline.sI![0].fD!.aI!.name ?? '')) {
          sort.add(airline);
        }
      }
    }
    // sort in base of stops
    for (int i = 0; i < sort.length; i++) {
      if (sortingVariablesSelected[selectedTripListIndex.value]![1]
              .isNotEmpty &&
          !sortingVariablesSelected[selectedTripListIndex.value]![1]
              .contains(sort[i].sI!.length - 1)) {
        sort.removeAt(i--);
      }
    }
    // sort for duration
    if ((durationSlider.value != 0 || durationSlider.value != 1) &&
        sortingVariablesSelected[selectedTripListIndex.value]![1].isEmpty) {
      for (int i = 0; i < sort.length; i++) {
        if (durationSlider.value <
            DateFormating.getTotalDifferenceInMinutes(sort[i].sI![0].dt ?? '',
                sort[i].sI![sort[i].sI!.length - 1].at ?? '')) {
          sort.removeAt(i--);
        }
      }
    }
    searchList[selectedTripListIndex.value].value = sort.obs;
    update();
    getTotalFare();
    Timer(const Duration(milliseconds: 1), () {
      sortingRebuild.value = false;
    });
  }

  // button for choosing diferent airlines and on the last index need to call review page
  void nextOrContinue() {
    if (selectedTripListIndex.value < searchList.length - 1) {
      changeSelectedTripIndex(selectedTripListIndex.value + 1);
    } else {
      print("continue");
    }
  }

// swap the data between from and to in search field
  void swapFromAndTo() {
    final from = airportSelected[0][0];
    airportSelected[0][0] = airportSelected[0][1];
    airportSelected[0][1] = from;
  }

// count changing for adults cannot exceed the total by 9 and cannot decrease the count below 1 atleat one adult should be there
  void changeAdultCount(bool increment) {
    if (passengerFareType.value != 0) {
      childrenCount.value = 0;
      infantCount.value = 0;
    }
    if (increment && (adultCount.value + childrenCount.value) < 9) {
      adultCount.value++;
    } else if (!increment && adultCount.value != 1) {
      adultCount.value--;
    }
    if (adultCount.value < infantCount.value) {
      infantCount.value = adultCount.value;
    }
  }

// children cannot travel alone atleast one adult should be there.. cannot exeed max traveller count 9
  void changeChildrenCount(bool increment) {
    if (passengerFareType.value != 0) {
      childrenCount.value = 0;
      infantCount.value = 0;
      if (!Get.isSnackbarOpen) {
        Get.snackbar('Can\'t add',
            'Child or Infant cannot be selected with a studen/senior citizen fare',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: kRed,
            forwardAnimationCurve: Curves.bounceIn,
            colorText: kWhite);
      }
    } else if (increment && (adultCount.value + childrenCount.value) < 9) {
      childrenCount.value++;
    } else if (!increment && childrenCount.value != 0) {
      childrenCount.value--;
    }
  }

// add infant according to the number of adults number of adult and number of infaunt can be same but cannot exceed the number grater than adult count
  void changeInfantCount(bool increment) {
    if (passengerFareType.value != 0) {
      childrenCount.value = 0;
      infantCount.value = 0;
      if (!Get.isSnackbarOpen) {
        Get.snackbar('Can\'t add',
            'Child or Infant cannot be selected with a studen/senior citizen fare',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: kRed,
            forwardAnimationCurve: Curves.bounceIn,
            colorText: kWhite);
      }
    } else if (increment && infantCount.value < adultCount.value) {
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
    validateSearchForm();
  }

  void removeFromMultiCityTrip(int index) {
    multiCityDepartureDate.removeAt(index);
    airportSelected.removeAt(index);
    multiCityCount.value--;
    validateSearchForm();
  }

  void increaseMulticityField() {
    CitySearchModel model =
        airportSelected[multiCityDepartureDate.length - 1][1];
    RxList<CitySearchModel> list =
        RxList.generate(2, (index) => index == 0 ? model : CitySearchModel());
    multiCityCount.value++;
    multiCityDepartureDate.add(null);
    airportSelected.add(list);
    validateSearchForm();
  }

  // change trip type oneway, roundtrip, multicity
  void changeTripType(int index) {
    tripType.value = index;
    if (index != 2) {
      multiCityCount.value = 2;
      multiCityDepartureDate.removeRange(2, multiCityDepartureDate.length);
      airportSelected.removeRange(2, airportSelected.length);
    }
    validateSearchForm();
  }

  void changeDepartureDate(DateTime value) {
    depatureDate.value = value;
    if (depatureDate.value.isAfter(returnDate.value)) {
      returnDate.value = depatureDate.value;
      multiCityDepartureDate[1] = value;
    }
    multiCityDepartureDate[0] = value;
    validateSearchForm();
  }

  void changeRetunDate(DateTime value) {
    returnDate.value = value;
    multiCityDepartureDate[1] = value;
    validateSearchForm();
  }

  void changeClassTypes(String type) {
    classType.value = type;
  }

  void changeSelectedAirport({required bool from, int index = 0}) {
    Get.toNamed(Routes.airportSearch);
    departureAirport = from;
    chooseAirportIndex = index;
    validateSearchForm();
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
    validateSearchForm();
  }

  void changeSortTypes(String type) {
    sortType.value = type;
  }

  void changeStopTypes(String type) {
    stopType.value = type;
  }

  // clear all filters
  // 0 -> airlines
  // 1 -> stops
  // 2 -> duration
  void clearFilters() {
    sortingVariablesSelected[selectedTripListIndex.value]![0] = [].obs;
    sortingVariablesSelected[selectedTripListIndex.value]![1] = [].obs;
    sortingVariablesSelected[selectedTripListIndex.value]![2] =
        [sortingVariables[selectedTripListIndex.value]![2].last ?? 1.0].obs;
    durationSlider.value =
        (sortingVariables[selectedTripListIndex.value]![2].last ?? 1.0);
    update();
    sortAirlineList();
  }

  // change the duration of the slider for sorting, need to check the least time while changing
  void changeDurationSlider(double value, [bool reset = false]) {
    if (sortingVariablesSelected[selectedTripListIndex.value]![1].isNotEmpty) {
      if (!Get.isSnackbarOpen) {
        Get.rawSnackbar(
            backgroundColor: kGreyDark,
            // duration: const Duration(milliseconds: 300),
            forwardAnimationCurve: Curves.bounceIn,
            margin: EdgeInsets.only(bottom: 20.h),
            messageText: Text(
              'Try differnt combination filter',
              style: textStyle1.copyWith(color: kWhite),
            ));
      }
      durationSlider.value =
          sortingVariables[selectedTripListIndex.value]![2].last ?? 1.0;
      return;
    }
    if (reset) {
      sortingVariablesSelected[selectedTripListIndex.value]![2] = <dynamic>[
        sortingVariables[selectedTripListIndex.value]![2].last ?? 1.0
      ].obs;
      durationSlider.value =
          sortingVariables[selectedTripListIndex.value]![2].last ?? 1.0;
    } else if (sortingVariables[selectedTripListIndex.value]![2].first <=
        sortingVariables[selectedTripListIndex.value]![2].last * value) {
      sortingVariablesSelected[selectedTripListIndex.value]![2] =
          <dynamic>[value.obs].obs;
      durationSlider.value = value;
    }
    print(sortingVariablesSelected[selectedTripListIndex.value]![2]);
    sortAirlineList();
  }

  // selsect the airlines for sorting
  void selectAirline(String value) {
    if (sortingVariablesSelected[selectedTripListIndex.value]![0]
        .contains(value)) {
      sortingVariablesSelected[selectedTripListIndex.value]![0].remove(value);
    } else {
      sortingVariablesSelected[selectedTripListIndex.value]![0].add(value);
    }
    sortAirlineList();
  }

  // selcct or unselect all airlines for sorting
  void selectAllAirline(bool value) {
    sortingVariablesSelected[selectedTripListIndex.value]![0].clear();
    if (value) {
      sortingVariablesSelected[selectedTripListIndex.value]![0]
          .addAll(sortingVariables[selectedTripListIndex.value]![0]);
    }
    sortAirlineList();
  }

  // add a stop for sorting if it is alredy added remove it form the list
  void selectStops(int value) {
    if (sortingVariablesSelected[selectedTripListIndex.value]![1]
        .contains(value)) {
      sortingVariablesSelected[selectedTripListIndex.value]![1].remove(value);
    } else {
      sortingVariablesSelected[selectedTripListIndex.value]![1].add(value);
    }
    sortAirlineList();
  }

  // reset the stops selected
  void resetStops() {
    sortingVariablesSelected[selectedTripListIndex.value]![1].clear();
    sortAirlineList();
  }

  void selectDepartureTime(String value) {
    if (departureTimesSelected.contains(value)) {
      departureTimesSelected.remove(value);
    } else {
      departureTimesSelected.add(value);
    }
    validateSearchForm();
  }

  void selectArrivalTime(String value) {
    if (arrivesTimesSelected.contains(value)) {
      arrivesTimesSelected.remove(value);
    } else {
      arrivesTimesSelected.add(value);
    }
    validateSearchForm();
  }
}
