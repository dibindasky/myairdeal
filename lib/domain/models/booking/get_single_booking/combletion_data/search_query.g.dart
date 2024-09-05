// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchQuery _$SearchQueryFromJson(Map<String, dynamic> json) => SearchQuery(
      cabinClass: json['cabinClass'] as String?,
      paxInfo: json['paxInfo'],
      routeInfos: json['routeInfos'],
      searchModifiers: json['searchModifiers'],
      isDomestic: json['isDomestic'] as bool?,
      requestId: json['requestId'] as String?,
      searchType: json['searchType'] as String?,
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
