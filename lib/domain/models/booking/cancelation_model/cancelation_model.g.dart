// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancelation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelationModel _$CancelationModelFromJson(Map<String, dynamic> json) =>
    CancelationModel(
      bookingId: json['bookingId'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$CancelationModelToJson(CancelationModel instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'type': instance.type,
    };
