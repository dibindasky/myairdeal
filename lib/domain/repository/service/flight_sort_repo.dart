import 'package:dartz/dartz.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/flight_search_sort_model.dart';
import 'package:myairdeal/domain/models/search/flight_sort_response_model/flight_sort_response_model.dart';

abstract class FlightRepo {
  Future<Either<Failure, FlightSortResponseModel>> getAllFlight(
      {required FlightSearchSortModel flightSearchSortModel});
}
