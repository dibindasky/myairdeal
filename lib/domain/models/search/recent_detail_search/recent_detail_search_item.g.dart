// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_detail_search_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecentDetailSearchItem _$RecentDetailSearchItemFromJson(
        Map<String, dynamic> json) =>
    RecentDetailSearchItem(
      searchQuery: json['searchQuery'] == null
          ? null
          : SearchQuery.fromJson(json['searchQuery'] as Map<String, dynamic>),
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$RecentDetailSearchItemToJson(
        RecentDetailSearchItem instance) =>
    <String, dynamic>{
      'searchQuery': instance.searchQuery,
      '_id': instance.id,
    };
