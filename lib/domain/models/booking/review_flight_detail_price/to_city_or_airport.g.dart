// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_city_or_airport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ToCityOrAirport _$ToCityOrAirportFromJson(Map<String, dynamic> json) =>
    ToCityOrAirport(
      code: json['code'] as String?,
      name: json['name'] as String?,
      cityCode: json['cityCode'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      countryCode: json['countryCode'] as String?,
    );

Map<String, dynamic> _$ToCityOrAirportToJson(ToCityOrAirport instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'cityCode': instance.cityCode,
      'city': instance.city,
      'country': instance.country,
      'countryCode': instance.countryCode,
    };
