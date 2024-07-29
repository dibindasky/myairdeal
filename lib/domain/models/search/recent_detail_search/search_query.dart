import 'package:json_annotation/json_annotation.dart';

import 'pax_info.dart';
import 'route_info.dart';
import 'search_modifiers.dart';

part 'search_query.g.dart';

@JsonSerializable()
class SearchQuery {
  String? cabinClass;
  PaxInfo? paxInfo;
  List<RouteInfo>? routeInfos;
  SearchModifiers? searchModifiers;
  dynamic isDomestic;
  dynamic requestId;
  dynamic searchType;

  SearchQuery({
    this.cabinClass,
    this.paxInfo,
    this.routeInfos,
    this.searchModifiers,
    this.isDomestic,
    this.requestId,
    this.searchType,
  });

  factory SearchQuery.fromJson(Map<String, dynamic> json) {
    return _$SearchQueryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchQueryToJson(this);
}
