// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taf.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Taf _$TafFromJson(Map<String, dynamic> json) => Taf(
      yr: (json['YR'] as num?)?.toInt(),
      ot: (json['OT'] as num?)?.toInt(),
      mu: (json['MU'] as num?)?.toInt(),
      agst: (json['AGST'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TafToJson(Taf instance) => <String, dynamic>{
      'YR': instance.yr,
      'OT': instance.ot,
      'MU': instance.mu,
      'AGST': instance.agst,
    };
