// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taf.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Taf _$TafFromJson(Map<String, dynamic> json) => Taf(
      agst: (json['AGST'] as num?)?.toInt(),
      ot: (json['OT'] as num?)?.toInt(),
      yr: (json['YR'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TafToJson(Taf instance) => <String, dynamic>{
      'AGST': instance.agst,
      'OT': instance.ot,
      'YR': instance.yr,
    };
