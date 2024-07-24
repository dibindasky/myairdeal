import 'package:json_annotation/json_annotation.dart';

import 'trip_seat_map.dart';

part 'seat_selection_response.g.dart';

@JsonSerializable()
class SeatSelectionResponse {
  TripSeatMap? tripSeatMap;
  String? bookingId;

  SeatSelectionResponse({this.tripSeatMap, this.bookingId});

  factory SeatSelectionResponse.fromJson(Map<String, dynamic> json) {
    return _$SeatSelectionResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SeatSelectionResponseToJson(this);

  SeatSelectionResponse copyWith({
    TripSeatMap? tripSeatMap,
    String? bookingId,
  }) {
    return SeatSelectionResponse(
      tripSeatMap: tripSeatMap ?? this.tripSeatMap,
      bookingId: bookingId ?? this.bookingId,
    );
  }
}
