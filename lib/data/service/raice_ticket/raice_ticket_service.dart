import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:myairdeal/data/service/api_service.dart';
import 'package:myairdeal/domain/core/api_endpoints/api_endpoints.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/booking/pdf_model/pdf_model.dart';
import 'package:myairdeal/domain/models/booking_ids_model/booking_ids_model.dart';
import 'package:myairdeal/domain/models/page_query/page_query.dart';
import 'package:myairdeal/domain/models/success_responce_model/success_responce_model.dart';
import 'package:myairdeal/domain/models/ticket_raice/enguiry_model/enguiry_model.dart';
import 'package:myairdeal/domain/models/ticket_raice/get_all_global_tickets/get_all_global_tickets.dart';
import 'package:myairdeal/domain/models/ticket_raice/get_all_tickets_model/get_all_tickets_model.dart';
import 'package:myairdeal/domain/models/ticket_raice/global_ticket_raising_model/global_ticket_raising_model.dart';
import 'package:myairdeal/domain/models/ticket_raice/raice_ticket/raice_ticket.dart';
import 'package:myairdeal/domain/repository/service/raice_ticket_repo.dart';

class RaiceTicketService implements RaiceTicketRepo {
  final ApiService apiService = ApiService();
  @override
  Future<Either<Failure, GetAllTicketsModel>> getAllRaisedTickets(
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
  Future<Either<Failure, SuccessResponceModel>> createRaiceTicket(
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

  @override
  Future<Either<Failure, SuccessResponceModel>> globalTicketRaising(
      {required GlobalTicketRaisingModel globalTicketRaisingModel}) async {
    try {
      final responce = await apiService.post(
        ApiEndPoints.globalTicketCreation,
        data: globalTicketRaisingModel.toJson(),
      );
      log('globalTicketRaising  >> : done');
      return Right(SuccessResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException globalTicketRaising $e');
      return Left(Failure(message: errorMessage));
    } catch (e) {
      log('catch globalTicketRaising $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<GetAllGlobalTickets>>> getGlobalTickets(
      {required PageQuery page}) async {
    try {
      final responce = await apiService.get(ApiEndPoints.getGlobalTickets,
          queryParameters: page.toJson());
      log('getGlobalTickets  >> : done');

      return Right((responce.data as List<dynamic>?)
              ?.map((e) =>
                  GetAllGlobalTickets.fromJson(e as Map<String, dynamic>))
              .toList() ??
          []);
    } on DioException catch (e) {
      log('DioException getGlobalTickets $e');
      return Left(Failure(message: errorMessage));
    } catch (e) {
      log('catch getGlobalTickets $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SuccessResponceModel>> addEnquiry(
      {required EnguiryModel enquiryModel}) async {
    try {
      final responce = await apiService.post(
        ApiEndPoints.addEnquiry,
        data: enquiryModel.toJson(),
      );
      log('addEnquiry  >> : done');
      return Right(SuccessResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException addEnquiry $e');
      return Left(Failure(message: errorMessage));
    } catch (e) {
      log('catch addEnquiry $e');
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookingIdsModel>>> getAllBookingIDs() async {
    try {
      final responce = await apiService.get(ApiEndPoints.getBookingId);
      log('getAllBookingIDs  >> : done ${responce.data}');
      return Right((responce.data as List<dynamic>?)
              ?.map((e) => BookingIdsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          []);
    } on DioException catch (e) {
      log('DioException getAllBookingIDs $e');
      return Left(Failure(message: errorMessage));
    } catch (e) {
      log('catch getAllBookingIDs $e');
      return Left(Failure(message: e.toString()));
    }
  }
}
