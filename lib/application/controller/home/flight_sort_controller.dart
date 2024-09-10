import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myairdeal/application/controller/auth/auth_controller.dart';
import 'package:myairdeal/application/controller/navbar/navbar_controller.dart';
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
import 'package:myairdeal/domain/models/search/flight_sort_response_model/total_price_list.dart';
import 'package:myairdeal/domain/models/search/recent_detail_search/search_query.dart';
import 'package:myairdeal/domain/repository/service/flight_sort_repo.dart';
import 'package:myairdeal/domain/repository/service/home_repo.dart';

class FlightSortController extends GetxController {
  /// Change category [flights, air ambulance, chatered flight, helicopter]
  RxInt selectedCategoryType = 0.obs;

  /// flight service class responsible for api calls
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

  /// list responsible to work with special return on round trip
  /// store the list of special returns in the map according to the selected airline[selectedSpecialReturnAirline]
  List<Map<String, List<SearchAirlineInformation>>> specialReturnFlights =
      <Map<String, List<SearchAirlineInformation>>>[].obs;

  /// list responsible for storing the normal list while searching for special return
  /// will store all the data data with out special returns.
  List<List<SearchAirlineInformation>> searchListforSpecialReturn =
      <List<SearchAirlineInformation>>[].obs;

  /// variable used for showing the selection of flights for multi city and round trip,
  /// responsible for work with [searchList]
  RxList<int> selectedFlights = [0, 0].obs;

  /// selected index in the price list of [selectedFlights]
  RxList<int> selectedTicketPrices = <int>[0, 0].obs;

  /// selected trip list index that responsible for work with [searchList] and [selectedFlights]
  /// to set which list should show on sorting page
  RxInt selectedTripListIndex = 0.obs;

  /// total price of the ticket with the selected total ticket fare
  RxDouble totalTicketPrice = 0.0.obs;

  /// scroll controller used to show the list[selected flights and selected tabs in sorting] in a auto scroll view
  ScrollController flightSortController = ScrollController();
  ScrollController flightSortScreenController = ScrollController();

  /// map responsible for finding the variables for sorting and showing it in the ui
  RxMap<int, List<RxList<dynamic>>> sortingVariables =
      <int, List<RxList<dynamic>>>{}.obs;

  /// map responsible for storing the selected varibales for sorting
  RxMap<int, List<RxList<dynamic>>> sortingVariablesSelected =
      <int, List<RxList<dynamic>>>{}.obs;

  /// bool to add low to high price sort
  RxBool lowToHigh = false.obs;

  /// bool to add high to low price sort
  RxBool highToLow = false.obs;

  /// special return airlines
  RxMap<String, String> specialRetrunAirlines = <String, String>{}.obs;

  /// selected Special return
  RxString selectedSpecialReturnAirline = ''.obs;

  /// variable responsible for show loading in the search list page
  RxBool searchListLoading = false.obs;

  /// variable used to select the trip type
  /// 0- oneway
  /// 1- roundtrip
  /// 2- multicity
  RxInt tripType = 0.obs;

  /// list of passenger faretypes to show
  List<String> passengerFareTypes = ['REGULAR', 'STUDENT', 'SENIOR_CITIZEN'];

  /// selected passenger fare type default 0 -> Regular
  RxInt passengerFareType = 0.obs;

  /// searchForm validation checker
  RxBool searchValidated = false.obs;

  /// number of adult to be travelled
  RxInt adultCount = 1.obs;

  /// number of children to be travelled
  RxInt childrenCount = 0.obs;
  // number of infant to be travelled
  RxInt infantCount = 0.obs;

  /// number of citys in multicity trip
  RxInt multiCityCount = 2.obs;

  /// bool responsible for halnle ui for combo(international multicity and round trip)
  RxBool comboTrip = false.obs;

  /// bool responsible for handle the round trip identification, used to handle special return
  RxBool roundTrip = false.obs;

  /// class type to be travelled can be choose form [classTypes]
  RxString classType = "ECONOMY".obs;

  /// list of cabin classes, selected cabin class will be stored in [classType]
  List<String> classTypes = ["ECONOMY", "PREMIUM_ECONOMY", "BUSINESS", "FIRST"];

  /// departure date in oneway and round trip
  Rx<DateTime> depatureDate = DateTime.now().obs;

  /// return date in round trip
  Rx<DateTime> returnDate = DateTime.now().obs;

  /// departure dates in multicity trips
  RxList<DateTime?> multiCityDepartureDate =
      <DateTime?>[DateTime.now(), DateTime.now()].obs;

  /// variable to show between search and resent searchs in [ScreenAirportSearch]
  RxBool search = false.obs;

  RxString sortType = 'Best'.obs;
  RxString stopType = 'Direct'.obs;

  /// value used to change the duration of flights in the sorting section
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

  /// list responsible for the showing the available airlines from the given list
  RxList<String> sortAirlines = <String>[].obs;

  /// list responsible for the sorting of the [searchList], store the selected airlines
  RxList<String> sortAirlinesSelected = <String>[].obs;

  /// list responsible for search of city and airport in the search airport page
  RxList<CitySearchModel> searchCityList = <CitySearchModel>[].obs;

  /// timer for search expiary
  Rx<Timer> timer = Timer(const Duration(seconds: 1), () {}).obs;
  RxInt remainingTime = 0.obs;

  List<String> timesString = ['Early Morning', 'Morning', 'Evening', 'Night'];

  List<String> departureTimes = [
    '00:00 to 05:59',
    '06:00 to 11:59',
    '12:00 to 17:59',
    '18:00 to 23:59'
  ];

  List<String> arrivesTimes = [
    '00:00 to 05:59',
    '06:00 to 11:59',
    '12:00 to 17:59',
    '18:00 to 23:59'
  ];

  List<String> sortTypes = ['Best', 'Fastest', 'Cheapest'];
  List<String> stopTypes = ['Direct', 'Max 1 Stop', 'Max 2 Stops'];
  List<String> tripTypes = ['One-Way', 'Round-Trip', 'Multi-City'];

  /// loader for rebuilding the homepage search form
  RxBool clearingBool = false.obs;

  /// change the category in the home section [flights, air ambulance, chatered flight, helicopter]
  void changeCategory(int index) {
    selectedCategoryType.value = index;
    update();
  }

  /// add recent search to the form for easy search
  void addResentSearchToForm(SearchQuery searchQuery) {
    clearingBool.value = true;
    int searchLen = ((searchQuery.routeInfos?.length) ?? 0);
    airportSelected = RxList.generate(
      searchLen,
      (index) => RxList.generate(2, (x) => CitySearchModel()),
    );
    multiCityDepartureDate = RxList.generate(2, (x) => DateTime.now());
    for (int i = 0; i < ((searchQuery.routeInfos?.length) ?? 0); i++) {
      airportSelected[i][0] = searchQuery.routeInfos![i].fromCityOrAirport!
          .convertFromCityOrAirportToCitySearchModel();
      airportSelected[i][1] = searchQuery.routeInfos![i].toCityOrAirport!
          .convertToCityOrAirportToCitySearchModel();
    }
    if (searchLen == 1) {
      tripType.value = 0;
    } else if (searchQuery.routeInfos![0].fromCityOrAirport?.code ==
            searchQuery.routeInfos![1].toCityOrAirport?.code &&
        searchQuery.routeInfos![1].fromCityOrAirport?.code ==
            searchQuery.routeInfos![0].toCityOrAirport?.code) {
      tripType.value = 1;
    } else if (searchLen > 1) {
      tripType.value = 2;
    }
    if (searchQuery.searchModifiers?.pft == 'REGULAR') {
      passengerFareType.value == 0;
    } else if (searchQuery.searchModifiers?.pft == 'STUDENT') {
      passengerFareType.value = 1;
    } else if (searchQuery.searchModifiers?.pft == 'SENIOR_CITIZEN') {
      passengerFareType.value = 2;
    }
    infantCount.value = int.parse(searchQuery.paxInfo?.infant ?? '0');
    childrenCount.value = int.parse(searchQuery.paxInfo?.child ?? '0');
    adultCount.value = int.parse(searchQuery.paxInfo?.adult ?? '0');
    classType.value = searchQuery.cabinClass ?? 'ECONOMY';
    Timer(const Duration(milliseconds: 50), () {
      clearingBool.value = false;
    });
    validateSearchForm();
  }

  /// end search timer
  void stopSearchTimer() {
    timer.value.cancel();
  }

  /// start search timer
  void startSearchTimer() {
    timer.value.cancel();
    remainingTime.value = (15 * 60);
    timer.value = Timer.periodic(const Duration(seconds: 1), (timer) {
      // print('search timer => ${remainingTime.value}');
      if (remainingTime.value == (0)) {
        print('timer canceled time ends');
        Get.back(id: 1);
        if (Get.currentRoute == Routes.bottomBar &&
            Get.find<NavBarController>().bottomIndex.value == 0) {
          Get.dialog(
            AlertDialog(
              backgroundColor: kRedLight,
              title: const Text('Session Expired'),
              content: const Text(
                  'Your session time has been expired. Search again to get result'),
              actions: [
                TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text('Ok'))
              ],
            ),
          );
        }
        timer.cancel();
      } else {
        remainingTime.value--;
      }
    });
  }

  /// clear all the information after booking not to affect the next booking
  void clearDataAfterBooking() {
    clearingBool.value = true;
    comboList.clear();
    comboListMain.clear();
    searchList.clear();
    searchListMain.clear();
    selectedTripListIndex.value = 0;
    airportSelected.value = <RxList<CitySearchModel>>[
      RxList.generate(2, (index) => CitySearchModel()),
      RxList.generate(2, (index) => CitySearchModel()),
    ];
    sortingVariables.clear();
    sortAirlinesSelected.clear();
    adultCount.value = 1;
    infantCount.value = 0;
    childrenCount.value = 0;
    tripType.value = 0;
    depatureDate.value = DateTime.now();
    returnDate.value = DateTime.now();
    multiCityDepartureDate = <DateTime?>[DateTime.now(), DateTime.now()].obs;
    validateSearchForm();
    update();
    stopSearchTimer();
    Timer(const Duration(seconds: 1), () {
      clearingBool.value = false;
    });
  }

  void updateSearchToRecent(FlightSearchSortModel flightSearchSortModel) {
    if (Get.find<AuthController>().loginOrNot.value) {
      homeService.addRecentSearch(flightSearchSortModel: flightSearchSortModel);
    }
  }

  /// validate form for search flight
  bool validateSearchForm() {
    for (int i = 0; i < airportSelected.length; i++) {
      // for validate one-way and round-trip city selection
      if (tripType.value != 2 && i == 0) {
        if ((airportSelected[i][0].code == null &&
                airportSelected[i][0].city == null) ||
            (airportSelected[i][1].code == null &&
                airportSelected[i][1].city == null)) {
          searchValidated.value = false;
          print('1');
          return false;
        }
      } // for multicity validation
      else if (tripType.value == 2 &&
          ((airportSelected[i][0].code == null &&
                  airportSelected[i][0].city == null) ||
              (airportSelected[i][1].code == null &&
                  airportSelected[i][1].city == null))) {
        searchValidated.value = false;
        print('2');
        return false;
      }
      // for date validation for multicity, one way and round trip allwase auto filled
      if (tripType.value == 2 && multiCityDepartureDate[i] == null) {
        searchValidated.value = false;
        print('3');
        return false;
      }
      // if same city added for departure and arrival return error
      if (airportSelected[i][0].code == airportSelected[i][1].code) {
        searchValidated.value = false;
        print('4');
        return false;
      }
    }
    searchValidated.value = true;
    print('5');
    return true;
  }

  /// search api request for all types of trips
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
    roundTrip.value = false;
    searchListLoading.value = true;
    selectedTripListIndex.value = 0;
    durationSlider.value = 1;
    selectedSpecialReturnAirline.value == '';
    if (tripType.value == 1) {
      // if it is a round trip add second airport as ulta to first one for searching
      airportSelected[1].value = [airportSelected[0][1], airportSelected[0][0]];
      selectedFlights.value = [0, 0];
      selectedTicketPrices.value = [0, 0];
    } else if (tripType.value == 2) {
      if (airportSelected.length == 2 &&
          airportSelected[0][1] == airportSelected[1][0] &&
          airportSelected[0][0] == airportSelected[1][1]) {
        tripType.value = 1;
        airportSelected[1].value = [
          airportSelected[0][1],
          airportSelected[0][0]
        ];
        selectedFlights.value = [0, 0];
        selectedTicketPrices.value = [0, 0];
      } else {
        selectedFlights.value =
            List.generate(airportSelected.length, (index) => 0);
        selectedTicketPrices.value =
            List.generate(airportSelected.length, (index) => 0);
      }
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
        (index) {
          return RouteInfo(
            fromCityOrAirport: CodeAirport(
                code: airportSelected[index][0].code,
                city: airportSelected[index][0].city,
                cityCode: airportSelected[index][0].citycode,
                country: airportSelected[index][0].country,
                countryCode: airportSelected[index][0].countrycode,
                name: airportSelected[index][0].name),
            toCityOrAirport: CodeAirport(
                code: airportSelected[index][1].code,
                city: airportSelected[index][1].city,
                cityCode: airportSelected[index][1].citycode,
                country: airportSelected[index][1].country,
                countryCode: airportSelected[index][1].countrycode,
                name: airportSelected[index][1].name),
            travelDate:
                DateFormating.getDateApi(multiCityDepartureDate[index]!),
          );
        },
      ),
    );
    // api call for get all flights
    final result = await flightService.getAllFlight(
        flightSearchSortModel: FlightSearchSortModel(searchQuery: searchModel));

    result.fold((l) {
      searchListLoading.value = false;
      Get.back(id: 1);
      Get.snackbar('Failed to load data', l.message ?? errorMessage,
          backgroundColor: kRed, colorText: kWhite);
    }, (r) {
      if (r.errors == null) {
        // clear both main list
        searchListMain = [];
        searchList.value = [];
        specialReturnFlights =
            <Map<String, List<SearchAirlineInformation>>>[].obs;
        specialRetrunAirlines = <String, String>{}.obs;
        searchListforSpecialReturn = <List<SearchAirlineInformation>>[].obs;
        // if we got a combo flight then sort it seperatly
        if (r.searchResult?.tripInfos?.combo != null) {
          searchListMain.add(RxList.from(r.searchResult?.tripInfos?.combo ??
              <SearchAirlineInformation>[]));
          getComboList();
          comboTrip.value = true;
        } else {
          // find the key onward to get all the onward flights and add to 0 th index
          if (r.searchResult?.tripInfos?.onward != null) {
            searchListMain.add(RxList.from(r.searchResult?.tripInfos?.onward ??
                <SearchAirlineInformation>[]));
          }
          // find the retrun key and add to list and add to 1st index
          if (r.searchResult?.tripInfos?.returns != null) {
            roundTrip.value = true;
            searchListMain.add(RxList.from(r.searchResult?.tripInfos?.returns ??
                <SearchAirlineInformation>[]));
          }
          // add multicity trip 0th index
          if ((tripType.value == 2 && multiCityCount.value >= 1) ||
              r.searchResult?.tripInfos?.multicity1 != null) {
            searchListMain.add(RxList.from(
                r.searchResult?.tripInfos?.multicity1 ??
                    <SearchAirlineInformation>[]));
          }
          // add multicity trip 1st index
          if ((tripType.value == 2 && multiCityCount.value >= 2) ||
              r.searchResult?.tripInfos?.multicity2 != null) {
            searchListMain.add(RxList.from(
                r.searchResult?.tripInfos?.multicity2 ??
                    <SearchAirlineInformation>[]));
          }
          // add multicity trip 2nd index
          if ((tripType.value == 2 && multiCityCount.value >= 3) ||
              r.searchResult?.tripInfos?.multicity3 != null) {
            searchListMain.add(RxList.from(
                r.searchResult?.tripInfos?.multicity3 ??
                    <SearchAirlineInformation>[]));
          }
          // add multicity trip 3rd index
          if ((tripType.value == 2 && multiCityCount.value >= 4) ||
              r.searchResult?.tripInfos?.multicity4 != null) {
            searchListMain.add(RxList.from(
                r.searchResult?.tripInfos?.multicity4 ??
                    <SearchAirlineInformation>[]));
          }
          // add multicity trip 4th index
          if ((tripType.value == 2 && multiCityCount.value >= 5) ||
              r.searchResult?.tripInfos?.multicity5 != null) {
            searchListMain.add(RxList.from(
                r.searchResult?.tripInfos?.multicity5 ??
                    <SearchAirlineInformation>[]));
          }
          // add multicity trip 5th index
          if ((tripType.value == 2 && multiCityCount.value >= 6) ||
              r.searchResult?.tripInfos?.multicity6 != null) {
            searchListMain.add(RxList.from(
                r.searchResult?.tripInfos?.multicity6 ??
                    <SearchAirlineInformation>[]));
          }
          // set the selected flights list to 0 for every list
          selectedFlights.value =
              List.generate(searchListMain.length, (x) => 0);
          // set the selected flights selected pice index as 0
          selectedTicketPrices.value =
              List.generate(searchListMain.length, (x) => 0);
          // set list for special return in cadse of any special returns available
          searchListforSpecialReturn = List.generate(
              searchListMain.length, (x) => <SearchAirlineInformation>[]);
          specialReturnFlights = List.generate(searchListMain.length,
              (x) => <String, List<SearchAirlineInformation>>{});

          /// add all items to the [searchList] to show in ui
          for (int i = 0; i < searchListMain.length; i++) {
            // if round trip need to find out the special return and need to seperate it to show seperatly
            if (roundTrip.value) {
              // list of search items e
              for (var e in searchListMain[i]) {
                (e.totalPriceList ?? <TotalPriceList>[]).sort((a, b) =>
                    (a.fd?.adult?.fC?.tf ?? 0)
                        .compareTo(b.fd?.adult?.fC?.tf ?? 0));

                /// add special return fares to the [specialReturnFlights]
                if ((e.totalPriceList ?? <TotalPriceList>[])
                    .any((price) => price.fareIdentifier == 'SPECIAL_RETURN')) {
                  SearchAirlineInformation temp = e.copyWith(
                      totalPriceList: (e.totalPriceList ?? <TotalPriceList>[])
                          .where((price) =>
                              price.fareIdentifier == 'SPECIAL_RETURN')
                          .toList());
                  if (!(specialReturnFlights[i]
                      .containsKey(temp.sI?[0].fD?.aI?.code ?? ''))) {
                    specialReturnFlights[i][temp.sI?[0].fD?.aI?.code ?? ''] =
                        <SearchAirlineInformation>[];
                  }
                  specialReturnFlights[i][temp.sI?[0].fD?.aI?.code ?? ''] = [
                    ...specialReturnFlights[i][temp.sI?[0].fD?.aI?.code ?? '']!,
                    temp
                  ];
                }
                // find the airline offers dosent have special return offer
                SearchAirlineInformation temp = e.copyWith(
                    totalPriceList: (e.totalPriceList ?? <TotalPriceList>[])
                        .where(
                            (price) => price.fareIdentifier != 'SPECIAL_RETURN')
                        .toList());

                if (temp.totalPriceList != null &&
                    temp.totalPriceList!.isNotEmpty) {
                  searchListforSpecialReturn[i].add(temp);
                }
              }
              searchList.add(RxList.from(searchListforSpecialReturn[i]));
              searchListMain[i] = searchListforSpecialReturn[i];
            } else {
              for (var e in searchListMain[i]) {
                (e.totalPriceList ?? <TotalPriceList>[]).sort((a, b) =>
                    (a.fd?.adult?.fC?.tf ?? 0)
                        .compareTo(b.fd?.adult?.fC?.tf ?? 0));
              }
              searchList.add(RxList.from(searchListMain[i]));
            }
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
      // if (!comboTrip.value)
      getSortingVariables();
    });
    updateSearchToRecent(FlightSearchSortModel(searchQuery: searchModel));
  }

  /// for international multi city and round trip need a seperate list from [searchListMain] first index
  /// sort and add the airlines list to [comboListMain] and [comboList] for sort and ui
  void getComboList() {
    comboList.clear();
    comboListMain.clear();
    for (var trip in searchListMain[0]) {
      int j = 0, k = 0;
      List<SearchAirlineInformation> tempList = [];
      for (int i = 0; i < (trip.sI?.length ?? 0); i++) {
        if (trip.sI![k].sN == 0 &&
            (trip.sI!.length - 1 == i || trip.sI![i + 1].sN == 0)) {
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
      // for sorting, entire list
      comboListMain.add(tempList);
      // for displaying in ui
      // comboList.add(tempList);
    }
    comboList.assignAll(comboListMain);
    print('got data=> comboListMain =>> ${comboListMain.length}');
    print('got data=> comboList =>> ${comboList.length}');
  }

  /// get the variables for sorting like {duration,ailines,times,stops}
  /// 0 -> airlines
  /// 1 -> stops
  /// 2 -> duration
  /// 3 -> price
  /// 4 -> arrival times
  /// 5 -> departure times
  void getSortingVariables() {
    sortingVariables = <int, List<RxList<dynamic>>>{}.obs;
    sortingVariablesSelected = <int, List<RxList<dynamic>>>{}.obs;
    specialRetrunAirlines.clear();
    // for international multicity round trips
    if (comboTrip.value) {
      // loop for all trips
      sortingVariables[0] = List.generate(6, (index) => [].obs);
      sortingVariablesSelected[0] = List.generate(6, (index) => [].obs);
      Set<String> airlines = {};
      Set<int> stops = {};
      for (var tile in comboListMain) {
        // get price
        sortingVariables[0]![3]
            .add(tile[0].totalPriceList?.first.fd?.adult?.fC?.tf ?? 0.0);
        for (var item in tile) {
          // find the number of stops
          if (!stops.contains(item.sI!.length - 1)) {
            stops.add(item.sI!.length - 1);
          }
          // find all airlines
          String airline = item.sI![0].fD?.aI?.name ?? '';
          if (airlines.contains(airline)) {
            break;
          }
          bool same = true;
          for (int i = 1; i < item.sI!.length - 1; i++) {
            if (item.sI![i].fD?.aI?.name != airline) {
              same = false;
              break;
            }
          }
          if (same) {
            airlines.add(airline);
          }
        }
      }
      // add airlines list
      sortingVariables[0]![0] = airlines.toList().obs;
      // add stops list
      sortingVariables[0]![1] = stops.toList().obs;
      sortingVariables[0]![1].sort();
      // add price list
      sortingVariables[0]![3] = sortingVariables[0]![3].toSet().toList().obs;
      sortingVariables[0]![3].sort();
      print('sorting variables');
      print(sortingVariables[0]![0]);
      print(sortingVariables[0]![1]);
      print(sortingVariables[0]![3]);
    } // for domestic trips and international one way
    else {
      // loop for all trips
      for (int i = 0; i < searchListMain.length; i++) {
        sortingVariables[i] = List.generate(6, (index) => [].obs);
        sortingVariablesSelected[i] = List.generate(6, (index) => [].obs);
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
            int minutes =
                DateFormating.getDurationOfFlightsInMinutes(si: item.sI ?? []);
            if (!sortingVariables[i]![2].contains(minutes.toDouble())) {
              sortingVariables[i]![2].add(minutes.toDouble());
            }
          }
          // available price range from the given list
          for (var e in item.totalPriceList ?? <TotalPriceList>[]) {
            if (!sortingVariables[i]![3].contains(e.fd?.adult?.fC?.tf ?? 0)) {
              sortingVariables[i]![3].add(e.fd?.adult?.fC?.tf ?? 0);
            }
          }
        }
        // found the special return flights and airline
        if (roundTrip.value) {
          for (var key in specialReturnFlights[i].keys) {
            for (var item in specialReturnFlights[i][key]!) {
              if (!specialRetrunAirlines.containsKey(key)) {
                specialRetrunAirlines[key] = item.sI?[0].fD?.aI?.name ?? '';
              }
            }
          }
        }
        // sort price,duration,stops
        sortingVariables[i]![1].sort();
        sortingVariables[i]![2].sort();
        sortingVariables[i]![3].sort();
        sortingVariablesSelected[i]![2] = sortingVariables[i]![2].isEmpty
            ? [1].obs
            : [(sortingVariables[i]![2].last ?? 1)].obs;
      }
      durationSlider.value =
          ((sortingVariablesSelected[0]?[2].last) ?? 1.0) * 1.0;
    }
    sortAirlineList();
  }

  /// sort call from ui
  void sortPriceCall(bool lowToHigh) {
    if (lowToHigh) {
      this.lowToHigh.value = !this.lowToHigh.value;
      if (this.lowToHigh.value) {
        highToLow.value = false;
        sortPriceCombo(true);
      }
    } else {
      highToLow.value = !highToLow.value;
      if (highToLow.value) {
        this.lowToHigh.value = false;
        sortPriceCombo(false);
      }
    }
  }

  /// sort price
  void sortPriceCombo(bool lowToHigh) {
    comboList.sort((a, b) {
      return lowToHigh
          ? (a.first.totalPriceList?.first.fd?.adult?.fC?.tf ?? 0)
              .compareTo((b.first.totalPriceList?.first.fd?.adult?.fC?.tf ?? 0))
          : (b.first.totalPriceList?.first.fd?.adult?.fC?.tf ?? 0).compareTo(
              (a.first.totalPriceList?.first.fd?.adult?.fC?.tf ?? 0));
    });
  }

  void getTotalFare() {
    double price = 0.0;
    for (int i = 0; i < searchList.length; i++) {
      if (searchList[i].isNotEmpty) {
        final item = searchList[i];
        if (item.isEmpty ||
            (item[selectedFlights[i]].totalPriceList ?? []).isEmpty) continue;
        price += item[selectedFlights[i]]
                .totalPriceList?[selectedTicketPrices[i]]
                .fd
                ?.adult
                ?.fC
                ?.tf ??
            0.0;
        print(
            'price => ${item[selectedFlights[i]].totalPriceList?[selectedTicketPrices[i]].fd?.adult?.fC?.tf ?? 0.0}');
      }
    }
    print('total price => $price');
    totalTicketPrice.value = price;
  }

  /// change the special retrun selection
  void changeSpecialReturnSelection(String code) {
    selectedFlights.value = [0, 0];
    selectedTicketPrices.value = [0, 0];
    if (selectedSpecialReturnAirline.value == code) {
      selectedSpecialReturnAirline.value = '';
      for (int i = 0; i < 2; i++) {
        searchListMain[i] = searchListforSpecialReturn[i];
      }
    } else {
      selectedSpecialReturnAirline.value = code;
      for (int i = 0; i < 2; i++) {
        searchListMain[i] =
            specialReturnFlights[i][code] ?? <SearchAirlineInformation>[];
      }
    }
    for (int i = 0; i < 2; i++) {
      sortAirlineList(selectedIndex: i);
    }
  }

  /// change the selected flight for multi city and round trips on list
  /// paramater index -> index of ticket, i -> index of ticket price
  void changeFlightSelectionMultiCityAndRound(int index, int i) {
    selectedFlights[selectedTripListIndex.value] = index;
    selectedTicketPrices[selectedTripListIndex.value] = i;
    if (roundTrip.value && selectedSpecialReturnAirline.value != '') {
      print('call function for special return sorting');
      sortAirlineListForSpecialReturnList(
          searchList[selectedTripListIndex.value][index].totalPriceList![i]);
    }
    print('call function for get toal price from selected trips');
    getTotalFare();
  }

  /// sort the airline list to get all matching special returns
  void sortAirlineListForSpecialReturnList(TotalPriceList priceList) {
    if (selectedTripListIndex.value == 0) {
      print('sort msri for index 1');
      // find the maching airlines and add it to the search list for sorting
      searchListMain[1] = sortSriMsri(priceList, 1);
      sortAirlineList(selectedIndex: 1);
    } else if (selectedTripListIndex.value == 1) {
      // searchListMain[0] = sortSriMsri(priceList, 0);
      // sortAirlineList();
    }
  }

  /// sort the list according to the sri and msri list for the given index
  List<SearchAirlineInformation> sortSriMsri(
      TotalPriceList priceList, int index) {
    List<SearchAirlineInformation> temp = [];
    for (var trip in specialReturnFlights[index]
            [selectedSpecialReturnAirline.value] ??
        <SearchAirlineInformation>[]) {
      List<TotalPriceList> totalPriceListTemp = [];
      for (var price in trip.totalPriceList ?? <TotalPriceList>[]) {
        if (priceList.sri == null &&
            (priceList.msri == null || priceList.msri!.isEmpty)) {
          totalPriceListTemp.add(price);
        } else if (price.msri != null && price.msri!.contains(priceList.sri)) {
          totalPriceListTemp.add(price);
        } else if (priceList.msri != null &&
            priceList.msri!.contains(price.sri)) {
          totalPriceListTemp.add(price);
        }
        print('totalPriceListTemp length => ${totalPriceListTemp.length}');
      }
      if (totalPriceListTemp.isNotEmpty) {
        temp.add(trip.copyWith(totalPriceList: totalPriceListTemp));
      }
      print('temp list lenght => ${temp.length}');
    }
    return temp;
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

  /// change trip from tab for multicity and round trip for choosing diffrent flights in different list
  /// auto scroll the list in the top showing selection accoring to the selection of tab
  void changeSelectedTripIndex(int index) {
    selectedTripListIndex.value = index;
    if (index > 1 && searchList.length > 2) {
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
    durationSlider.value = sortingVariablesSelected[index]?[2].last ?? 1.0;
    // validateSearchForm();
  }

  /// sort rebuild helper variable
  RxBool sortingRebuild = false.obs;
  RxInt sortingLoadingIndex = 0.obs;

  /// sort the data according to the selected sorting variables
  /// 0 -> airlines
  /// 1 -> stops
  /// 2 -> duration
  /// 3 -> price
  /// 4 -> arrival times
  /// 5 -> departure times
  void sortAirlineList({int? selectedIndex}) {
    // if selected index not passed then take selected trip list index to process
    int index = selectedIndex ?? selectedTripListIndex.value;
    print('SORTING...');
    sortingRebuild.value = true;
    sortingLoadingIndex.value = index;
    // sorting for combo trip list
    if (comboTrip.value) {
      print('comboListMain => ${comboListMain.length}');
      print('comboList => ${comboList.length}');
      List<List<SearchAirlineInformation>> sort = [];
      // sort for airlines
      if (sortingVariablesSelected[index]![0].isEmpty ||
          sortingVariablesSelected[index]![0].length ==
              sortingVariables[index]![0].length) {
        sort.assignAll(comboListMain);
      } else {
        for (var tile in comboListMain) {
          bool same = true;
          String airline = tile.first.sI![0].fD?.aI?.name ?? '';
          for (var item in tile) {
            same = item.sI?.any((e) => e.fD?.aI?.name == airline) ?? false;
          }
          if (same && sortingVariablesSelected[index]![0].contains(airline)) {
            sort.add(tile);
          }
        }
      }
      print('sort length after airline =>> ${sort.length}');

      // sort for stops
      if ((sortingVariablesSelected[index]![1].isNotEmpty)) {
        for (int i = 0; i < sort.length; i++) {
          int stop = sort[i].first.sI!.length - 1;
          if (sort[i].any((e) => e.sI!.length != stop) &&
              !sortingVariablesSelected[index]![1].contains(stop)) {
            sort.removeAt(i--);
          }
        }
      }
      print('sort length after stop =>> ${sort.length}');

      // sort for price
      if (sortingVariablesSelected[index]![3].isNotEmpty) {
        for (int i = 0; i < sort.length; i++) {
          if ((sort[i].first.totalPriceList?.first.fd?.adult?.fC?.tf ?? 0) >
              sortingVariablesSelected[index]![3].first) {
            sort.removeAt(i--);
          }
        }
      }
      print('sort length after price =>> ${sort.length}');
      comboList.value = sort;
      if (lowToHigh.value) {
        sortPriceCombo(true);
      } else if (highToLow.value) {
        sortPriceCombo(false);
      }
    }
    // sorting for domestic and one way international trip
    else {
      List<SearchAirlineInformation> sort = [];
      // sort for airline, dont sort if it is a special retun
      if (selectedSpecialReturnAirline.value == '') {
        if (sortingVariablesSelected[index]![0].isEmpty ||
            sortingVariablesSelected[index]![0].length ==
                sortingVariables[index]![0].length) {
          // add all if no airlines selected or everything has been selected
          sort.addAll(searchListMain[index]);
        } else {
          // iterate and add the airline information if airline is present in the selected list
          for (var airline in searchListMain[index]) {
            if (sortingVariablesSelected[index]![0]
                .contains(airline.sI![0].fD!.aI!.name ?? '')) {
              sort.add(airline);
            }
          }
        }
      } else {
        sort = searchListMain[index];
      }
      // sort in base of stops
      for (int i = 0; i < sort.length; i++) {
        if (sortingVariablesSelected[index]![1].isNotEmpty &&
            !sortingVariablesSelected[index]![1]
                .contains(sort[i].sI!.length - 1)) {
          sort.removeAt(i--);
        }
      }
      // sort for duration
      if ((durationSlider.value != 0 || durationSlider.value != 1) &&
          sortingVariablesSelected[index]![1].isEmpty) {
        for (int i = 0; i < sort.length; i++) {
          if (durationSlider.value <
              DateFormating.getTotalDifferenceInMinutes(sort[i].sI![0].dt ?? '',
                  sort[i].sI![sort[i].sI!.length - 1].at ?? '')) {
            sort.removeAt(i--);
          }
        }
      }
      // sort for price
      if (sortingVariablesSelected[index]![3].isNotEmpty) {
        for (int i = 0; i < sort.length; i++) {
          bool isLesser = false;
          for (var e in sort[i].totalPriceList ?? <TotalPriceList>[]) {
            if (e.fd?.adult?.fC?.tf != null &&
                e.fd!.adult!.fC!.tf! <
                    sortingVariablesSelected[index]![3].first) {
              isLesser = true;
            }
          }
          if (!isLesser) {
            sort.removeAt(i--);
          }
        }
      }
      // sort with arrival times
      if (sortingVariablesSelected[selectedTripListIndex.value]![4]
          .isNotEmpty) {
        for (int i = 0; i < sort.length; i++) {
          bool isInRange = false;
          for (int x = 0;
              x <
                  sortingVariablesSelected[selectedTripListIndex.value]![4]
                      .length;
              x++) {
            if (DateFormating.isTimeWithinSlot(
                sort[i].sI?[(sort[i].sI?.length ?? 1) - 1].at,
                sortingVariablesSelected[selectedTripListIndex.value]![4][x])) {
              isInRange = true;
            }
          }
          if (!isInRange) {
            sort.removeAt(i--);
          }
        }
      }

      // sort with departure times
      if (sortingVariablesSelected[selectedTripListIndex.value]![5]
          .isNotEmpty) {
        for (int i = 0; i < sort.length; i++) {
          bool isInRange = false;
          for (int x = 0;
              x <
                  sortingVariablesSelected[selectedTripListIndex.value]![5]
                      .length;
              x++) {
            if (DateFormating.isTimeWithinSlot(sort[i].sI?[0].dt,
                sortingVariablesSelected[selectedTripListIndex.value]![5][x])) {
              isInRange = true;
            }
          }
          if (!isInRange) {
            sort.removeAt(i--);
          }
        }
      }
      // set selected tile as the last one if the sorting item dosent have the previous length
      if ((sort.length - 1) < selectedFlights[selectedTripListIndex.value]) {
        selectedFlights[selectedTripListIndex.value] =
            sort.isEmpty ? 0 : sort.length - 1;
      }
      // set the selected trip index as the max available length
      if (sort.isEmpty) {
        selectedTicketPrices[selectedTripListIndex.value] = 0;
      } else if (((sort[selectedFlights[selectedTripListIndex.value]]
                      .totalPriceList
                      ?.length ??
                  1) -
              1 <
          selectedTicketPrices[selectedTripListIndex.value])) {
        final int ticketprice =
            (sort[selectedFlights[selectedTripListIndex.value]]
                        .totalPriceList
                        ?.length ??
                    1) -
                1;
        print('set ticket price form $ticketprice');
        selectedTicketPrices[selectedTripListIndex.value] =
            ticketprice < 0 ? 0 : ticketprice;
      }
      searchList[index].value = sort.obs;
    }
    update();
    getTotalFare();
    Timer(const Duration(milliseconds: 1), () {
      sortingRebuild.value = false;
    });
  }

  /// button for choosing diferent airlines and on the last index need to call review page
  void nextOrContinue() {
    if (selectedTripListIndex.value < searchList.length - 1) {
      changeSelectedTripIndex(selectedTripListIndex.value + 1);
    } else {
      print("continue");
    }
  }

  /// swap the data between from and to in search field
  void swapFromAndTo() {
    final from = airportSelected[0][0];
    airportSelected[0][0] = airportSelected[0][1];
    airportSelected[0][1] = from;
  }

  /// count changing for adults cannot exceed the total by 9 and cannot decrease the count below 1 atleat one adult should be there
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

  /// children cannot travel alone atleast one adult should be there.. cannot exeed max traveller count 9
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

  /// add infant according to the number of adults number of adult and number of infaunt can be same but cannot exceed the number grater than adult count
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

  /// change trip type oneway, roundtrip, multicity
  void changeTripType(int index) {
    tripType.value = index;
    if (index != 2) {
      multiCityCount.value = 2;
      multiCityDepartureDate.removeRange(2, multiCityDepartureDate.length);
      airportSelected.removeRange(2, airportSelected.length);
    } else {
      if (multiCityDepartureDate.length < 2) {
        multiCityDepartureDate
            .assignAll(List.generate(2, (x) => DateTime.now()));
      }
      if (airportSelected.length < 2) {
        airportSelected
            .add(<CitySearchModel>[CitySearchModel(), CitySearchModel()].obs);
      }
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

  /// clear all filters
  /// 0 -> airlines
  /// 1 -> stops
  /// 2 -> duration
  /// 3 -> price
  /// 4 -> arrival times
  /// 5 -> departure times
  void clearFilters() {
    sortingVariablesSelected[selectedTripListIndex.value]![0] = [].obs;
    sortingVariablesSelected[selectedTripListIndex.value]![1] = [].obs;
    sortingVariablesSelected[selectedTripListIndex.value]![2] =
        [sortingVariables[selectedTripListIndex.value]![2].last ?? 1.0].obs;
    durationSlider.value =
        (sortingVariables[selectedTripListIndex.value]![2].last ?? 1.0);
    sortingVariablesSelected[selectedTripListIndex.value]![3] = [].obs;
    sortingVariablesSelected[selectedTripListIndex.value]![4] = [].obs;
    sortingVariablesSelected[selectedTripListIndex.value]![5] = [].obs;
    update();
    sortAirlineList();
  }

  /// change the duration of the slider for sorting, need to check the least time while changing
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

  /// select price range
  void sortPrice(double value, [bool reset = false]) {
    if (reset ||
        value == sortingVariables[selectedTripListIndex.value]![3].last) {
      sortingVariablesSelected[selectedTripListIndex.value]![3].clear();
    } else {
      sortingVariablesSelected[selectedTripListIndex.value]![3].clear();
      sortingVariablesSelected[selectedTripListIndex.value]![3].add(value);
    }
    sortAirlineList();
  }

  /// selsect the airlines for sorting
  void selectAirline(String value) {
    if (sortingVariablesSelected[selectedTripListIndex.value]![0]
        .contains(value)) {
      sortingVariablesSelected[selectedTripListIndex.value]![0].remove(value);
    } else {
      sortingVariablesSelected[selectedTripListIndex.value]![0].add(value);
    }
    sortAirlineList();
  }

  /// selcct or unselect all airlines for sorting
  void selectAllAirline(bool value) {
    sortingVariablesSelected[selectedTripListIndex.value]![0].clear();
    if (value) {
      sortingVariablesSelected[selectedTripListIndex.value]![0]
          .addAll(sortingVariables[selectedTripListIndex.value]![0]);
    }
    sortAirlineList();
  }

  /// add a stop for sorting if it is alredy added remove it form the list
  void selectStops(int value) {
    if (sortingVariablesSelected[selectedTripListIndex.value]![2].isNotEmpty &&
        (sortingVariablesSelected[selectedTripListIndex.value]![2].last !=
            sortingVariables[selectedTripListIndex.value]![2].last)) {
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
      return;
    }
    if (sortingVariablesSelected[selectedTripListIndex.value]![1]
        .contains(value)) {
      sortingVariablesSelected[selectedTripListIndex.value]![1].remove(value);
    } else {
      sortingVariablesSelected[selectedTripListIndex.value]![1].add(value);
    }
    sortAirlineList();
  }

  /// reset the stops selected
  void resetStops() {
    sortingVariablesSelected[selectedTripListIndex.value]![1].clear();
    sortAirlineList();
  }

  /// select and unselect departure time
  void selectDepartureTime(String value) {
    if (sortingVariablesSelected[selectedTripListIndex.value]![5]
        .contains(value)) {
      sortingVariablesSelected[selectedTripListIndex.value]![5].remove(value);
    } else {
      sortingVariablesSelected[selectedTripListIndex.value]![5].add(value);
    }
    sortAirlineList();
  }

  /// select and unselect arrival time
  void selectArrivalTime(String value) {
    if (sortingVariablesSelected[selectedTripListIndex.value]![4]
        .contains(value)) {
      sortingVariablesSelected[selectedTripListIndex.value]![4].remove(value);
    } else {
      sortingVariablesSelected[selectedTripListIndex.value]![4].add(value);
    }
    sortAirlineList();
  }
}
