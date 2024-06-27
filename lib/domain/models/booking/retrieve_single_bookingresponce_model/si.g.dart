// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'si.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Si _$SiFromJson(Map<String, dynamic> json) => Si(
      id: json['id'] as String?,
      fD: json['fD'] == null
          ? null
          : FD.fromJson(json['fD'] as Map<String, dynamic>),
      stops: (json['stops'] as num?)?.toInt(),
      duration: (json['duration'] as num?)?.toInt(),
      da: json['da'] == null
          ? null
          : Da.fromJson(json['da'] as Map<String, dynamic>),
      aa: json['aa'] == null
          ? null
          : Aa.fromJson(json['aa'] as Map<String, dynamic>),
      dt: json['dt'] as String?,
      at: json['at'] as String?,
      iand: json['iand'] as bool?,
      isRs: json['isRs'] as bool?,
      sN: (json['sN'] as num?)?.toInt(),
      israa: json['israa'] as bool?,
    );

Map<String, dynamic> _$SiToJson(Si instance) => <String, dynamic>{
      'id': instance.id,
      'fD': instance.fD,
      'stops': instance.stops,
      'duration': instance.duration,
      'da': instance.da,
      'aa': instance.aa,
      'dt': instance.dt,
      'at': instance.at,
      'iand': instance.iand,
      'isRs': instance.isRs,
      'sN': instance.sN,
      'israa': instance.israa,
    };
