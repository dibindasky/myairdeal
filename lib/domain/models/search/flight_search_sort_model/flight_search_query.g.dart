// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_search_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlightSearchQuery _$FlightSearchQueryFromJson(Map<String, dynamic> json) =>
    FlightSearchQuery(
      cabinClass: json['cabinClass'] as String?,
      // paxInfo: json['paxInfo'] == null
      //     ? null
      //     : PaxInfo.fromJson(json['paxInfo'] as Map<String, dynamic>),
      // routeInfos: (json['routeInfos'] as List<dynamic>?)
      //     ?.map((e) => RouteInfo.fromJson(e as Map<String, dynamic>))
      //     .toList(),
      // searchModifiers: json['searchModifiers'] == null
      //     ? null
      //     : SearchModifiers.fromJson(
      //         json['searchModifiers'] as Map<String, dynamic>),
      isDomestic: json['isDomestic'] as bool?,
      searchType: json['searchType'] as String?,
      requestId: json['requestId'] as String?,
    );

Map<String, dynamic> _$FlightSearchQueryToJson(FlightSearchQuery instance) =>
    <String, dynamic>{
      'cabinClass': instance.cabinClass,
      'paxInfo': instance.paxInfo,
      'routeInfos': instance.routeInfos,
      'searchModifiers': instance.searchModifiers,
      'isDomestic': instance.isDomestic,
      'requestId': instance.requestId,
      'searchType': instance.searchType,
    };
