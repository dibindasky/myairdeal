// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_search_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CitySearchData _$CitySearchDataFromJson(Map<String, dynamic> json) =>
    CitySearchData(
      (json['data'] as List<dynamic>?)
          ?.map((e) => CitySearchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CitySearchDataToJson(CitySearchData instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };
