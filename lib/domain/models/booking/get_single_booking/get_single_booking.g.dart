// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_single_booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSingleBooking _$GetSingleBookingFromJson(Map<String, dynamic> json) =>
    GetSingleBooking(
      completeBookingData: json['completeBookingData'] == null
          ? null
          : CompleteBookingData.fromJson(
              json['completeBookingData'] as Map<String, dynamic>),
      flightSearchQuery: json['searchQuery'] == null
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
      'completeBookingData': instance.completeBookingData,
      'searchQuery': instance.flightSearchQuery,
      'data': instance.retrieveSingleBookingresponceModel,
      'amendment': instance.amendment,
    };
