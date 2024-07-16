import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:myairdeal/data/service/api_service.dart';
import 'package:myairdeal/domain/core/api_endpoints/api_endpoints.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/passengers/get_all_passengers/get_all_passengers.dart';
import 'package:myairdeal/domain/repository/service/passengers_repo.dart';

class PassengersService implements PassengersRepo {
  final ApiService apiService = ApiService();

  @override
  Future<Either<Failure, GetAllPassengers>> getPassengers() async {
    try {
      final responce = await apiService.get(
        ApiEndPoints.getAllPassengers,
      );
      return Right(GetAllPassengers.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException getPassengers $e');
      return Left(Failure(message: errorMessage));
    } catch (e) {
      log('catch getPassengers $e');
      return Left(Failure(message: e.toString()));
    }
  }
}
