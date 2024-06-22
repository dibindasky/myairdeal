// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_search_sort_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlightSearchSortModel _$FlightSearchSortModelFromJson(
        Map<String, dynamic> json) =>
    FlightSearchSortModel(
      searchQuery: json['searchQuery'] == null
          ? null
          : FlightSearchQuery.fromJson(
              json['searchQuery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FlightSearchSortModelToJson(
        FlightSearchSortModel instance) =>
    <String, dynamic>{
      'searchQuery': instance.searchQuery,
    };
