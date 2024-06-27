// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fd _$FdFromJson(Map<String, dynamic> json) => Fd(
      aI: json['aI'] == null
          ? null
          : AI.fromJson(json['aI'] as Map<String, dynamic>),
      fN: json['fN'] as String?,
      eT: json['eT'] as String?,
    );

Map<String, dynamic> _$FdToJson(Fd instance) => <String, dynamic>{
      'aI': instance.aI,
      'fN': instance.fN,
      'eT': instance.eT,
    };
