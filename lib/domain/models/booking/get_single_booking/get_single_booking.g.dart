// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_single_booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSingleBooking _$GetSingleBookingFromJson(Map<String, dynamic> json) =>
    GetSingleBooking(
      searchQuery: json['searchQuery'] == null
          ? null
          : FlightSearchQuery.fromJson(
              json['searchQuery'] as Map<String, dynamic>),
      retrieveSingleBookingresponceModel: json['data'] == null
          ? null
          : RetrieveSingleBookingresponceModel.fromJson(
              json['data'] as Map<String, dynamic>),
      amendment: (json['amendment'] as List<dynamic>?)
          ?.map((e) => Amendment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetSingleBookingToJson(GetSingleBooking instance) =>
    <String, dynamic>{
      'amendment': instance.amendment,
      'searchQuery': instance.searchQuery,
      'data': instance.retrieveSingleBookingresponceModel,
    };
