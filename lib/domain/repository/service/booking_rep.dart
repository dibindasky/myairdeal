import 'package:dartz/dartz.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/booking/all_booking_responce/all_booking_responce.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/book_ticket_model.dart';
import 'package:myairdeal/domain/models/booking/booking_response_model/booking_response_model.dart';
import 'package:myairdeal/domain/models/booking/get_single_booking/get_single_booking.dart';
import 'package:myairdeal/domain/models/booking/mark_up/markup_model.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_booking_request_model/retrieve_single_booking_request_model.dart';
import 'package:myairdeal/domain/models/booking/review_flight_detail_price/review_flight_detail_price.dart';
import 'package:myairdeal/domain/models/booking/review_price_detail_id_model/review_price_detail_id_model.dart';
import 'package:myairdeal/domain/models/booking/seat_selection_response/seat_selection_response.dart';
import 'package:myairdeal/domain/models/fare_rule/fare_rule_request/fare_rule_request.dart';
import 'package:myairdeal/domain/models/fare_rule/fare_rule_responce/fare_rule_responce.dart';

abstract class BookingRepo {
  Future<Either<Failure, GetSingleBooking>> retrieveSingleBooking(
      {required RetrieveSingleBookingRequestModel
          retrieveSingleBookingRequestModel});
  Future<Either<Failure, List<AllBookingResponce>>> retrieveAllBooking();
  Future<Either<Failure, List<AllBookingResponce>>> retrieveUpComimgBooking();
  Future<Either<Failure, List<AllBookingResponce>>> retrieveCancelledBooking();
  Future<Either<Failure, List<AllBookingResponce>>> retrieveCombletedBooking();
  Future<Either<Failure, ReviewFlightDetailPrice>> reviewPriceDetails(
      {required ReviewPriceDetailIdModel reviewPriceDetailIdModel});
  Future<Either<Failure, BookingResponseModel>> bookTicket(
      {required BookTicketModel bookTicketModel});
  Future<Either<Failure, SeatSelectionResponse>> getSeatMap(
      {required RetrieveSingleBookingRequestModel bookingId});
  Future<Either<Failure, FareRuleResponce>> getFareRule(
      {required FareRuleRequest fareRuleRequest});
  Future<Either<Failure, MarkupModel>> getMarkup();
}
