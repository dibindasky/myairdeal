// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_booking_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllBookingResponce _$AllBookingResponceFromJson(Map<String, dynamic> json) {
  return AllBookingResponce(
    id: json['_id'] as String?,
    bookingId: json['bookingId'] as String?,
    userId: json['userId'] as String?,
    retrieveSingleBookingresponceModel: json['data'] == null
        ? null
        : RetrieveSingleBookingresponceModel.fromJson(
            json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AllBookingResponceToJson(AllBookingResponce instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'bookingId': instance.bookingId,
      'userId': instance.userId,
      'data': instance.retrieveSingleBookingresponceModel?.toJson(),
    };
