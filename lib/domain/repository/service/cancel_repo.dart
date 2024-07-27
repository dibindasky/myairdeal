import 'package:dartz/dartz.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/amendment_charges_responce_model/amendment_charges_responce_model.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/amendment_details_request_model/amendment_details_request_model.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/amendment_details_responce_model/amendment_details_responce_model.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_request_model/ticket_cancel_request_model.dart';
import 'package:myairdeal/domain/models/booking/ticket_cancel/ticket_cancel_responce/ticket_cancel_responce.dart';

abstract class CancelRepo {
  Future<Either<Failure, TicketCancelResponce>> submitAmendment({
    required TicketCancelRequestModel ticketCancelRequestModel,
  });
  Future<Either<Failure, AmendmentChargesResponceModel>> amendmentCharges({
    required TicketCancelRequestModel ticketCancelRequestModel,
  });

  Future<Either<Failure, AmendmentDetailsResponceModel>> viewAmendMentDetails({
    required AmendmentDetailsRequestModel amendmentDetailRequestModel,
  });
}
