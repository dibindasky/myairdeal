// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fcs _$FcsFromJson(Map<String, dynamic> json) => Fcs(
      arf: (json['ARF'] as num?)?.toInt(),
      arft: (json['ARFT'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FcsToJson(Fcs instance) => <String, dynamic>{
      'ARF': instance.arf,
      'ARFT': instance.arft,
    };
