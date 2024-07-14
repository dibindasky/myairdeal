import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:myairdeal/data/service/api_service.dart';
import 'package:myairdeal/domain/core/api_endpoints/api_endpoints.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/booking/pdf_model/pdf_model.dart';
import 'package:myairdeal/domain/models/success_responce_model/success_responce_model.dart';
import 'package:myairdeal/domain/models/ticket_raice/get_all_tickets_model/get_all_tickets_model.dart';
import 'package:myairdeal/domain/models/ticket_raice/raice_ticket/raice_ticket.dart';
import 'package:myairdeal/domain/repository/service/raice_ticket_repo.dart';

class RaiceTicketService implements RaiceTicketRepo {
  final ApiService apiService = ApiService();
  @override
  Future<Either<Failure, GetAllTicketsModel>> getraiceTickets(
      {required String createdId}) async {
    try {
      final responce = await apiService.get(
        ApiEndPoints.getTickets.replaceFirst('{created_d}', createdId),
      );
      return Right(GetAllTicketsModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException getraiceTickets $e');
      return Left(Failure(message: errorMessage));
    } catch (e) {
      log('catch getraiceTickets $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SuccessResponceModel>> raiceTicket(
      {required RaiceTicket raiceTicket}) async {
    try {
      log('${raiceTicket.toJson()}');
      final responce = await apiService.post(
        ApiEndPoints.raiceTicket,
        data: raiceTicket.toJson(),
      );
      log('$responce');
      return Right(SuccessResponceModel(message: 'Done'));
    } on DioException catch (e) {
      log('DioException raiceTicket $e');
      return Left(Failure(message: errorMessage));
    } catch (e) {
      log('catch raiceTicket $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, PdfModel>> ivoiceDownLoad(
      {required String bookingID}) async {
    try {
      final responce = await apiService.get(
          ApiEndPoints.invoiceDownLoad.replaceFirst('{booking_id}', bookingID));
      log('ivoiceDownLoad  >> : done');
      return Right(PdfModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException ivoiceDownLoad $e');
      return Left(Failure(message: errorMessage));
    } catch (e) {
      log('catch ivoiceDownLoad $e');
      return Left(Failure(message: e.toString()));
    }
  }
}
