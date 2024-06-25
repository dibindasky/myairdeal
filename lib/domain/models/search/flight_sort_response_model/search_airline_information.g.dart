// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_airline_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchAirlineInformation _$SearchAirlineInformationFromJson(
        Map<String, dynamic> json) =>
    SearchAirlineInformation(
      sI: (json['sI'] as List<dynamic>?)
          ?.map((e) => SI.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPriceList: (json['totalPriceList'] as List<dynamic>?)
          ?.map((e) => TotalPriceList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchAirlineInformationToJson(
        SearchAirlineInformation instance) =>
    <String, dynamic>{
      'sI': instance.sI,
      'totalPriceList': instance.totalPriceList,
    };
