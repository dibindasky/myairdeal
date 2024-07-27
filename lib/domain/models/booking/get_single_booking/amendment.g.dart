// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amendment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Amendment _$AmendmentFromJson(Map<String, dynamic> json) => Amendment(
      id: json['_id'] as String?,
      createdId: json['_id'] as String?,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$AmendmentToJson(Amendment instance) => <String, dynamic>{
      '_id': instance.id,
      'time': instance.time?.toIso8601String(),
    };
