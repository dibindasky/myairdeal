import 'package:dartz/dartz.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/booking/pdf_model/pdf_model.dart';
import 'package:myairdeal/domain/models/success_responce_model/success_responce_model.dart';
import 'package:myairdeal/domain/models/ticket_raice/get_all_tickets_model/get_all_tickets_model.dart';
import 'package:myairdeal/domain/models/ticket_raice/raice_ticket/raice_ticket.dart';

abstract class RaiceTicketRepo {
  Future<Either<Failure, SuccessResponceModel>> raiceTicket({
    required RaiceTicket raiceTicket,
  });
  Future<Either<Failure, GetAllTicketsModel>> getraiceTickets({
    required String createdId,
  });
  Future<Either<Failure, PdfModel>> ivoiceDownLoad({required String bookingID});
}
