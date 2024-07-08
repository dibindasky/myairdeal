import 'package:dartz/dartz.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/booking/all_booking_responce/all_booking_responce.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_booking_request_model/retrieve_single_booking_request_model.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_bookingresponce_model/retrieve_single_bookingresponce_model.dart';
import 'package:myairdeal/domain/models/booking/review_price_detail_id_model/review_price_detail_id_model.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/search_result.dart';

abstract class BookingRepo {
  Future<Either<Failure, RetrieveSingleBookingresponceModel>>
      retrieveSinglleBooking(
          {required RetrieveSingleBookingRequestModel
              retrieveSingleBookingRequestModel});
  Future<Either<Failure, List<AllBookingResponce>>> retrieveAllBooking();
  Future<Either<Failure, List<AllBookingResponce>>> retrieveUpComimgBooking();
  Future<Either<Failure, List<AllBookingResponce>>> retrieveCancelledBooking();
  Future<Either<Failure, List<AllBookingResponce>>> retrieveCombletedBooking();
  Future<Either<Failure, SearchResult>> reviewPriceDetails(
      {required ReviewPriceDetailIdModel reviewPriceDetailIdModel});
}
