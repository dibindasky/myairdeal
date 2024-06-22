import 'package:json_annotation/json_annotation.dart';

import 'pax_info.dart';
import 'route_info.dart';
import 'search_modifiers.dart';

part 'flight_search_query.g.dart';

@JsonSerializable()
class FlightSearchQuery {
  String? cabinClass;
  PaxInfo? paxInfo;
  List<RouteInfo>? routeInfos;
  SearchModifiers? searchModifiers;

  FlightSearchQuery({
    this.cabinClass,
    this.paxInfo,
    this.routeInfos,
    this.searchModifiers,
  });

  factory FlightSearchQuery.fromJson(Map<String, dynamic> json) {
    return _$FlightSearchQueryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FlightSearchQueryToJson(this);

  FlightSearchQuery copyWith({
    String? cabinClass,
    PaxInfo? paxInfo,
    List<RouteInfo>? routeInfos,
    SearchModifiers? searchModifiers,
  }) {
    return FlightSearchQuery(
      cabinClass: cabinClass ?? this.cabinClass,
      paxInfo: paxInfo ?? this.paxInfo,
      routeInfos: routeInfos ?? this.routeInfos,
      searchModifiers: searchModifiers ?? this.searchModifiers,
    );
  }
}
