// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_fare_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TotalFareDetail _$TotalFareDetailFromJson(Map<String, dynamic> json) =>
    TotalFareDetail(
      fC: json['fC'] == null
          ? null
          : Fc.fromJson(json['fC'] as Map<String, dynamic>),
      afC: json['afC'] == null
          ? null
          : AfC.fromJson(json['afC'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TotalFareDetailToJson(TotalFareDetail instance) =>
    <String, dynamic>{
      'fC': instance.fC,
      'afC': instance.afC,
    };
