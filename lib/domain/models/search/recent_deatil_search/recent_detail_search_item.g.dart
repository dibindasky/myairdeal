// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_detail_search_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecentDetailSearchItem _$RecentDetailSearchItemFromJson(
        Map<String, dynamic> json) =>
    RecentDetailSearchItem(
      type: json['type'] as String?,
      searchQuery: json['searchQuery'] == null
          ? null
          : SearchQueryVariable.fromJson(
              json['searchQuery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecentDetailSearchItemToJson(
        RecentDetailSearchItem instance) =>
    <String, dynamic>{
      'type': instance.type,
      'searchQuery': instance.searchQuery?.toJson(),
    };
