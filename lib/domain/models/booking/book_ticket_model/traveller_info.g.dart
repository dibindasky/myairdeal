// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'traveller_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravellerInfo _$TravellerInfoFromJson(Map<String, dynamic> json) =>
    TravellerInfo(
      ti: json['ti'] as String?,
      fN: json['fN'] as String?,
      lN: json['lN'] as String?,
      pt: json['pt'] as String?,
      dob: json['dob'] as String?,
    );

Map<String, dynamic> _$TravellerInfoToJson(TravellerInfo instance) =>
    <String, dynamic>{
      'ti': instance.ti,
      'fN': instance.fN,
      'lN': instance.lN,
      'pt': instance.pt,
      'dob': instance.dob,
    };
