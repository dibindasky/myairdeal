// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fc _$FcFromJson(Map<String, dynamic> json) => Fc(
      bf: (json['BF'] as num?)?.toInt(),
      tf: (json['TF'] as num?)?.toDouble(),
      nf: (json['NF'] as num?)?.toDouble(),
      taf: (json['TAF'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FcToJson(Fc instance) => <String, dynamic>{
      'BF': instance.bf,
      'TF': instance.tf,
      'NF': instance.nf,
      'TAF': instance.taf,
    };
