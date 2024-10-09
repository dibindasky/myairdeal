// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_detail_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecentDetailSearch _$RecentDetailSearchFromJson(Map<String, dynamic> json) =>
    RecentDetailSearch(
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => RecentDetailSearchItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecentDetailSearchToJson(RecentDetailSearch instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
