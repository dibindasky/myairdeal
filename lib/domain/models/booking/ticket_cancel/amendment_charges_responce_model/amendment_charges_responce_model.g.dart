// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amendment_charges_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmendmentChargesResponceModel _$AmendmentChargesResponceModelFromJson(
        Map<String, dynamic> json) =>
    AmendmentChargesResponceModel(
      bookingId: json['bookingId'] as String?,
      trips: (json['trips'] as List<dynamic>?)
          ?.map((e) => Trip.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => Error.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AmendmentChargesResponceModelToJson(
        AmendmentChargesResponceModel instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'trips': instance.trips,
      'status': instance.status,
      'errors': instance.errors,
    };
