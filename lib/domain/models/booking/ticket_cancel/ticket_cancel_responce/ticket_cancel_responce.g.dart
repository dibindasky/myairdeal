// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_cancel_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketCancelResponce _$TicketCancelResponceFromJson(
        Map<String, dynamic> json) =>
    TicketCancelResponce(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => Error.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookingId: json['bookingId'] as String?,
      amendmentId: json['amendmentId'] as String?,
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TicketCancelResponceToJson(
        TicketCancelResponce instance) =>
    <String, dynamic>{
      'error': instance.errors,
      'bookingId': instance.bookingId,
      'amendmentId': instance.amendmentId,
      'status': instance.status,
      'errors': instance.errors,
    };
