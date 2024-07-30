import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:myairdeal/data/service/api_service.dart';
import 'package:myairdeal/domain/core/api_endpoints/api_endpoints.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/amendment_charges_responce_model/amendment_charges_responce_model.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/amendment_details_request_model/amendment_details_request_model.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/amendment_details_responce_model/amendment_details_responce_model.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_request_model/ticket_cancel_request_model.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_request_model/traveller.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_request_model/trip.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_responce/ticket_cancel_responce.dart';
import 'package:myairdeal/domain/repository/service/cancel_repo.dart';

class CancelService implements CancelRepo {
  final ApiService apiService = ApiService();

  @override
  Future<Either<Failure, TicketCancelResponce>> submitAmendment({
    required TicketCancelRequestModel ticketCancelRequestModel,
  }) async {
    try {
      String? trip = ticketCancelRequestModel.trips
          ?.map((trip) => trip.toJson())
          .join(', ');
      log(trip.toString());
      final responce = await apiService.post(
        ApiEndPoints.amendendSubmit,
        data: ticketCancelRequestModel.toJson(),
      );

      return Right(TicketCancelResponce.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException submitAmendment $e');
      return Left(Failure(
          message: e.response?.data?['errors'][0]['message'] ?? errorMessage));
    } catch (e) {
      log('catch submitAmendment $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AmendmentChargesResponceModel>> amendmentCharges({
    required TicketCancelRequestModel ticketCancelRequestModel,
  }) async {
    try {
      // String? trip = ticketCancelRequestModel.trips
      //     ?.map((trip) => trip.toJson())
      //     .join(', ');
      // log(trip.toString());

      // for (var elements in ticketCancelRequestModel.trips ?? <Trip>[]) {
      //   for (var element in elements.travellers ?? <Traveller>[]) {
      //     log('${element.toJson()}');
      //   }
      // }

      final responce = await apiService.post(
        ApiEndPoints.amendendMentCharges,
        data: ticketCancelRequestModel.toJson(),
      );
      return Right(AmendmentChargesResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException submit Amendment Charges $e');
      return Left(Failure(
          message: e.response?.data?['errors'][0]['message'] ?? errorMessage,
          subMessage:
              e.response?.data?['errors'][0]['details'] ?? errorMessage));
    } catch (e) {
      log('catch submit Amendment Charges $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AmendmentDetailsResponceModel>> viewAmendMentDetails({
    required AmendmentDetailsRequestModel amendmentDetailRequestModel,
  }) async {
    try {
      final responce = await apiService.post(
        ApiEndPoints.amendmendView,
        data: amendmentDetailRequestModel.toJson(),
      );
      return Right(AmendmentDetailsResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException checkAmendMentDetails $e');
      return Left(Failure(
          message: e.response?.data?['errors'][0]['message'] ?? errorMessage));
    } catch (e) {
      log('catch checkAmendMentDetails $e');
      return Left(Failure(message: e.toString()));
    }
  }
}
