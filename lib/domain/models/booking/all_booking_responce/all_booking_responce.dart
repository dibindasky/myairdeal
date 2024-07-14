import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/booking/retrieve_single_bookingresponce_model/retrieve_single_bookingresponce_model.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/flight_search_query.dart';

part 'all_booking_responce.g.dart';

@JsonSerializable()
class AllBookingResponce {
  @JsonKey(name: '_id')
  String? id;
  String? bookingId;
  String? userId;
  @JsonKey(name: 'searchQuery')
  FlightSearchQuery? allBookingSearchquery;
  @JsonKey(name: 'data')
  RetrieveSingleBookingresponceModel? retrieveSingleBookingresponceModel;

  AllBookingResponce({
    this.allBookingSearchquery,
    this.id,
    this.bookingId,
    this.userId,
    this.retrieveSingleBookingresponceModel,
  });

  factory AllBookingResponce.fromJson(Map<String, dynamic> json) {
    return _$AllBookingResponceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AllBookingResponceToJson(this);
}
