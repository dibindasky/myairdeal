import 'package:json_annotation/json_annotation.dart';

import 'traveller.dart';

part 'trip.g.dart';

@JsonSerializable()
class Trip {
  String? src;
  String? dest;
  String? departureDate;
  List<String>? flightNumbers;
  List<String>? airlines;
  List<Traveller>? travellers;

  Trip({
    this.src,
    this.dest,
    this.departureDate,
    this.flightNumbers,
    this.airlines,
    this.travellers,
  });

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);

  Map<String, dynamic> toJson() => _$TripToJson(this);
}
