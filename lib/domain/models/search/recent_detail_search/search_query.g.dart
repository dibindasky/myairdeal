// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchQuery _$SearchQueryFromJson(Map<String, dynamic> json) => SearchQuery(
      cabinClass: json['cabinClass'] as String?,
      paxInfo: json['paxInfo'] == null
          ? null
          : PaxInfo.fromJson(json['paxInfo'] as Map<String, dynamic>),
      routeInfos: (json['routeInfos'] as List<dynamic>?)
          ?.map((e) => RouteInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      searchModifiers: json['searchModifiers'] == null
          ? null
          : SearchModifiers.fromJson(
              json['searchModifiers'] as Map<String, dynamic>),
      isDomestic: json['isDomestic'],
      requestId: json['requestId'],
      searchType: json['searchType'],
    );

Map<String, dynamic> _$SearchQueryToJson(SearchQuery instance) =>
    <String, dynamic>{
      'cabinClass': instance.cabinClass,
      'paxInfo': instance.paxInfo,
      'routeInfos': instance.routeInfos,
      'searchModifiers': instance.searchModifiers,
      'isDomestic': instance.isDomestic,
      'requestId': instance.requestId,
      'searchType': instance.searchType,
    };
