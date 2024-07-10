import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:myairdeal/data/service/api_service.dart';
import 'package:myairdeal/domain/core/api_endpoints/api_endpoints.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_request_model/ticket_cancel_request_model.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_responce/ticket_cancel_responce.dart';
import 'package:myairdeal/domain/repository/service/cancel_repo.dart';

class CancelService implements CancelRepo {
  final ApiService apiService = ApiService();

  @override
  Future<Either<Failure, TicketCancelResponce>> cancelTicket({
    required TicketCancelRequestModel ticketCancelRequestModel,
  }) async {
    try {
      log('${ticketCancelRequestModel.toJson()}');
      final responce = await apiService.post(
        ApiEndPoints.amendendMentCharge,
        data: ticketCancelRequestModel.toJson(),
      );
      log('$responce');
      return Right(TicketCancelResponce.fromJson(responce.data));
    } on DioException catch (e) {
      log('DioException cancelTicket $e');
      return Left(Failure(message: errorMessage));
    } catch (e) {
      log('catch cancelTicket $e');
      return Left(Failure(message: e.toString()));
    }
  }
}
