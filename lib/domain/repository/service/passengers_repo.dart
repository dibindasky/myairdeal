import 'package:dartz/dartz.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/traveller_info.dart';
import 'package:myairdeal/domain/models/passengers/get_all_passengers/get_all_passengers.dart';
import 'package:myairdeal/domain/models/success_responce_model/success_responce_model.dart';

abstract class PassengersRepo {
  Future<Either<Failure, GetAllPassengers>> getPassengers();
  Future<Either<Failure, SuccessResponceModel>> addPassengers(
      {required TravellerInfo travellerInfo});
}
