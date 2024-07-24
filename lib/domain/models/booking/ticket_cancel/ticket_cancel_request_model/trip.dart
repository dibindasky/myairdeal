import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/booking/book_ticket_model/traveller_info.dart';

import 'traveller.dart';

part 'trip.g.dart';

@JsonSerializable()
class Trip {
  String? src;
  String? dest;
  String? departureDate;
  List<Traveller>? travellers;

  TravellerInfo? travellerInfo;

  Trip({this.src, this.dest, this.departureDate, this.travellers});

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);

  Map<String, dynamic> toJson() => _$TripToJson(this);

  //For identifying each Trip objects
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Trip &&
        other.src == src &&
        other.dest == dest &&
        other.departureDate == departureDate;
  }

  @override
  int get hashCode => src.hashCode ^ dest.hashCode ^ departureDate.hashCode;
}
