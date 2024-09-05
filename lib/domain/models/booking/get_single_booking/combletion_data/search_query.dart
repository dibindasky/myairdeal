import 'package:json_annotation/json_annotation.dart';

part 'search_query.g.dart';

@JsonSerializable()
class SearchQuery {
  String? cabinClass;
  dynamic paxInfo;
  dynamic routeInfos;
  dynamic searchModifiers;
  bool? isDomestic;
  String? requestId;
  String? searchType;

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
