// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingResponseModel _$BookingResponseModelFromJson(
        Map<String, dynamic> json) =>
    BookingResponseModel(
      bookingId: json['bookingId'] as String?,
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookingResponseModelToJson(
        BookingResponseModel instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'status': instance.status,
    };
