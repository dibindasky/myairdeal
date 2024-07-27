// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      bookingId: json['bookingId'] as String?,
      amount: json['amount'] as int?,
      markup: json['markup'] as int?,
      deliveryInfo: json['deliveryInfo'] == null
          ? null
          : DeliveryInfo.fromJson(json['deliveryInfo'] as Map<String, dynamic>),
      status: json['status'] as String?,
      createdOn: json['createdOn'] == null
          ? null
          : DateTime.parse(json['createdOn'] as String),
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'bookingId': instance.bookingId,
      'amount': instance.amount,
      'markup': instance.markup,
      'deliveryInfo': instance.deliveryInfo,
      'status': instance.status,
      'createdOn': instance.createdOn?.toIso8601String(),
    };
