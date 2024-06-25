import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:myairdeal/data/service/api_service.dart';
import 'package:myairdeal/domain/core/api_endpoints/api_endpoints.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/flight_search_sort_model.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/flight_sort_response_model.dart';
import 'package:myairdeal/domain/repository/service/flight_sort_repo.dart';

class FlightService implements FlightRepo {
  final ApiService apiService = ApiService();

  @override
  Future<Either<Failure, FlightSortResponseModel>> getAllFlight(
      {required FlightSearchSortModel flightSearchSortModel}) async {
    try {
      print('api 1');
      final responce = await apiService
          .post(addHeader: false, ApiEndPoints.flightSort, data: {
        "searchQuery": {
          "paxInfo": {"ADULT": "1"},
          "routeInfos": [
            {
              "fromCityOrAirport": {"code": "DEL"},
              "toCityOrAirport": {"code": "BOM"},
              "travelDate": "2024-06-26"
            }
          ]
        }
      }
              // data: flightSearchSortModel.toJson
              );
      print('api 2');
      log('getAllFlight send');
      return Right(FlightSortResponseModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException getAllFlight $e');
      return Left(Failure(message: e.message ?? errorMessage));
    } catch (e) {
      log('catch getAllFlight $e');
      return Left(Failure(message: e.toString()));
    }
  }
}
