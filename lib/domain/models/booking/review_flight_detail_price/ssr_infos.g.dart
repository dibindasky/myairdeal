// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ssr_infos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SsrInfos _$SsrInfoFromJson(Map<String, dynamic> json) => SsrInfos(
      meal: (json['MEAL'] as List<dynamic>?)
          ?.map((e) => SsrInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      baggage: (json['BAGGAGE'] as List<dynamic>?)
          ?.map((e) => SsrInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SsrInfoToJson(SsrInfos instance) => <String, dynamic>{
      'MEAL': instance.meal,
      'BAGGAGE': instance.baggage,
    };
