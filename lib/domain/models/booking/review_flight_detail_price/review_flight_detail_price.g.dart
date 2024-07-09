// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_flight_detail_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewFlightDetailPrice _$ReviewFlightDetailPriceFromJson(
        Map<String, dynamic> json) =>
    ReviewFlightDetailPrice(
      tripInfos: (json['tripInfos'] as List<dynamic>?)
          ?.map((e) => TripInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      searchQuery: json['searchQuery'] == null
          ? null
          : FlightSearchQuery.fromJson(
              json['searchQuery'] as Map<String, dynamic>),
      bookingId: json['bookingId'] as String?,
      totalPriceInfo: json['totalPriceInfo'] == null
          ? null
          : TotalPriceInfo.fromJson(
              json['totalPriceInfo'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      conditions: json['conditions'] == null
          ? null
          : Conditions.fromJson(json['conditions'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => Error.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReviewFlightDetailPriceToJson(
        ReviewFlightDetailPrice instance) =>
    <String, dynamic>{
      'tripInfos': instance.tripInfos,
      'searchQuery': instance.searchQuery,
      'bookingId': instance.bookingId,
      'totalPriceInfo': instance.totalPriceInfo,
      'status': instance.status,
      'conditions': instance.conditions,
      'errors': instance.errors,
    };
