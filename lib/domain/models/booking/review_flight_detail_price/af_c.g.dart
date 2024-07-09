// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'af_c.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AfC _$AfCFromJson(Map<String, dynamic> json) => AfC(
      taf: json['TAF'] == null
          ? null
          : Taf.fromJson(json['TAF'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AfCToJson(AfC instance) => <String, dynamic>{
      'TAF': instance.taf,
    };
