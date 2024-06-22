// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CitySearchModel _$CitySearchModelFromJson(Map<String, dynamic> json) =>
    CitySearchModel(
      code: json['code'] as String?,
      name: json['name'] as String?,
      citycode: json['citycode'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      countrycode: json['countrycode'] as String?,
    );

Map<String, dynamic> _$CitySearchModelToJson(CitySearchModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'citycode': instance.citycode,
      'city': instance.city,
      'country': instance.country,
      'countrycode': instance.countrycode,
    };
