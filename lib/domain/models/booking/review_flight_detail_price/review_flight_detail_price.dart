import 'package:json_annotation/json_annotation.dart';

import '../../search/flight_search_sort_model/flight_search_query.dart';
import '../../search/flight_sort_response_model/status.dart';
import '../../search/flight_sort_response_model/error.dart';
import 'conditions.dart';
import 'total_price_info.dart';
import 'trip_info.dart';

part 'review_flight_detail_price.g.dart';

@JsonSerializable()
class ReviewFlightDetailPrice {
  List<TripInfo>? tripInfos;
  FlightSearchQuery? searchQuery;
  String? bookingId;
  TotalPriceInfo? totalPriceInfo;
  Status? status;
  Conditions? conditions;
  List<Error>? errors;

  ReviewFlightDetailPrice({
    this.tripInfos,
    this.searchQuery,
    this.bookingId,
    this.totalPriceInfo,
    this.status,
    this.conditions,
    this.errors
  });

  factory ReviewFlightDetailPrice.fromJson(Map<String, dynamic> json) {
    return _$ReviewFlightDetailPriceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReviewFlightDetailPriceToJson(this);

  ReviewFlightDetailPrice copyWith({
    List<TripInfo>? tripInfos,
    FlightSearchQuery? searchQuery,
    String? bookingId,
    TotalPriceInfo? totalPriceInfo,
    Status? status,
    Conditions? conditions,
    List<Error>? errors,
  }) {
    return ReviewFlightDetailPrice(
      tripInfos: tripInfos ?? this.tripInfos,
      searchQuery: searchQuery ?? this.searchQuery,
      bookingId: bookingId ?? this.bookingId,
      totalPriceInfo: totalPriceInfo ?? this.totalPriceInfo,
      status: status ?? this.status,
      conditions: conditions ?? this.conditions,
      errors: errors ?? this.errors,
    );
  }
}
