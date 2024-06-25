// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_sort_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlightSortResponseModel _$FlightSortResponseModelFromJson(
        Map<String, dynamic> json) =>
    FlightSortResponseModel(
      searchResult: json['searchResult'] == null
          ? null
          : SearchResult.fromJson(json['searchResult'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => Error.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FlightSortResponseModelToJson(
        FlightSortResponseModel instance) =>
    <String, dynamic>{
      'searchResult': instance.searchResult,
      'status': instance.status,
      'errors': instance.errors,
    };
