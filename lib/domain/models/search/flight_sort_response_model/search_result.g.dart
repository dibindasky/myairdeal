// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) => SearchResult(
      tripInfos: json['tripInfos'] == null
          ? null
          : TripInfos.fromJson(json['tripInfos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchResultToJson(SearchResult instance) =>
    <String, dynamic>{
      'tripInfos': instance.tripInfos,
    };
