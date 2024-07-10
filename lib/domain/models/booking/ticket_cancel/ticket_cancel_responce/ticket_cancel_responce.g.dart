// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_cancel_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketCancelResponce _$TicketCancelResponceFromJson(
        Map<String, dynamic> json) =>
    TicketCancelResponce(
      bookingId: json['bookingId'] as String?,
      amendmentId: json['amendmentId'] as String?,
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
    )..errors = json['errors'] == null
        ? null
        : Errors.fromJson(json['errors'] as Map<String, dynamic>);

Map<String, dynamic> _$TicketCancelResponceToJson(
        TicketCancelResponce instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'amendmentId': instance.amendmentId,
      'status': instance.status,
      'errors': instance.errors,
    };
