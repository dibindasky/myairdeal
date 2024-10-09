// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteInfo _$RouteInfoFromJson(Map<String, dynamic> json) => RouteInfo(
      fromCityOrAirport: json['fromCityOrAirport'] == null
          ? null
          : CodeAirport.fromJson(
              json['fromCityOrAirport'] as Map<String, dynamic>),
      toCityOrAirport: json['toCityOrAirport'] == null
          ? null
          : CodeAirport.fromJson(
              json['toCityOrAirport'] as Map<String, dynamic>),
      travelDate: json['travelDate'] as String?,
    );

Map<String, dynamic> _$RouteInfoToJson(RouteInfo instance) => <String, dynamic>{
      'fromCityOrAirport': instance.fromCityOrAirport,
      'toCityOrAirport': instance.toCityOrAirport,
      'travelDate': instance.travelDate,
    };
