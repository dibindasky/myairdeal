// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Error _$ErrorFromJson(Map<String, dynamic> json) => Error(
      errCode: json['errCode'] as String?,
      message: json['message'] as String?,
      details: json['details'] as String?,
    );

Map<String, dynamic> _$ErrorToJson(Error instance) => <String, dynamic>{
      'errCode': instance.errCode,
      'message': instance.message,
      'details': instance.details,
    };
