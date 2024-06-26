// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Adult _$AdultFromJson(Map<String, dynamic> json) => Adult(
      fC: json['fC'] == null
          ? null
          : Fc.fromJson(json['fC'] as Map<String, dynamic>),
      afC: json['afC'] == null
          ? null
          : AfC.fromJson(json['afC'] as Map<String, dynamic>),
      sR: (json['sR'] as num?)?.toInt(),
      bI: json['bI'] == null
          ? null
          : Bi.fromJson(json['bI'] as Map<String, dynamic>),
      rT: (json['rT'] as num?)?.toInt(),
      cc: json['cc'] as String?,
      cB: json['cB'] as String?,
      fB: json['fB'] as String?,
      mI: json['mI'] as bool?,
    );

Map<String, dynamic> _$AdultToJson(Adult instance) => <String, dynamic>{
      'fC': instance.fC,
      'afC': instance.afC,
      'sR': instance.sR,
      'bI': instance.bI,
      'rT': instance.rT,
      'cc': instance.cc,
      'cB': instance.cB,
      'fB': instance.fB,
      'mI': instance.mI,
    };
