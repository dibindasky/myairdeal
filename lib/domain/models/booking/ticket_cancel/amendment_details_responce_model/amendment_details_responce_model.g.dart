// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amendment_details_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmendmentDetailsResponceModel _$AmendmentDetailsResponceModelFromJson(
        Map<String, dynamic> json) =>
    AmendmentDetailsResponceModel(
      remarks: json['remarks'] as String?,
      bookingId: json['bookingId'] as String?,
      amendmentId: json['amendmentId'] as String?,
      amendmentStatus: json['amendmentStatus'] as String?,
      amendmentCharges: json['amendmentCharges'] as int?,
      refundableAmount: json['refundableAmount'] as int?,
      trips: (json['trips'] as List<dynamic>?)
          ?.map((e) => Trip.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AmendmentDetailsResponceModelToJson(
        AmendmentDetailsResponceModel instance) =>
    <String, dynamic>{
      'remarks': instance.remarks,
      'bookingId': instance.bookingId,
      'amendmentId': instance.amendmentId,
      'amendmentStatus': instance.amendmentStatus,
      'amendmentCharges': instance.amendmentCharges,
      'refundableAmount': instance.refundableAmount,
      'trips': instance.trips?.map((e) => e.toJson()).toList(),
      'status': instance.status?.toJson(),
    };
