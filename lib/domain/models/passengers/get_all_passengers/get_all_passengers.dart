import 'package:json_annotation/json_annotation.dart';

import 'passenger.dart';

part 'get_all_passengers.g.dart';

@JsonSerializable()
class GetAllPassengers {
  List<Passenger>? passengers;

  GetAllPassengers({this.passengers});

  factory GetAllPassengers.fromJson(Map<String, dynamic> json) {
    return _$GetAllPassengersFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetAllPassengersToJson(this);
}
