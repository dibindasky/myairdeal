// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_booking_searchquery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllBookingSearchquery _$AllBookingSearchqueryFromJson(
        Map<String, dynamic> json) =>
    AllBookingSearchquery(
      routeInfos: (json['routeInfos'] as List<dynamic>?)
          ?.map((e) => RouteInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      cabinClass: json['cabinClass'] as String?,
      paxInfo: json['paxInfo'] == null
          ? null
          : PaxInfo.fromJson(json['paxInfo'] as Map<String, dynamic>),
      requestId: json['requestId'] as String?,
      searchType: json['searchType'] as String?,
      searchModifiers: json['searchModifiers'] == null
          ? null
          : SearchModifiers.fromJson(
              json['searchModifiers'] as Map<String, dynamic>),
      isDomestic: json['isDomestic'] as bool?,
    );

Map<String, dynamic> _$AllBookingSearchqueryToJson(
        AllBookingSearchquery instance) =>
    <String, dynamic>{
      'routeInfos': instance.routeInfos?.map((e) => e.toJson()).toList(),
      'cabinClass': instance.cabinClass,
      'paxInfo': instance.paxInfo?.toJson(),
      'requestId': instance.requestId,
      'searchType': instance.searchType,
      'searchModifiers': instance.searchModifiers?.toJson(),
      'isDomestic': instance.isDomestic,
    };
