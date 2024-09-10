import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:myairdeal/data/service/api_service.dart';
import 'package:myairdeal/domain/core/api_endpoints/api_endpoints.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/traveller_info.dart';
import 'package:myairdeal/domain/models/passengers/get_all_passengers/get_all_passengers.dart';
import 'package:myairdeal/domain/models/success_responce_model/success_responce_model.dart';
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

  @override
  Future<Either<Failure, SuccessResponceModel>> addPassengers(
      {required TravellerInfo travellerInfo}) async {
    try {
      await apiService.put(
          addHeader: true,
          ApiEndPoints.addPassengers,
          data: travellerInfo.toJson());
      return Right(SuccessResponceModel());
    } on DioException catch (e) {
      log('DioException getPassengers $e');
      return Left(Failure(message: errorMessage));
    } catch (e) {
      log('catch getPassengers $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SuccessResponceModel>> deletePassengers(
      {required String travellerID}) async {
    try {
      await apiService.put(
          addHeader: true,
          ApiEndPoints.deleteTraveller,
          queryParameters: {'passengerId': travellerID});
      log('deletePassengers done ');
      return Right(SuccessResponceModel());
    } on DioException catch (e) {
      log('DioException deletePassengers $e');
      return Left(Failure(message: errorMessage));
    } catch (e) {
      log('catch deletePassengers $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SuccessResponceModel>> updatePassengers({
    required TravellerInfo travellerInfo,
  }) async {
    try {
      await apiService.put(
          addHeader: true,
          ApiEndPoints.deleteTraveller,
          data: travellerInfo.toJson(),
          queryParameters: {'passengerId': travellerInfo.id});
      log('updatePassengers done ');
      return Right(SuccessResponceModel());
    } on DioException catch (e) {
      log('DioException updatePassengers $e');
      return Left(Failure(message: errorMessage));
    } catch (e) {
      log('catch updatePassengers $e');
      return Left(Failure(message: e.toString()));
    }
  }
}