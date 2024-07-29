// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'from_city_or_airport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FromCityOrAirport _$FromCityOrAirportFromJson(Map<String, dynamic> json) =>
    FromCityOrAirport(
      code: json['code'] as String?,
      city: json['city'] as String?,
      cityCode: json['cityCode'] as String?,
      country: json['country'] as String?,
      countryCode: json['countryCode'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$FromCityOrAirportToJson(FromCityOrAirport instance) =>
    <String, dynamic>{
      'code': instance.code,
      'city': instance.city,
      'cityCode': instance.cityCode,
      'country': instance.country,
      'countryCode': instance.countryCode,
      'name': instance.name,
    };
