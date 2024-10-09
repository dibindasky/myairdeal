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
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => Error.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TicketCancelResponceToJson(
        TicketCancelResponce instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'amendmentId': instance.amendmentId,
      'status': instance.status,
      'errors': instance.errors,
    };
