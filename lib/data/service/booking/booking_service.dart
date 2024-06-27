import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:myairdeal/data/service/api_service.dart';
import 'package:myairdeal/domain/core/api_endpoints/api_endpoints.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_booking_request_model/retrieve_single_booking_request_model.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_bookingresponce_model/retrieve_single_bookingresponce_model.dart';
import 'package:myairdeal/domain/repository/service/booking_rep.dart';

class BookingService implements BookingRepo {
  ApiService apiService = ApiService();
  @override
  Future<Either<Failure, RetrieveSingleBookingresponceModel>>
      retrieveSinglleBooking({
    required RetrieveSingleBookingRequestModel
        retrieveSingleBookingRequestModel,
  }) async {
    try {
      log('${retrieveSingleBookingRequestModel.toJson()}');
      final responce = await apiService.post(ApiEndPoints.retrieveSingleBooking,
          data: retrieveSingleBookingRequestModel.toJson());
      log('retrieveSinglleBooking done');
      return Right(RetrieveSingleBookingresponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException retrieveSinglleBooking ');
      return Left(Failure(message: e.response?.data?['error'] ?? errorMessage));
    } catch (e) {
      log('catch retrieveSinglleBooking');
      return Left(Failure(message: e.toString()));
    }
  }
}
