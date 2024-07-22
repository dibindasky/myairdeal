// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_cancel_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketCancelRequestModel _$TicketCancelRequestModelFromJson(
        Map<String, dynamic> json) =>
    TicketCancelRequestModel(
      remarks: json['remarks'] as String,
      bookingId: json['bookingId'] as String?,
      type: json['type'] as String?,
      trips: (json['trips'] as List<dynamic>?)
          ?.map((e) => Trip.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TicketCancelRequestModelToJson(
        TicketCancelRequestModel instance) =>
    <String, dynamic>{
      'remarks': instance.remarks,
      'bookingId': instance.bookingId,
      'type': instance.type,
      'trips': instance.trips,
    };
