// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Status _$StatusFromJson(Map<String, dynamic> json) => Status(
      success: json['success'] as bool?,
      httpStatus: (json['httpStatus'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'success': instance.success,
      'httpStatus': instance.httpStatus,
    };
