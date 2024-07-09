// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ssr_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SsrInfo _$SsrInfoFromJson(Map<String, dynamic> json) => SsrInfo(
      meal: (json['MEAL'] as List<dynamic>?)
          ?.map((e) => Meal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SsrInfoToJson(SsrInfo instance) => <String, dynamic>{
      'MEAL': instance.meal,
    };
