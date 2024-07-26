// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amendment_charges_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmendmentChargesRequestModel _$AmendmentChargesRequestModelFromJson(
        Map<String, dynamic> json) =>
    AmendmentChargesRequestModel(
      bookingId: json['bookingId'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$AmendmentChargesRequestModelToJson(
        AmendmentChargesRequestModel instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'type': instance.type,
    };
