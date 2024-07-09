// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Booking _$BookingFromJson(Map<String, dynamic> json) => Booking(
      bookingId: json['bookingId'] as String?,
      paymentInfos: (json['paymentInfos'] as List<dynamic>?)
          ?.map((e) => PaymentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      travellerInfo: (json['travellerInfo'] as List<dynamic>?)
          ?.map((e) => TravellerInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      gstInfo: json['gstInfo'] == null
          ? null
          : GstInfo.fromJson(json['gstInfo'] as Map<String, dynamic>),
      deliveryInfo: json['deliveryInfo'] == null
          ? null
          : DeliveryInfo.fromJson(json['deliveryInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookingToJson(Booking instance) => <String, dynamic>{
      'bookingId': instance.bookingId,
      'paymentInfos': instance.paymentInfos,
      'travellerInfo': instance.travellerInfo,
      'gstInfo': instance.gstInfo,
      'deliveryInfo': instance.deliveryInfo,
    };
