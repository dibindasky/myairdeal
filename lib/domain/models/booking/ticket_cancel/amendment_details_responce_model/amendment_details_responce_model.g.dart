// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amendment_details_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmendmentDetailsResponceModel _$AmendmentDetailsResponceModelFromJson(
        Map<String, dynamic> json) =>
    AmendmentDetailsResponceModel(
      bookingId: json['bookingId'] as String?,
      remarks: json['remarks'] as String?,
      amendmentId: json['amendmentId'] as String?,
      amendmentStatus: json['amendmentStatus'] as String?,
      amendmentCharges: (json['amendmentCharges'] as num?)?.toInt(),
      refundableAmount: (json['refundableAmount'] as num?)?.toInt(),
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
      'bookingId': instance.bookingId,
      'amendmentId': instance.amendmentId,
      'amendmentStatus': instance.amendmentStatus,
      'amendmentCharges': instance.amendmentCharges,
      'refundableAmount': instance.refundableAmount,
      'trips': instance.trips,
      'remarks': instance.remarks,
      'status': instance.status,
    };
