import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_bookingresponce_model/amendment.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_bookingresponce_model/retrieve_single_bookingresponce_model.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/flight_search_query.dart';
part 'get_single_booking.g.dart';

@JsonSerializable()
class GetSingleBooking {
  @JsonKey(name: 'searchQuery')
  FlightSearchQuery? searchQuery;
  @JsonKey(name: 'data')
  RetrieveSingleBookingresponceModel? retrieveSingleBookingresponceModel;
  List<Amendment>? amendment;

  GetSingleBooking({
    this.amendment,
    this.searchQuery,
    this.retrieveSingleBookingresponceModel,
  });

  factory GetSingleBooking.fromJson(Map<String, dynamic> json) =>
      _$GetSingleBookingFromJson(json);

  Map<String, dynamic> toJson() => _$GetSingleBookingToJson(this);
}
