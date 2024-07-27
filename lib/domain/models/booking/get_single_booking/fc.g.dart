// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fc _$FcFromJson(Map<String, dynamic> json) => Fc(
      taf: json['TAF'] as int?,
      ssrp: json['SSRP'] as int?,
      bf: json['BF'] as int?,
      tf: json['TF'] as int?,
      nf: json['NF'] as int?,
    );

Map<String, dynamic> _$FcToJson(Fc instance) => <String, dynamic>{
      'TAF': instance.taf,
      'SSRP': instance.ssrp,
      'BF': instance.bf,
      'TF': instance.tf,
      'NF': instance.nf,
    };
