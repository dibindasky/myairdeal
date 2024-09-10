// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'traveller_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravellerInfo _$TravellerInfoFromJson(Map<String, dynamic> json) =>
    TravellerInfo(
      id: json['_id'] as String,
      ti: json['ti'] as String?,
      fN: json['fN'] as String?,
      lN: json['lN'] as String?,
      pt: json['pt'] as String?,
      dob: json['dob'] as String?,
      eD: json['eD'] as String?,
      pNum: json['pNum'] as String?,
      pN: json['pNat'] as String?,
      pid: json['pid'] as String?,
      ssrBaggageInfos: (json['ssrBaggageInfos'] as List<dynamic>?)
          ?.map((e) => SsrInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      ssrMealInfos: (json['ssrMealInfos'] as List<dynamic>?)
          ?.map((e) => SsrInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      ssrSeatInfos: (json['ssrSeatInfos'] as List<dynamic>?)
          ?.map((e) => SsrInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TravellerInfoToJson(TravellerInfo instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'pNat': instance.pN,
      'ti': instance.ti,
      'fN': instance.fN,
      'lN': instance.lN,
      'pt': instance.pt,
      'dob': instance.dob,
      'pNum': instance.pNum,
      'eD': instance.eD,
      'pid': instance.pid,
      'ssrMealInfos': instance.ssrMealInfos,
      'ssrSeatInfos': instance.ssrSeatInfos,
      'ssrBaggageInfos': instance.ssrBaggageInfos,
    };
