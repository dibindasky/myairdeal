import 'package:json_annotation/json_annotation.dart';

import 'amendment_info.dart';

part 'trip.g.dart';

@JsonSerializable()
class Trip {
  String? src;
  String? dest;
  String? departureDate;
  List<String>? flightNumbers;
  List<String>? airlines;
  AmendmentInfo? amendmentInfo;

  Trip({
    this.src,
    this.dest,
    this.departureDate,
    this.flightNumbers,
    this.airlines,
    this.amendmentInfo,
  });

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);

  Map<String, dynamic> toJson() => _$TripToJson(this);
}
