// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fc _$FcFromJson(Map<String, dynamic> json) => Fc(
      taf: (json['TAF'] as num?)?.toInt(),
      ssrp: (json['SSRP'] as num?)?.toInt(),
      bf: (json['BF'] as num?)?.toInt(),
      tf: (json['TF'] as num?)?.toInt(),
      nf: (json['NF'] as num?)?.toInt(),
      aar: (json['AAR'] as num?)?.toInt(),
      afs: (json['AFS'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FcToJson(Fc instance) => <String, dynamic>{
      'TAF': instance.taf,
      'AFS': instance.afs,
      'AAR': instance.aar,
      'SSRP': instance.ssrp,
      'BF': instance.bf,
      'TF': instance.tf,
      'NF': instance.nf,
    };
