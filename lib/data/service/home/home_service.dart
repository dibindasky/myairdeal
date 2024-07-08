import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:myairdeal/data/service/api_service.dart';
import 'package:myairdeal/domain/core/api_endpoints/api_endpoints.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/search/city_search_model/city_search_data.dart';
import 'package:myairdeal/domain/models/search/recent_deatil_search/recent_detail_search.dart';
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
}
