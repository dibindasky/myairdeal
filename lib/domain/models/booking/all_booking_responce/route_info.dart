import 'package:json_annotation/json_annotation.dart';
import 'package:myairdeal/domain/models/search/flight_search_sort_model/code_airport.dart';

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
}
