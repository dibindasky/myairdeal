import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/flight_search_query.dart';

import 'amendment.dart';
import 'retrieve_single_bookingresponce_model.dart';

part 'get_single_booking.g.dart';

@JsonSerializable()
class GetSingleBooking {
  @JsonKey(name: 'searchQuery')
  FlightSearchQuery? flightSearchQuery;
  @JsonKey(name: 'data')
  RetrieveSingleBookingresponceModel? retrieveSingleBookingresponceModel;

  List<Amendment>? amendment;

  GetSingleBooking(
      {this.retrieveSingleBookingresponceModel,
      this.flightSearchQuery,
      this.amendment});

  factory GetSingleBooking.fromJson(Map<String, dynamic> json) {
    return _$GetSingleBookingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetSingleBookingToJson(this);
}
