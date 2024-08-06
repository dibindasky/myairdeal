// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_ticket_raising_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GlobalTicketRaisingModel _$GlobalTicketRaisingModelFromJson(
        Map<String, dynamic> json) =>
    GlobalTicketRaisingModel(
      type: json['type'] as String?,
      bookingId: json['bookingId'] as String?,
      heading: json['heading'] as String?,
      description: json['description'] as String?,
      product: json['product'] as String?,
    );

Map<String, dynamic> _$GlobalTicketRaisingModelToJson(
        GlobalTicketRaisingModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'bookingId': instance.bookingId,
      'heading': instance.heading,
      'description': instance.description,
      'product': instance.product,
    };
