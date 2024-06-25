// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FC _$FCFromJson(Map<String, dynamic> json) => FC(
      taf: (json['TAF'] as num?)?.toInt(),
      nf: (json['NF'] as num?)?.toInt(),
      tf: (json['TF'] as num?)?.toInt(),
      bf: (json['BF'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FCToJson(FC instance) => <String, dynamic>{
      'TAF': instance.taf,
      'NF': instance.nf,
      'TF': instance.tf,
      'BF': instance.bf,
    };
