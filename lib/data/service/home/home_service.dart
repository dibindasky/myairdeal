import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:myairdeal/data/service/api_service.dart';
import 'package:myairdeal/domain/core/api_endpoints/api_endpoints.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/search/city_search_model/city_search_data.dart';
import 'package:myairdeal/domain/models/search/city_search_model/city_search_model.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/flight_search_sort_model.dart';
import 'package:myairdeal/domain/models/search/recent_deatil_search/recent_detail_search.dart';
import 'package:myairdeal/domain/models/success_responce_model/success_responce_model.dart';
import 'package:myairdeal/domain/repository/service/home_repo.dart';

class HomeService implements HomeRepo {
  final ApiService apiService = ApiService();

  @override
  Future<Either<Failure, RecentDetailSearch>> getRecentSearches() async {
    try {
      final response = await apiService.get(
        ApiEndPoints.recentSearch,
      );
      log("=> Response Recent Searches : ${response.data}");
      return Right(RecentDetailSearch.fromJson(response.data));
    } on DioException catch (e) {
      log('DioException getRecentSearches $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('catch getRecentSearches $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, CitySearchData>> getAirportsSearches(
      {required String cityname}) async {
    try {
      final response = await apiService.get(
        ApiEndPoints.airportSearch + cityname,
      );
      log("=> Response Airports Searches : ${response.data}");
      return Right(CitySearchData.fromJson(response.data));
    } on DioException catch (e) {
      log('DioException getAirportsSearches $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('catch getAirportsSearches $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, CitySearchData>> getAirportRecentSearches() async {
    try {
      final response = await apiService.get(
        ApiEndPoints.airportRecentSearch,
      );
      log("=> Response Airport Recent Searches : ${response.data}");
      return Right(CitySearchData.fromJson(response.data));
    } on DioException catch (e) {
      log('DioException getAirportRecentSearches $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('catch getAirportRecentSearches $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SuccessResponceModel>> addAirportRecentSearch(
      {required CitySearchModel citySearchModel}) async {
    try {
      final response = await apiService.post(
        ApiEndPoints.airportRecentSearch,
        data: citySearchModel.toJson(),
        addHeader: true,
      );
      log("=> Response Airport Recent Search Added Successfully : ${response.data}");
      return Right(SuccessResponceModel.fromJson(response.data));
    } on DioException catch (e) {
      log('DioException addAirportRecentSearch $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('catch addAirportRecentSearch $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, CitySearchData>> getAirportsSearchWithCountryCode(
      {required String countryCode}) async {
    try {
      final response = await apiService.get(
        ApiEndPoints.airportSearchWithCountryCode + countryCode,
      );
      log("=> Response Airports Searches With Country Code : ${response.data}");
      return Right(CitySearchData.fromJson(response.data));
    } on DioException catch (e) {
      log('DioException getAirportsSearchWithCountryCode $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('catch getAirportsSearchWithCountryCode $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SuccessResponceModel>> addRecentSearch(
      {required FlightSearchSortModel flightSearchSortModel}) async {
    try {
      final response = await apiService.post(
        ApiEndPoints.recentSearch,
        data: flightSearchSortModel.toJson(),
        addHeader: true,
      );
      log("=> Response Recent Search Added Successfully : ${response.data}");
      return Right(SuccessResponceModel.fromJson(response.data));
    } on DioException catch (e) {
      log('DioException addRecentSearch $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('catch addRecentSearch $e');
      return Left(Failure(message: e.toString()));
    }
  }
}
