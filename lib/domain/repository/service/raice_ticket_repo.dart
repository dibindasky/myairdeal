import 'package:dartz/dartz.dart';
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

abstract class RaiceTicketRepo {
  Future<Either<Failure, SuccessResponceModel>> createRaiceTicket({
    required RaiceTicket raiceTicket,
  });
  Future<Either<Failure, GetAllTicketsModel>> getAllRaisedTickets({
    required String createdId,
  });
  Future<Either<Failure, PdfModel>> ivoiceDownLoad({required String bookingID});
  Future<Either<Failure, SuccessResponceModel>> globalTicketRaising(
      {required GlobalTicketRaisingModel globalTicketRaisingModel});
  Future<Either<Failure, List<GetAllGlobalTickets>>> getGlobalTickets(
      {required PageQuery page});
  Future<Either<Failure, SuccessResponceModel>> addEnquiry(
      {required EnguiryModel enquiryModel});
  Future<Either<Failure, List<BookingIdsModel>>> getAllBookingIDs();
}
