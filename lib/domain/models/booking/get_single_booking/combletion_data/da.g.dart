// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'da.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Da _$DaFromJson(Map<String, dynamic> json) => Da(
      code: json['code'] as String?,
      name: json['name'] as String?,
      cityCode: json['cityCode'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      countryCode: json['countryCode'] as String?,
    );

Map<String, dynamic> _$DaToJson(Da instance) => <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'cityCode': instance.cityCode,
      'city': instance.city,
      'country': instance.country,
      'countryCode': instance.countryCode,
    };
