import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:myairdeal/data/service/api_service.dart';
import 'package:myairdeal/domain/core/api_endpoints/api_endpoints.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/booking/all_booking_responce/all_booking_responce.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/book_ticket_model.dart';
import 'package:myairdeal/domain/models/booking/booking_response_model/booking_response_model.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_booking_request_model/retrieve_single_booking_request_model.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_bookingresponce_model/retrieve_single_bookingresponce_model.dart';
import 'package:myairdeal/domain/models/booking/review_flight_detail_price/review_flight_detail_price.dart';
import 'package:myairdeal/domain/models/booking/review_price_detail_id_model/review_price_detail_id_model.dart';
import 'package:myairdeal/domain/repository/service/booking_rep.dart';

class BookingService implements BookingRepo {
  ApiService apiService = ApiService();

  @override
  Future<Either<Failure, BookingResponseModel>> bookTicket(
      {required BookTicketModel bookTicketModel}) async {
    try {
      final responce = await apiService.post(ApiEndPoints.completeBooking,
          data: bookTicketModel.toJson(), addHeader: true);
      log('bookTicket done');
      log('${responce.data}');
      return Right(BookingResponseModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException bookTicket $e');
      return Left(Failure(
          message: e.response?.data?['errors'][0]['message'] ?? errorMessage));
    } catch (e) {
      log('catch bookTicket');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, ReviewFlightDetailPrice>> reviewPriceDetails(
      {required ReviewPriceDetailIdModel reviewPriceDetailIdModel}) async {
    try {
      print(reviewPriceDetailIdModel.priceIds!);
      final responce = await apiService.post(ApiEndPoints.reviewPriceDetails,
          data: reviewPriceDetailIdModel.toJson(), addHeader: true);
      log('reviewPriceDetails done');
      log('${responce.data}');
      return Right(ReviewFlightDetailPrice.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException reviewPriceDetails $e');
      return Left(Failure(
          message: e.response?.data?['errors'][0]['message'] ?? errorMessage));
    } catch (e) {
      log('catch reviewPriceDetails');
      return Left(Failure(message: e.toString()));
    }
  }

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
      log('${responce.data}');
      return Right(RetrieveSingleBookingresponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException retrieveSinglleBooking ');
      return Left(Failure(message: e.response?.data?['error'] ?? errorMessage));
    } catch (e) {
      log('catch retrieveSinglleBooking');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<AllBookingResponce>>> retrieveAllBooking() async {
    try {
      final responce = await apiService.get(
        ApiEndPoints.retrieveAllBooking,
      );
      log('retrieveAllBooking done');
      // log('${responce.data}');
      return Right((responce.data as List<dynamic>?)
              ?.map(
                  (e) => AllBookingResponce.fromJson(e as Map<String, dynamic>))
              .toList() ??
          []);
    } on DioException catch (e) {
      log('DioException retrieveAllBooking ');
      return Left(Failure(message: e.response?.data?['error'] ?? errorMessage));
    } catch (e) {
      log('catch retrieveAllBooking');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<AllBookingResponce>>>
      retrieveCancelledBooking() async {
    try {
      final responce = await apiService.get(
        ApiEndPoints.cancelledAllBooking,
      );
      log('retrieveCancelledBooking done');
      //log('${responce.data}');
      return Right((responce.data as List<dynamic>?)
              ?.map(
                  (e) => AllBookingResponce.fromJson(e as Map<String, dynamic>))
              .toList() ??
          []);
    } on DioException catch (e) {
      log('DioException retrieveCancelledBooking ');
      return Left(Failure(message: e.response?.data?['error'] ?? errorMessage));
    } catch (e) {
      log('catch retrieveCancelledBooking');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<AllBookingResponce>>>
      retrieveCombletedBooking() async {
    try {
      final responce = await apiService.get(
        ApiEndPoints.completedAllBooking,
      );
      log('retrieveCombletedBooking done');
      //log('${responce.data}');
      return Right((responce.data as List<dynamic>?)
              ?.map(
                  (e) => AllBookingResponce.fromJson(e as Map<String, dynamic>))
              .toList() ??
          []);
    } on DioException catch (e) {
      log('DioException retrieveCombletedBooking ');
      return Left(Failure(message: e.response?.data?['error'] ?? errorMessage));
    } catch (e) {
      log('catch retrieveCombletedBooking');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<AllBookingResponce>>>
      retrieveUpComimgBooking() async {
    try {
      final responce = await apiService.get(
        ApiEndPoints.upcomingAllBooking,
      );
      log('retrieveUpComimgBooking done');
      //log('${responce.data}');
      return Right((responce.data as List<dynamic>?)
              ?.map(
                  (e) => AllBookingResponce.fromJson(e as Map<String, dynamic>))
              .toList() ??
          []);
    } on DioException catch (e) {
      log('DioException retrieveUpComimgBooking ');
      return Left(Failure(message: e.response?.data?['error'] ?? errorMessage));
    } catch (e) {
      log('catch retrieveUpComimgBooking');
      return Left(Failure(message: e.toString()));
    }
  }
}
