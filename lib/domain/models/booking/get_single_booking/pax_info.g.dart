// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pax_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaxInfo _$PaxInfoFromJson(Map<String, dynamic> json) => PaxInfo(
      adult: json['ADULT'] as int?,
      child: json['CHILD'] as int?,
      infant: json['INFANT'] as int?,
    );

Map<String, dynamic> _$PaxInfoToJson(PaxInfo instance) => <String, dynamic>{
      'ADULT': instance.adult,
      'CHILD': instance.child,
      'INFANT': instance.infant,
    };
