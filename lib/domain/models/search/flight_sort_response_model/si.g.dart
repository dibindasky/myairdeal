// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'si.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SI _$SIFromJson(Map<String, dynamic> json) => SI(
      id: json['id'] as String?,
      fD: json['fD'] == null
          ? null
          : FD.fromJson(json['fD'] as Map<String, dynamic>),
      stops: (json['stops'] as num?)?.toInt(),
      so: json['so'] as List<dynamic>?,
      duration: (json['duration'] as num?)?.toInt(),
      cT: (json['cT'] as num?)?.toInt(),
      da: json['da'] == null
          ? null
          : Da.fromJson(json['da'] as Map<String, dynamic>),
      aa: json['aa'] == null
          ? null
          : Aa.fromJson(json['aa'] as Map<String, dynamic>),
      oaa: json['oaa'] as String?,
      dt: json['dt'] as String?,
      at: json['at'] as String?,
      iand: json['iand'] as bool?,
      isRs: json['isRs'] as bool?,
      sN: (json['sN'] as num?)?.toInt(),
      ssrInfo: json['ssrInfo'] == null
          ? null
          : SsrInfo.fromJson(json['ssrInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SIToJson(SI instance) => <String, dynamic>{
      'id': instance.id,
      'fD': instance.fD,
      'stops': instance.stops,
      'so': instance.so,
      'duration': instance.duration,
      'cT': instance.cT,
      'da': instance.da,
      'aa': instance.aa,
      'oaa': instance.oaa,
      'dt': instance.dt,
      'at': instance.at,
      'iand': instance.iand,
      'isRs': instance.isRs,
      'sN': instance.sN,
      'ssrInfo':instance.ssrInfo,
    };
