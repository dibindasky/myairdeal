// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_global_tickets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllGlobalTickets _$GetAllGlobalTicketsFromJson(Map<String, dynamic> json) =>
    GetAllGlobalTickets(
      id: json['_id'] as String?,
      type: json['type'] as String?,
      bookingId: json['bookingId'] as String?,
      userId: json['userId'] as String?,
      heading: json['heading'] as String?,
      description: json['description'] as String?,
      product: json['product'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$GetAllGlobalTicketsToJson(
        GetAllGlobalTickets instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'type': instance.type,
      'bookingId': instance.bookingId,
      'userId': instance.userId,
      'heading': instance.heading,
      'description': instance.description,
      'product': instance.product,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
