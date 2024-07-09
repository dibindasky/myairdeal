import 'package:dartz/dartz.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/search/city_search_model/city_search_data.dart';
import 'package:myairdeal/domain/models/search/city_search_model/city_search_model.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/flight_search_sort_model.dart';
import 'package:myairdeal/domain/models/search/recent_deatil_search/recent_detail_search.dart';
import 'package:myairdeal/domain/models/success_responce_model/success_responce_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, RecentDetailSearch>> getRecentSearches();

  Future<Either<Failure, CitySearchData>> getAirportsSearches(
      {required String cityname});

  Future<Either<Failure, CitySearchData>> getAirportRecentSearches();

  Future<Either<Failure, SuccessResponceModel>> addAirportRecentSearch(
      {required CitySearchModel citySearchModel});

  Future<Either<Failure, CitySearchData>> getAirportsSearchWithCountryCode(
      {required String countryCode});

  Future<Either<Failure, SuccessResponceModel>> addRecentSearch(
      {required FlightSearchSortModel flightSearchSortModel});
}
