// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_cancel_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketCancelRequestModel _$TicketCancelRequestModelFromJson(
        Map<String, dynamic> json) =>
    TicketCancelRequestModel(
      bookingId: json['bookingId'] as String?,
      type: json['type'] as String?,
      trips: (json['trips'] as List<dynamic>?)
          ?.map((e) => Trip.fromJson(e as Map<String, dynamic>))
          .toList(),
      remarks: json['remarks'] as String?,
    );

Map<String, dynamic> _$TicketCancelRequestModelToJson(
        TicketCancelRequestModel instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'type': instance.type,
      'remarks': instance.remarks,
      'trips': instance.trips,
    };
