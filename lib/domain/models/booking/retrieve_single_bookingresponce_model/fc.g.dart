// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fc _$FcFromJson(Map<String, dynamic> json) => Fc(
      bf: (json['BF'] as num?)?.toInt(),
      nf: (json['NF'] as num?)?.toInt(),
      tf: (json['TF'] as num?)?.toInt(),
      taf: (json['TAF'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FcToJson(Fc instance) => <String, dynamic>{
      'BF': instance.bf,
      'NF': instance.nf,
      'TF': instance.tf,
      'TAF': instance.taf,
    };
