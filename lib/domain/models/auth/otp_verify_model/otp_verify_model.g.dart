// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verify_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpVerifyModel _$OtpVerifyModelFromJson(Map<String, dynamic> json) =>
    OtpVerifyModel(
      otp: json['otp'] as String?,
      phone: json['phone'] as String?,
      deviceToken: json['deviceToken'] as String?,
    );

Map<String, dynamic> _$OtpVerifyModelToJson(OtpVerifyModel instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'deviceToken': instance.deviceToken,
      'phone': instance.phone,
    };
