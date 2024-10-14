import '../../search/flight_search_sort_model/flight_search_query.dart';
import '../../search/flight_sort_response_model/status.dart';
import '../../search/flight_sort_response_model/error.dart';
import 'conditions.dart';
import 'total_price_info.dart';
import 'trip_info.dart';

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
    this.errors,
  });

  factory ReviewFlightDetailPrice.fromJson(Map<String, dynamic> json) {
    return ReviewFlightDetailPrice(
      tripInfos: (json['tripInfos'] as List<dynamic>?)
          ?.map((e) => TripInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      searchQuery: json['searchQuery'] != null
          ? FlightSearchQuery.fromJson(json['searchQuery'] as Map<String, dynamic>)
          : null,
      bookingId: json['bookingId'] as String?,
      totalPriceInfo: json['totalPriceInfo'] != null
          ? TotalPriceInfo.fromJson(json['totalPriceInfo'] as Map<String, dynamic>)
          : null,
      status: json['status'] != null
          ? Status.fromJson(json['status'] as Map<String, dynamic>)
          : null,
      conditions: json['conditions'] != null
          ? Conditions.fromJson(json['conditions'] as Map<String, dynamic>)
          : null,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => Error.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'tripInfos': tripInfos?.map((e) => e.toJson()).toList(),
      'searchQuery': searchQuery?.toJson(),
      'bookingId': bookingId,
      'totalPriceInfo': totalPriceInfo?.toJson(),
      'status': status?.toJson(),
      'conditions': conditions?.toJson(),
      'errors': errors?.map((e) => e.toJson()).toList(),
    };
  }

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
