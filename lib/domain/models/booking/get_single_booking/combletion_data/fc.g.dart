// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fc _$FcFromJson(Map<String, dynamic> json) => Fc(
      tf: (json['TF'] as num?)?.toInt(),
      bf: (json['BF'] as num?)?.toInt(),
      taf: (json['TAF'] as num?)?.toInt(),
      nf: (json['NF'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FcToJson(Fc instance) => <String, dynamic>{
      'TF': instance.tf,
      'BF': instance.bf,
      'TAF': instance.taf,
      'NF': instance.nf,
    };
