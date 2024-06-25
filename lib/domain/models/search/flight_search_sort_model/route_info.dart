import 'package:json_annotation/json_annotation.dart';

import 'code_airport.dart';

part 'route_info.g.dart';

@JsonSerializable()
class RouteInfo {
  CodeAirport? fromCityOrAirport;
  CodeAirport? toCityOrAirport;
  String? travelDate;

  RouteInfo({
    this.fromCityOrAirport,
    this.toCityOrAirport,
    this.travelDate,
  });

  factory RouteInfo.fromJson(Map<String, dynamic> json) {
    return _$RouteInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RouteInfoToJson(this);

  RouteInfo copyWith({
    CodeAirport? fromCityOrAirport,
    CodeAirport? toCityOrAirport,
    String? travelDate,
  }) {
    return RouteInfo(
      fromCityOrAirport: fromCityOrAirport ?? this.fromCityOrAirport,
      toCityOrAirport: toCityOrAirport ?? this.toCityOrAirport,
      travelDate: travelDate ?? this.travelDate,
    );
  }
}
