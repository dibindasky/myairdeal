// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taf.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Taf _$TafFromJson(Map<String, dynamic> json) => Taf(
      yq: (json['YQ'] as num?)?.toInt(),
      yr: (json['YR'] as num?)?.toInt(),
      mft: (json['MFT'] as num?)?.toDouble(),
      ot: (json['OT'] as num?)?.toInt(),
      mf: (json['MF'] as num?)?.toInt(),
      agst: (json['AGST'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TafToJson(Taf instance) => <String, dynamic>{
      'YQ': instance.yq,
      'MFT': instance.mft,
      'OT': instance.ot,
      'MF': instance.mf,
      'AGST': instance.agst,
      'YR': instance.yr,
    };
