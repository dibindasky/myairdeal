import 'package:json_annotation/json_annotation.dart';

part 'trip_seat_map.g.dart';

@JsonSerializable()
class TripSeatMap {
  Map<String, dynamic>? tripSeats;

  TripSeatMap({this.tripSeats});

  factory TripSeatMap.fromJson(Map<String, dynamic> json) {
    return _$TripSeatMapFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TripSeatMapToJson(this);

  TripSeatMap copyWith({
    Map<String, dynamic>? tripSeats,
  }) {
    return TripSeatMap(
      tripSeats: tripSeats ?? this.tripSeats,
    );
  }
}
