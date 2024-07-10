// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_query_variable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchQueryVariable _$SearchQueryVariableFromJson(Map<String, dynamic> json) =>
    SearchQueryVariable(
      json['searchQuery'] == null
          ? null
          : FlightSearchQuery.fromJson(
              json['searchQuery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchQueryVariableToJson(
        SearchQueryVariable instance) =>
    <String, dynamic>{
      'searchQuery': instance.searchQuery?.toJson(),
    };
