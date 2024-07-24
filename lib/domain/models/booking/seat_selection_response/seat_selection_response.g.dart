// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat_selection_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeatSelectionResponse _$SeatSelectionResponseFromJson(
        Map<String, dynamic> json) =>
    SeatSelectionResponse(
      tripSeatMap: json['tripSeatMap'] == null
          ? null
          : TripSeatMap.fromJson(json['tripSeatMap'] as Map<String, dynamic>),
      bookingId: json['bookingId'] as String?,
    );

Map<String, dynamic> _$SeatSelectionResponseToJson(
        SeatSelectionResponse instance) =>
    <String, dynamic>{
      'tripSeatMap': instance.tripSeatMap,
      'bookingId': instance.bookingId,
    };
