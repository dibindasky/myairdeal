// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      dialCode: json['dialCode'] as String?,
      countryCode: json['countryCode'] as String?,
      countryName: json['countryName'] as String?,
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'dialCode': instance.dialCode,
      'countryCode': instance.countryCode,
      'countryName': instance.countryName,
    };
