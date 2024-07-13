import 'package:json_annotation/json_annotation.dart';

import 'from_city_or_airport.dart';
import 'to_city_or_airport.dart';

part 'route_info.g.dart';

@JsonSerializable()
class RouteInfo {
  FromCityOrAirport? fromCityOrAirport;
  ToCityOrAirport? toCityOrAirport;
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
}
