// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'traveller_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravellerInfo _$TravellerInfoFromJson(Map<String, dynamic> json) =>
    TravellerInfo(
      ti: json['ti'] as String?,
      id: json['_id'] as String?,
      fN: json['fN'] as String?,
      lN: json['lN'] as String?,
      pt: json['pt'] as String?,
      dob: json['dob'] as String?,
      eD: json['eD'] as String?,
      pN: json['pNat'] as String?,
      pNum: json['pNum'] as String?,
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
      'ti': instance.ti,
      'fN': instance.fN,
      'lN': instance.lN,
      'pt': instance.pt,
      'dob': instance.dob,
      'pNum': instance.pNum,
      'eD': instance.eD,
      'pid': instance.pid,
      '_id': instance.id,
      'pNat': instance.pN,
      'ssrMealInfos': instance.ssrMealInfos,
      'ssrSeatInfos': instance.ssrSeatInfos,
      'ssrBaggageInfos': instance.ssrBaggageInfos,
    };
