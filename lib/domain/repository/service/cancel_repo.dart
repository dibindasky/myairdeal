import 'package:dartz/dartz.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_request_model/ticket_cancel_request_model.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_responce/ticket_cancel_responce.dart';

abstract class CancelRepo {
  Future<Either<Failure, TicketCancelResponce>> cancelTicket({
    required TicketCancelRequestModel ticketCancelRequestModel,
  });
}
