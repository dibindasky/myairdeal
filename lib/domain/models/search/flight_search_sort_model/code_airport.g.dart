// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_airport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeAirport _$CodeAirportFromJson(Map<String, dynamic> json) => CodeAirport(
      code: json['code'] as String?,
      city: json['city'] as String?,
      cityCode: json['cityCode'] as String?,
      country: json['country'] as String?,
      countryCode: json['countryCode'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CodeAirportToJson(CodeAirport instance) =>
    <String, dynamic>{
      'code': instance.code,
      'city': instance.city,
      'cityCode': instance.cityCode,
      'country': instance.country,
      'countryCode': instance.countryCode,
      'name': instance.name,
    };
