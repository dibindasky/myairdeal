import 'package:dartz/dartz.dart';
import 'package:myairdeal/domain/core/failure/failure.dart';
import 'package:myairdeal/domain/models/passengers/get_all_passengers/get_all_passengers.dart';

abstract class PassengersRepo {
  Future<Either<Failure, GetAllPassengers>> getPassengers();
}
