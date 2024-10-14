// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_booking_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompleteBookingData _$CompleteBookingDataFromJson(Map<String, dynamic> json) =>
    CompleteBookingData(
      payment: json['payment'] == null
          ? null
          : Payment.fromJson(json['payment'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      bookingId: json['bookingId'] as String?,
      userId: json['userId'] as String?,
      searchQuery: json['searchQuery'] == null
          ? null
          : SearchQuery.fromJson(json['searchQuery'] as Map<String, dynamic>),
      markUp: json['markUp'] == null
          ? null
          : MarkUp.fromJson(json['markUp'] as Map<String, dynamic>),
      emailSent: json['emailSent'] as bool?,
      amendmentIds: json['amendmentIds'] as List<dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      promo: json['promo'] == null
          ? null
          : Promo.fromJson(json['promo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompleteBookingDataToJson(
        CompleteBookingData instance) =>
    <String, dynamic>{
      'payment': instance.payment,
      '_id': instance.id,
      'bookingId': instance.bookingId,
      'userId': instance.userId,
      'searchQuery': instance.searchQuery,
      'markUp': instance.markUp,
      'emailSent': instance.emailSent,
      'amendmentIds': instance.amendmentIds,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'data': instance.data,
      'promo': instance.promo,
    };
