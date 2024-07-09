import 'package:json_annotation/json_annotation.dart';

import 'pax_info.dart';
import 'route_info.dart';
import 'search_modifiers.dart';

part 'flight_search_query.g.dart';

@JsonSerializable()
class FlightSearchQuery {
  @JsonKey(name: 'cabinClass')
  String? cabinClass;
  @JsonKey(name: 'paxInfo')
  PaxInfo? paxInfo;
  @JsonKey(name: 'routeInfos')
  List<RouteInfo>? routeInfos;
  @JsonKey(name: 'searchModifiers')
  SearchModifiers? searchModifiers;
  String? searchType;
  bool? isDomestic;
  String? requestId;

  FlightSearchQuery({
    this.cabinClass,
    this.paxInfo,
    this.routeInfos,
    this.searchModifiers,
    this.isDomestic,
    this.searchType,
    this.requestId,
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
    bool? isDomestic,
    String? searchType,
    String? requestId,
  }) {
    return FlightSearchQuery(
      cabinClass: cabinClass ?? this.cabinClass,
      paxInfo: paxInfo ?? this.paxInfo,
      routeInfos: routeInfos ?? this.routeInfos,
      searchModifiers: searchModifiers ?? this.searchModifiers,
      isDomestic: isDomestic ?? this.isDomestic,
      searchType: searchType ?? this.searchType,
      requestId: requestId ?? this.requestId,
    );
  }
}
